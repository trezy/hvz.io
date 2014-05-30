define [
  'underscore'
  'backbone'
], (
  _
  Backbone
) ->
  class Router extends Backbone.Router
    routes:
      '': 'dashboard'
      'chat': 'chat'
      'code': 'code'
      'help': 'help'
      'messages': 'messages'
      'players': 'players'
      'profile': 'profile'
      'rules': 'rules'
      'tags': 'tags'
