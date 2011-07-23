redis = require 'redis',
sys = require('sys'),
http = require('http'),
fs = require('fs'),
express = require('express')

Listener = require('./lib/listeners/listener').Listener

config =
  redis:
    port: 6379
    host: '127.0.0.1'
  express:
    port: 3000

Listener.listen()


# set up client
app = express.createServer();
app.use express.static __dirname + '/public'
app.listen(config.express.port)


# set up websocket input



