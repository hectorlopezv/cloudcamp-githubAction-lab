var express = require('express');
var pjson = require('./package.json');

var app = express();
var version = pjson.version;

app.get('/', function (req, res) {
    res.send('Simple Web Application is UP with version ' + version );
});

app.listen(8081, function () {
    console.log('Simple Web Application running on port 8081!');
});