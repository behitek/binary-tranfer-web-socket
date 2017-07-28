#include "image_encode.h"
#include "easywsclient.hpp"
//#include "easywsclient.cpp" // <-- include only if you don't want compile separately
#ifdef _WIN32
#pragma comment( lib, "ws2_32" )
#include <WinSock2.h>
#endif
#include <assert.h>
#include <stdio.h>
#include <string>

using easywsclient::WebSocket;
static WebSocket::pointer ws = NULL;

void handle_message(const std::string & message)
{
    printf(">>> %s\n", message.c_str());
    if (message == "OK") { ::ws->close(); }
}

int main()
{
#ifdef _WIN32
    INT rc;
    WSADATA wsaData;

    rc = WSAStartup(MAKEWORD(2, 2), &wsaData);
    if (rc) {
        printf("WSAStartup Failed.\n");
        return 1;
    }
#endif

    ::ws = WebSocket::from_url("ws://localhost:8126/");
    assert(::ws);
    cv::Mat image = cv::imread("../test.jpg");
    if(!image.data){
        std::cout<<"No image data!";
        return -1;
    }
    cout<<"size: "<<image.rows<<", "<<image.cols<<endl;
    image_encode image_encode_obj(image);
    std::vector<uchar> img_uchar = image_encode_obj.image_encoder();

    // rows & cols maybe > 255 - max value of uchar type
    img_uchar.push_back((uchar)(image.rows/256));
    img_uchar.push_back((uchar)(image.rows%256));
    img_uchar.push_back((uchar)(image.cols/256));
    img_uchar.push_back((uchar)(image.cols%256));

    ::ws->sendBinary(img_uchar);
    while (::ws->getReadyState() != WebSocket::CLOSED) {
      ::ws->poll();
      ::ws->dispatch(handle_message);
    }
    delete ::ws;
#ifdef _WIN32
    WSACleanup();
#endif
    return 0;
}
