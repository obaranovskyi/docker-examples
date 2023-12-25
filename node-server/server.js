const http = require("http"),
    port = process.env.PORT || 8080;

http.createServer(function(_, res) {
  res.writeHead(200);
  res.write("Hello world!");
  res.end();
}).listen(parseInt(port, 10));

console.log(
  "Server running at: `http://localhost:" + port + "`"
);
