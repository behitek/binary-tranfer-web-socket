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
// var robot = require("robotjs")
var fs = require('fs')
var ImageJS = require("imagejs");

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
    var bitmap = new ImageJS.Bitmap({width: w, height: h});
    var index = 0;
    for(let i = 0;i < w;i++){
        for(let j = 0;j < h;j++){
            bitmap.setPixel(i,j,binaryData[index+2],binaryData[index+1],binaryData[index],255);
            index += 3;
        }
    }
    bitmap.writeFile("image.jpg", { quality:75 })
    .then(function() {
        console.log('Save image success!');
    });
}


function changeImage(){
    document.getElementById("my-image").src="./myfile.jpg";
}