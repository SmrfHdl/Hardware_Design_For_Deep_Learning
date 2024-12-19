#define DEBUG_LINEBUFF
#include "hls_fft.h"
#include "core.h"

void convolution2D(hls::stream<uint_8_side_channel>& inStream,
                   hls::stream<int_8_side_channel> & outStream,
                   char kernel[KERNEL_DIM * KERNEL_DIM])
{
    hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char> lineBuff;
    hls::Window<KERNEL_DIM, KERNEL_DIM, short> window;

    int waitTicks = (IMG_WIDTH * (KERNEL_DIM - 1) + KERNEL_DIM) / 2;
    int countWait = 0;
    int sentPixels = 0;

    int idxCol = 0;
    int idxRow = 0;
    int pixConvolved = 0;

    int_8_side_channel dataOutSideChannel;
    uint_8_side_channel currPixelSideChannel;

#pragma HLS ARRAY_PARTITION variable=kernel complete dim=1

    for (int idxPixel = 0; idxPixel < (IMG_WIDTH * IMG_HEIGHT); idxPixel++) {
#pragma HLS PIPELINE II=1

        currPixelSideChannel = inStream.read();
        unsigned char pixelIn = currPixelSideChannel.data;

        shiftAndInsertLineBuffer(lineBuff, pixelIn, idxCol);

        populateWindowWithKernel(lineBuff, window, kernel, pixConvolved);

        short valOutput = 0;
        if ((idxRow >= KERNEL_DIM - 1) && (idxCol >= KERNEL_DIM - 1)) {
            valOutput = calculateWindowSum(&window);
            valOutput = valOutput / 8;
            if (valOutput < 0) valOutput = 0;
            pixConvolved++;
        }

        if (idxCol < IMG_WIDTH - 1) {
            idxCol++;
        } else {
            idxCol = 0;
            idxRow++;
            pixConvolved = 0;
        }

        countWait++;
        if (countWait > waitTicks) {
            writeOutputDataStream(outStream, dataOutSideChannel, valOutput, currPixelSideChannel);
            sentPixels++;
        }
    }

    for (countWait = 0; countWait < waitTicks; countWait++) {
        writeOutputDataStream(outStream, dataOutSideChannel, 0, currPixelSideChannel, true);
    }
}

void shiftAndInsertLineBuffer(hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char>& lineBuff,
                              unsigned char pixelIn, int idxCol)
{
#define DEBUG_LINEBUFFER
#pragma HLS INLINE
    lineBuff.shift_up(idxCol);
    lineBuff.insert_top(pixelIn, idxCol);
}

void populateWindowWithKernel(hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char>& lineBuff,
                              hls::Window<KERNEL_DIM, KERNEL_DIM, short>& window,
                              char kernel[KERNEL_DIM * KERNEL_DIM], int pixConvolved)
{
#pragma HLS INLINE
    for (int idxWinRow = 0; idxWinRow < KERNEL_DIM; idxWinRow++) {
        for (int idxWinCol = 0; idxWinCol < KERNEL_DIM; idxWinCol++) {
#pragma HLS UNROLL
            short val = (short)lineBuff.getval(idxWinRow, idxWinCol + pixConvolved);
            val = (short)kernel[(idxWinRow * KERNEL_DIM) + idxWinCol] * val;
            window.insert(val, idxWinRow, idxWinCol);
        }
    }
}

void writeOutputDataStream(hls::stream<int_8_side_channel>& outStream,
                           int_8_side_channel& dataOutSideChannel,
                           short valOutput,
                           uint_8_side_channel& currPixelSideChannel,
                           bool isLast)
{
#pragma HLS INLINE
    dataOutSideChannel.data = valOutput;
    dataOutSideChannel.keep = currPixelSideChannel.keep;
    dataOutSideChannel.strb = currPixelSideChannel.strb;
    dataOutSideChannel.user = currPixelSideChannel.user;
    dataOutSideChannel.last = isLast ? 1 : 0;
    dataOutSideChannel.id = currPixelSideChannel.id;
    dataOutSideChannel.dest = currPixelSideChannel.dest;

    outStream.write(dataOutSideChannel);
}

short calculateWindowSum(hls::Window<KERNEL_DIM, KERNEL_DIM, short>* window)
{
    short accumulator = 0;
    for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
        for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
#pragma HLS UNROLL
            accumulator += (short)window->getval(idxRow, idxCol);
        }
    }
    return accumulator;
}
