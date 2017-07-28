/*
  Prerequisites:

    1. Install node.js and npm
    2. npm install ws

  See also,

    http://einaros.github.com/ws/

  To run,

    node example-server.js
*/

"use strict"; // http://ejohn.org/blog/ecmascript-5-strict-mode-json-and-more/
var WebSocketServer = require('ws').Server;
var http = require('http');
var robot = require("robotjs")
var fs = require('fs')
var Jimp = require('jimp')

var server = http.createServer();
var wss = new WebSocketServer({ server: server, path: '/' });
wss.on('connection', function (ws) {
    console.log('A client connect to server');
    ws.on('message', function (data, flags) {
        if (flags.binary) {
            convertBinaryToImage(data);
            ws.send('OK');
        } else {
            console.log('>>> ' + data);
            console.log('Receive text data: ' + data);
            ws.send('OK');
        }
    });
    ws.on('close', function () {
        console.log('Connection closed!');
    });
    ws.on('error', function (e) {
    });
});
server.listen(8126);
console.log('Listening on port 8126...');

function convertBinaryToImage(binaryData) {
    console.log('Receive binary data length: ' + binaryData.length);
    var len = binaryData.length;
    var w = binaryData[len - 1] + binaryData[len-2]*256;
    var h = binaryData[len - 3] + binaryData[len-4]*256;
    console.log(w + " " + h);
    // capture screen image
    // var rimg = robot.screen.capture(0, 0, w, h)
    var path = 'myfile.jpg'

    // Create a new blank image, same size as Robotjs' one
    var jimg = new Jimp(w, h);
    var arrIndex = 0;
    for (var x = 0; x < w; x++) {
        for (var y = 0; y < h; y++) {
            // hex is a string, rrggbb format
            // var hex = rimg.colorAt(x, y);
            // data is format bgr number -> convert to hex format rrggbb
            var hex = binaryData[arrIndex+2].toString(16) + binaryData[arrIndex+1].toString(16) + binaryData[arrIndex].toString(16);
            arrIndex += 3;
            // console.log(hex);
            // Jimp expects an Int, with RGBA data,
            // so add FF as 'full opaque' to RGB color
            var num = parseInt(hex + "ff", 16)
            console.log(num);
            // Set pixel manually
            jimg.setPixelColor(num, x, y);
        }
    }
    jimg.write(path)
}
