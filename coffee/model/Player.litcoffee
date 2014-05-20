# Player

    define ['underscore', 'backbone'], (_, Backbone) ->
      class Player extends Backbone.Model
        defaults:
          mod: false
          zombie: false
          gamesWon: 0
          gamesLost: 0
        kill: ->
          @set zombie: true
        initialize: ->
          console.log 'New Player created.'