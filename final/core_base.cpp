#include "core.h"

/*
 * Core that apply a 3x3(Configurable) 2d Convolution, Erode, Dilate on
 * grayscale images
 */
void processImage(hls::stream<uint_8_side_channel>& inStream,
               hls::stream<int_8_side_channel> & outStream,
               char                              kernel[KERNEL_DIM * KERNEL_DIM],
               int                               operation)
{
    // Defining the line buffer and window
    hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char> lineBuff;
    hls::Window<KERNEL_DIM, KERNEL_DIM, short> window;

    // Index used to keep track of row, col
    int idxCol = 0;
    int idxRow = 0;
    int pixConvolved = 0;

    // Delay to fix line-buffer offset
    int waitTicks = (IMG_WIDTH * (KERNEL_DIM - 1) + KERNEL_DIM) / 2;
    int countWait = 0;
    int sentPixels = 0;

    int_8_side_channel dataOutSideChannel;
    uint_8_side_channel currPixelSideChannel;

    // Iterate over all pixels
    for (int idxPixel = 0; idxPixel < (IMG_WIDTH * IMG_HEIGHT); idxPixel++) {
#pragma HLS PIPELINE

        // Read and cache pixel data
        currPixelSideChannel = inStream.read();
        unsigned char pixelIn = currPixelSideChannel.data;

        // Update line buffer
        updateLineBuffer(lineBuff, pixelIn, idxCol);

        // Update window and perform kernel multiplication
        updateWindow(lineBuff, window, kernel, pixConvolved);

        // Convolve or perform operation if within bounds
        short valOutput = 0;
        if ((idxRow >= KERNEL_DIM - 1) && (idxCol >= KERNEL_DIM - 1)) {
            valOutput = processWindow(window, operation);
            pixConvolved++;
        }

        // Update row and column indices
        if (idxCol < IMG_WIDTH - 1) {
            idxCol++;
        } else {
            idxCol = 0;
            idxRow++;
            pixConvolved = 0;
        }

        // Send output pixels after waitTicks delay
        countWait++;
        if (countWait > waitTicks) {
            sendOutputData(outStream, dataOutSideChannel, valOutput, currPixelSideChannel);
            sentPixels++;
        }
    }

    // Send trailing zeros
    for (countWait = 0; countWait < waitTicks; countWait++) {
        sendOutputData(outStream, dataOutSideChannel, 0, currPixelSideChannel, true);
    }
}

void updateLineBuffer(hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char>& lineBuff,
                      unsigned char pixelIn, int idxCol)
{
    lineBuff.shift_up(idxCol);
    lineBuff.insert_top(pixelIn, idxCol); // Insert at the top row of the buffer
}

void updateWindow(hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char>& lineBuff,
                  hls::Window<KERNEL_DIM, KERNEL_DIM, short>& window,
                  char kernel[KERNEL_DIM * KERNEL_DIM], int pixConvolved)
{
    for (int idxWinRow = 0; idxWinRow < KERNEL_DIM; idxWinRow++) {
        for (int idxWinCol = 0; idxWinCol < KERNEL_DIM; idxWinCol++) {
            short val = (short)lineBuff.getval(idxWinRow, idxWinCol + pixConvolved);
            val = (short)kernel[(idxWinRow * KERNEL_DIM) + idxWinCol] * val;
            window.insert(val, idxWinRow, idxWinCol);
        }
    }
}

short processWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short>& window, int operation)
{
    short valOutput = 0;
    switch (operation) {
        case 0: // Convolution
            valOutput = sumWindow(&window);
            valOutput = valOutput / 8;
            if (valOutput < 0) valOutput = 0;
            break;
        case 1: // Erode
            valOutput = minWindow(&window);
            break;
        case 2: // Dilate
            valOutput = maxWindow(&window);
            break;
    }
    return valOutput;
}

void sendOutputData(hls::stream<int_8_side_channel>& outStream,
                    int_8_side_channel& dataOutSideChannel,
                    short valOutput,
                    uint_8_side_channel& currPixelSideChannel,
                    bool isLast)
{
    dataOutSideChannel.data = valOutput;
    dataOutSideChannel.keep = currPixelSideChannel.keep;
    dataOutSideChannel.strb = currPixelSideChannel.strb;
    dataOutSideChannel.user = currPixelSideChannel.user;
    dataOutSideChannel.last = isLast ? 1 : 0;
    dataOutSideChannel.id = currPixelSideChannel.id;
    dataOutSideChannel.dest = currPixelSideChannel.dest;

    outStream.write(dataOutSideChannel);
}

short minWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short>* window)
{
    unsigned char minVal = 255;
    for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
        for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
            unsigned char valInWindow = (unsigned char)window->getval(idxRow, idxCol);
            if (valInWindow < minVal) minVal = valInWindow;
        }
    }
    return minVal;
}

short maxWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short>* window)
{
    unsigned char maxVal = 0;
    for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
        for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
            unsigned char valInWindow = (unsigned char)window->getval(idxRow, idxCol);
            if (valInWindow > maxVal) maxVal = valInWindow;
        }
    }
    return maxVal;
}

short sumWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short>* window)
{
    short accumulator = 0;
    for (int idxRow = 0; idxRow < KERNEL_DIM; idxRow++) {
        for (int idxCol = 0; idxCol < KERNEL_DIM; idxCol++) {
            accumulator += (short)window->getval(idxRow, idxCol);
        }
    }
    return accumulator;
}
