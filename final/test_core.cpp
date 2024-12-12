#include <stdio.h>
#include <opencv2/core/core.hpp>
#include <hls_opencv.h>
#include "core.h"
#include "TestUtils.h"

char kernel[KERNEL_DIM * KERNEL_DIM] = {
  -1, -1, -1,
  -1,  8, -1,
  -1, -1, -1,
};

char outImage[IMG_HEIGHT][IMG_WIDTH];
char outImageRef[IMG_HEIGHT][IMG_WIDTH];

void prepareInputStream(const cv::Mat& imageSrc, hls::stream<uint_8_side_channel>& inputStream) {
    for (int idxRows = 0; idxRows < imageSrc.rows; idxRows++) {
        for (int idxCols = 0; idxCols < imageSrc.cols; idxCols++) {
            uint_8_side_channel valIn;
            valIn.data = imageSrc.at<unsigned char>(idxRows, idxCols);
            valIn.keep = 1; valIn.strb = 1; valIn.user = 1; valIn.id = 0;
            valIn.dest = 0;
            inputStream << valIn;
        }
    }
}

void processAndSaveImage(cv::Mat& imgCvOut, const cv::Mat& imgCvOutRef, const std::string& fileName, bool isRef = false) {
    if (isRef) {
        printf("Reference function ended\n");
        saveImage(fileName, imgCvOutRef);
    } else {
        printf("Core function ended\n");
        saveImage(fileName, imgCvOut);
    }
}

int main() {
    printf("Load image %s\n", INPUT_IMAGE_FILE);
    cv::Mat imageSrc = cv::imread(INPUT_IMAGE_FILE, cv::IMREAD_GRAYSCALE);
    printf("Image Rows:%d Cols:%d\n", imageSrc.rows, imageSrc.cols);

    hls::stream<uint_8_side_channel> inputStream;
    hls::stream<int_8_side_channel>  outputStream;
    cv::Mat imgCvOut(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImage, cv::Mat::AUTO_STEP);
    cv::Mat imgCvOutRef(cv::Size(imageSrc.cols, imageSrc.rows), CV_8UC1, outImageRef, cv::Mat::AUTO_STEP);

    prepareInputStream(imageSrc, inputStream);
    
    printf("Calling Reference function\n");
    conv2dByHand(imageSrc, outImageRef, kernel, KERNEL_DIM);
    
    if (imageSrc.rows < 12) {
        printSmallMatrixCVChar("Ref Core", imgCvOutRef);
    } else {
        printf("Saving image Ref\n");
        processAndSaveImage(imgCvOut, imgCvOutRef, OUTPUT_IMAGE_REF, true);
    }

    printf("Calling Core function\n");
    processImage(inputStream, outputStream, kernel, 0);
    
    for (int idxRows = 0; idxRows < imageSrc.rows; idxRows++) {
        for (int idxCols = 0; idxCols < imageSrc.cols; idxCols++) {
            int_8_side_channel valOut;
            outputStream.read(valOut);
            outImage[idxRows][idxCols] = valOut.data;
        }
    }

    if (imageSrc.rows < 12) {
        printSmallMatrixCVChar("Res Core", imgCvOut);
    } else {
        printf("Saving image\n");
        processAndSaveImage(imgCvOut, imgCvOutRef, OUTPUT_IMAGE_FILE);
    }

    return 0;
}
