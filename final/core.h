#ifndef __CORE_H__
#define __CORE_H__

#include <hls_video.h>
#include "define.h"
#include <ap_axi_sdata.h>

typedef ap_axiu < 8, 2, 5, 6 > uint_8_side_channel;
typedef ap_axis < 8, 2, 5, 6 > int_8_side_channel;

short convolve2d(hls::Window < KERNEL_DIM, KERNEL_DIM, char > *window,
                 char kernel[KERNEL_DIM * KERNEL_DIM]);

// Our IP core
void processImage(hls::stream < uint_8_side_channel >& inStream,
               hls::stream < int_8_side_channel > & outStream,
               char kernel[KERNEL_DIM * KERNEL_DIM]);

short sumWindow(hls::Window < KERNEL_DIM, KERNEL_DIM, short > *window);
short minWindow(hls::Window < KERNEL_DIM, KERNEL_DIM, short > *window);
short maxWindow(hls::Window < KERNEL_DIM, KERNEL_DIM, short > *window);

void updateLineBuffer(hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char>& lineBuff,
                      unsigned char pixelIn, int idxCol);

void updateWindow(hls::LineBuffer<KERNEL_DIM, IMG_WIDTH, unsigned char>& lineBuff,
                  hls::Window<KERNEL_DIM, KERNEL_DIM, short>& window,
                  char kernel[KERNEL_DIM * KERNEL_DIM], int pixConvolved);

short processWindow(hls::Window<KERNEL_DIM, KERNEL_DIM, short>& window, int operation);

void sendOutputData(hls::stream<int_8_side_channel>& outStream,
                    int_8_side_channel& dataOutSideChannel,
                    short valOutput,
                    uint_8_side_channel& currPixelSideChannel,
                    bool isLast = false);

#endif /* __CORE_H__ */
