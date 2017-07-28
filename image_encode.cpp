//
// Created by hieunv on 28/07/2017.
//

#include "image_encode.h"

image_encode::image_encode(cv::Mat image) {
    this->image = image;
}

vector<uchar> image_encode::image_encoder() {
    std::vector<uchar> array;
    for (int i = 0; i < image.cols; ++i) {
        for (int j = 0; j < image.rows; ++j) {
            cv::Vec3b pixel = image.at<Vec3b>(Point(i,j));
            array.push_back(pixel[0]);
            array.push_back(pixel[1]);
            array.push_back(pixel[2]);
        }
    }
    return array;
}