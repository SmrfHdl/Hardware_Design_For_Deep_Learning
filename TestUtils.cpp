#include "TestUtils.h"
#include <opencv2/opencv.hpp>

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
    cv::Mat inputMat = imageIn.getMat();
    int rows = inputMat.rows;
    int cols = inputMat.cols;

    cv::Mat outputMat = cv::Mat::zeros(rows, cols, CV_8UC1);

    int kernelRadius = kSize / 2;

    for (int i = kernelRadius; i < rows - kernelRadius; i++) {
        for (int j = kernelRadius; j < cols - kernelRadius; j++) {
            int sum = 0;

            for (int m = -kernelRadius; m <= kernelRadius; m++) {
                for (int n = -kernelRadius; n <= kernelRadius; n++) {
                    int pixelVal = inputMat.at<uchar>(i + m, j + n);
                    int kernelVal = kernel[(m + kernelRadius) * kSize + (n + kernelRadius)];
                    sum += pixelVal * kernelVal;
                }
            }

            sum = std::min(255, std::max(0, sum));
            outputMat.at<uchar>(i, j) = static_cast<uchar>(sum);
        }
    }

    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            imageOut[i][j] = outputMat.at<uchar>(i, j);
        }
    }
}
