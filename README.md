# web-socket
1. Convert image to byte array
2. Send byte array from c++ client to web client vs nodejs server socket
3. web client receive and display in browser like 'video'

# Required packages
* nodejs
* cmake

# Build and run
1. Run web socket server
```
cd server
npm install
node server.js
```
2. Run c++ client
```
cd engine/build
cmake ..
make
./WebSocketExample
```
3. Open web_client/inde.html in browser and see the result
