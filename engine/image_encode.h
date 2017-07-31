//
// Created by hieunv on 28/07/2017.
//

#ifndef WEBSOCKETEXAMPLE_IMAGEENCODER_H
#define WEBSOCKETEXAMPLE_IMAGEENCODER_H

#include <opencv2/highgui.hpp>
#include <opencv2/core.hpp>
#include <opencv2/opencv.hpp>
#include <iostream>
#include <string>

using namespace std;
using namespace cv;

typedef unsigned char byte;

class image_encode {
private:
    cv::Mat image;
public:
    image_encode(cv::Mat image);
    std::vector<byte> image_encoder();
};


#endif //WEBSOCKETEXAMPLE_IMAGEENCODER_H
