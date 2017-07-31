$(document).ready(function () {

    if (!("WebSocket" in window)) {
        $('#chatLog, input, button, #examples').fadeOut("fast");
        $('<p>Oh no, you need a browser that supports WebSockets. How about <a href="http://www.google.com/chrome">Google Chrome</a>?</p>').appendTo('#container');
    } else {
        //The user has WebSockets

        connect();

        function connect() {
            var socket;
            var host = "ws://localhost:8126/";

            try {
                var socket = new WebSocket(host);

                message('Socket Status: ' + socket.readyState);

                socket.onopen = function () {
                    message('Socket Status: ' + socket.readyState + ' (open)');
                }

                socket.onmessage = function (e) {
                    var reader = new window.FileReader();
                    reader.readAsDataURL(e.data);
                    reader.onloadend = function () {
                        base64data = reader.result;
                        $('img#my-img').attr('src',base64data);
                    }
                }

                socket.onclose = function () {
                    message('<p class="event">Socket Status: ' + socket.readyState + ' (Closed)');
                }

            } catch (exception) {
                message('Error' + exception);
            }

            function message(msg) {
                console.log(msg);
            }
        }
        //End connect
    }
    //End else
});