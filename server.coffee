express = require 'express'
app = express()
port = 3000

app.get /(.*)/, (req, res) ->
  res.sendfile __dirname + '/build' + req.params[0]

app.listen port, ->
  console.log 'Listening on port ' + port + '...'