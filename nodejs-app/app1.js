var express = require('express');
app= express(),
  redis = require('redis'),
  client = redis.createClient("6379","192.168.33.24",{no_ready_check: true}),
flow = require('flow-maintained');

var express = require('express'),
  app = express(),
  bodyParser = require('body-parser');
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({extended: false}));

app.get('/', function(req, res){
  client.incr("test", function(err, counter){
    res.render('index', {redis: counter});
  });
});

app.post('/', function(req, res){
  console.log(req.body);
  res.redirect('/');
});

app.listen(3001);
console.log("App server running on port 3001");
