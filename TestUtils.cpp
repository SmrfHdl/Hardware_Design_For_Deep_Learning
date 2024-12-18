#include "TestUtils.h"

void saveImage(const std::string path, cv::InputArray inArr) {
    double min, max;
    cv::minMaxIdx(inArr, &min, &max);
    cv::Mat adjMap;
    cv::convertScaleAbs(inArr, adjMap, 255 / max);
    cv::imwrite(path, adjMap);
}

template <typename T>
void printSmallMatrixCV(char *title, cv::InputArray inArr) {
    printf("%s\n", title);
    printf("----------------------------------\n");

    for (int rows = 0; rows < inArr.getMat().rows; rows++) {
        printf("ROW: %02d --->  ", rows);
        for (int cols = 0; cols < IMG_WIDTH; cols++) {
            printf(" %04d ", inArr.getMat().at<T>(rows, cols));
        }
        printf("\n");
    }
    printf("\n");
}

void printSmallMatrixCVChar(char *title, cv::InputArray inArr) {
    printSmallMatrixCV<unsigned char>(title, inArr);
}

void printSmallMatrixCVShort(char *title, cv::InputArray inArr) {
    printSmallMatrixCV<short>(title, inArr);
}

short processWindowAndKernel(short *kernel, char *window, short numKernelElements) {
    short accumulator = 0;
    for (int idx = 0; idx < numKernelElements; idx++) {
        accumulator += kernel[idx] * static_cast<unsigned char>(window[idx]);
    }
    return accumulator;
}

void conv2dByHand(cv::InputArray imageIn, char imageOut[IMG_WIDTH][IMG_HEIGHT], char kernel[KERNEL_DIM * KERNEL_DIM], int kSize) {
    int kCenterX = kSize / 2;
    int kCenterY = kSize / 2;
    short accConvolution = 0;
    short numKernelElements = kSize * kSize;
    unsigned char samplingWindow[KERNEL_DIM][KERNEL_DIM];

    for (int rows = 0; rows < IMG_HEIGHT; rows++) {
        for (int cols = 0; cols < IMG_HEIGHT; cols++) {
            accConvolution = 0;
            if ((rows >= kSize - 1) && (cols >= kSize - 1)) {
                for (int rowsWindow = 0; rowsWindow < kSize; rowsWindow++) {
                    for (int colsWindow = 0; colsWindow < kSize; colsWindow++) {
                        int repos_row = rows - (kSize - 1) + rowsWindow;
                        int repos_col = cols - (kSize - 1) + colsWindow;
                        short currPixVal = imageIn.getMat().at<unsigned char>(repos_row, repos_col);
                        samplingWindow[rowsWindow][colsWindow] = currPixVal;
                    }
                }
                accConvolution = processWindowAndKernel((short *)kernel, (char *)samplingWindow, numKernelElements);
            }
            imageOut[rows][cols] = accConvolution;
        }
    }
}
