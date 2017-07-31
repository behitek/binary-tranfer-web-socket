#include "image_encode.h"
#include "easywsclient.hpp"
//#include "easywsclient.cpp" // <-- include only if you don't want compile separately
#ifdef _WIN32
#pragma comment(lib, "ws2_32")
#include <WinSock2.h>
#endif

#include <assert.h>
#include <stdio.h>
#include <string>
#include <zconf.h>

using easywsclient::WebSocket;
static WebSocket::pointer ws = NULL;

void handle_message(const std::string &message)
{
    // cout << ">> " << message << endl;
    if(message == "ok") ::ws->close();
}

int main()
{
#ifdef _WIN32
    INT rc;
    WSADATA wsaData;

    rc = WSAStartup(MAKEWORD(2, 2), &wsaData);
    if (rc)
    {
        printf("WSAStartup Failed.\n");
        return 1;
    }
#endif

    VideoCapture cap;
    cap.open("http://4co2.vp9.tv/chn/VTT4/v.m3u8");
    if (!cap.isOpened())
    {
        return -1;
    }

    cv::Mat image;

    while (cap.isOpened())
    {
        // sleep(1);
        cap.read(image);
        if (!image.data)
        {
            std::cout << "No image data!";
            continue;
        }
        cv::resize(image, image, cv::Size(), 0.5, 0.5);
        image_encode image_encode_obj(image);
        std::vector<byte> img_byte = image_encode_obj.image_encoder();

        ::ws = WebSocket::from_url("ws://localhost:8126/");
        assert(::ws);
        ::ws->sendBinary(img_byte);
        while (::ws->getReadyState() != ::ws->CLOSED)
        {
            ::ws->poll();
            ::ws->dispatch(handle_message);
        }
    }
    delete ::ws;
#ifdef _WIN32
    WSACleanup();
#endif
    return 0;
}
