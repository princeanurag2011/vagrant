var express = require('express');
var app = express();

app.get('*',function(req, res){
  res.send('Hello from  Nodejs File');
});

app.listen(3001);
console.log("App server running on port 3001");


