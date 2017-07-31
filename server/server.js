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
// var ImageJS = require("imagejs");
var server = http.createServer();

var wss = new WebSocketServer({ server: server, path: '/' });
wss.on('connection', function (ws) {
    console.log('A client connect to server');
    ws.on('message', function (data, flags) {
        console.log('receive data length ' + data.length)
        wss.clients.forEach(function each(client) {
            if (client !== ws && client.readyState === ws.OPEN) {
                client.send(new Buffer(data,'binary').toString('base64'));
            }
        });
    });
    ws.on('close', function () {
        console.log('Connection closed!');
    });
    ws.on('error', function (e) {
    });
});
server.listen(8126);
console.log('Listening on port 8126...');