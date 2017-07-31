//
// Created by hieunv on 28/07/2017.
//

#include "image_encode.h"

image_encode::image_encode(cv::Mat image) {
    this->image = image;
}

vector<byte> image_encode::image_encoder() {
    vector<byte> buf;
    imencode(".jpg", image, buf);
    // rows & cols maybe > 255 - max value of byte type
//    buf.push_back((byte)(image.rows/256));
//    buf.push_back((byte)(image.rows%256));
//    buf.push_back((byte)(image.cols/256));
//    buf.push_back((byte)(image.cols%256));
    return buf;
}