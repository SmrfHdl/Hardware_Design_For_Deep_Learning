#ifndef __CORE_H__
#define __CORE_H__

#include <hls_video.h>
#include "define.h"
#include <ap_axi_sdata.h>

typedef ap_axiu < 8, 2, 5, 6 > uint_8_side_channel;
typedef ap_axis < 8, 2, 5, 6 > int_8_side_channel;

void convolution2D(hls::stream<uint_8_side_channel>& inStream,
                   hls::stream<int_8_side_channel> & outStream,
                   char kernel[KERNEL_DIM * KERNEL_DIM]);
void shiftAndInsertLineBuffer(hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char>& lineBuff,
                              unsigned char pixelIn, int idxCol);
void populateWindowWithKernel(hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char>& lineBuff,
                              hls::Window<KERNEL_DIM, KERNEL_DIM, short>& window,
                              char kernel[KERNEL_DIM * KERNEL_DIM], int pixConvolved);
void writeOutputDataStream(hls::stream<int_8_side_channel>& outStream,
                           int_8_side_channel& dataOutSideChannel,
                           short valOutput,
                           uint_8_side_channel& currPixelSideChannel,
                           bool isLast = false);
short calculateWindowSum(hls::Window<KERNEL_DIM, KERNEL_DIM, short>* window);

#endif /* __CORE_H__ */
