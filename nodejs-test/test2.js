var express = require('express');
var app = express();

app.get('*',function(req, res){
  res.send('Hello from second Nodejs File');
});

app.listen(3002);
console.log("App server running on port 3002");


