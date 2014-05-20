# Player

    define ['underscore', 'backbone'], (_, Backbone) ->
      class Moderator extends Player
        defaults:
          mod: true
        initialize: ->
          console.log 'New Moderator created.'