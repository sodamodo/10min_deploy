var http = require("http");

var server = http.createServer((request, response) => {
  response.writeHead(200, {"Content-Type": "text/plain"});
  response.end("Fuck israel");
});


server.listen(8000);


console.log("PLeaaaase work");
