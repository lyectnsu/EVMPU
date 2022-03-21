#include <opencv2/opencv.hpp>
#include <iostream>
#include <algorithm>
#include <math.h>
#include <time.h> 

double getTimeDelta(timespec &start, timespec &end){
    return (end.tv_sec - start.tv_sec) + 0.000000001*(end.tv_nsec - start.tv_nsec);
}

cv::Mat flip(cv::Mat frame){
    cv::Mat flippedFrame;
    cv::flip(frame, flippedFrame, 1);
    return flippedFrame;
}

double gaussFunction(double swirlCoef, double swirlSharpness, double offset, double r){
    return swirlCoef * std::exp(-(r - offset) * (r - offset) / (2*swirlSharpness*swirlSharpness));
}

cv::Mat swirl(double swirlCoef, double swirlSharpness, double offset, cv::Mat image){
    const double width = image.rows;
    const double height = image.cols;

    cv::Mat result(image.rows, image.cols, image.type());

    for (int i = 0; i < image.rows; i++) {
        for (int j = 0; j < image.cols; j++) {
            double x = (j / height) - 0.5;
            double y = (i / width) - 0.5;        

            double angle = std::atan2(y, x);
            double radius = std::sqrt((x * x) + (y * y));

            angle += gaussFunction(swirlCoef, swirlSharpness, offset, radius);

            double xr = ((radius * std::sin(angle)) + 0.5) * width;
            double yr = ((radius * std::cos(angle)) + 0.5) * height;

            int k = (int)std::min(width - 1, std::max(0.0, xr));
            int m = (int)std::min(height - 1, std::max(0.0, yr));

            uchar* src = image.ptr<uchar>(k, m);
            uchar* out = result.ptr<uchar>(i, j);

            out[0] = src[0];
            out[1] = src[1];
            out[2] = src[2];
        }
    }
    return result;
}

int main(int argc, char* argv[]) {

    if (argc < 4) return 0;

    
    double allTime = 0;
    double inputTime = 0;
    double processingTime = 0;
    double outputTime = 0;
    double numOfFrames = 0;

    timespec startAll, endAll;
    timespec startIn, endIn;
    timespec startProc, endProc;
    timespec startOut, endOut;

    double swirlCoef = std::stod(argv[1]);
    double offset = std::stod(argv[2]);
    double swirlSharpness = std::stod(argv[3]);


    cv::VideoCapture camera(0);
    if (!camera.isOpened()) {
        std::cerr << "ERROR: Could not open camera" << std::endl;
        return 1;
    }

    cv::namedWindow("Webcam", cv::WINDOW_AUTOSIZE);
    cv::Mat frame;
    
    clock_gettime(CLOCK_MONOTONIC_RAW, &startAll);
    
    while (1) {
        ++numOfFrames;
        clock_gettime(CLOCK_MONOTONIC_RAW, &startIn);
        camera >> frame;
        clock_gettime(CLOCK_MONOTONIC_RAW, &endIn);
        inputTime += getTimeDelta(startIn, endIn);

        clock_gettime(CLOCK_MONOTONIC_RAW, &startProc);
        auto swirledImage = swirl(swirlCoef, swirlSharpness, offset, frame);
        auto flippedImage = flip(swirledImage);
        clock_gettime(CLOCK_MONOTONIC_RAW, &endProc);
        processingTime += getTimeDelta(startProc, endProc);

        clock_gettime(CLOCK_MONOTONIC_RAW, &startOut);
        cv::imshow("Webcam", flippedImage);
        clock_gettime(CLOCK_MONOTONIC_RAW, &endOut);
        outputTime += getTimeDelta(startOut, endOut);

        char c = (char)cv::waitKey(25);

        if (c == 27)
            break;
    }

    clock_gettime(CLOCK_MONOTONIC_RAW, &endAll);

    allTime = getTimeDelta(startAll, endAll);

    camera.release();
    cv::destroyAllWindows();

    double usefulTime = inputTime + processingTime + outputTime;
    double inputTimePercent = inputTime / usefulTime;
    double processingTimePercent = processingTime / usefulTime;
    double outputTimePercent = outputTime / usefulTime;
    double fps = numOfFrames / usefulTime;

    std::cout << "Program was running " << allTime << " seconds.\n";
    std::cout << "Program evaluated " << fps << " frames per second.\n";
    std::cout << "Time that useful work was performed " << usefulTime << " seconds.\n";
    std::cout << "Program was reading image " << inputTime << " seconds ";
    std::cout << "(" << inputTimePercent * 100 << "% of useful work time).\n";
    std::cout << "Program was processing image " << processingTime << " seconds ";
    std::cout << "(" << processingTimePercent * 100 << "% of useful work time).\n";
    std::cout << "Program was outputing image " << outputTime << " seconds ";
    std::cout << "(" << outputTimePercent * 100 << "% of useful work time).\n";
    
    return 0;
}