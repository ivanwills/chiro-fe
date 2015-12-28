var express = require('express');
var app = express();

var port = '7332';

app.use(express.static(__dirname + '/public/'));
app.listen(port);

console.log('chiro fe now running on http://localhost:' + port );
