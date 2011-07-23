class TcpListener
  constructor: (@port = 7288) ->

  # responds as quickly as possible
  listen: ->
    console.log "[TCP] listening on port #{@port}"


exports.TcpListener = TcpListener