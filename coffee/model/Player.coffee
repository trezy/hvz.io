define ['underscore', 'backbone'], (_, Backbone) ->
  class Player extends Backbone.Model
    defaults:
      id: 0
      name: ''
      moderator: false
      status: 'human'
      infectionDuration: 0
      gamesWon: 0
      gamesLost: 0
    kill: ->
      @set status: 'zombie'
    initialize: ->
      console.log 'New Player created.'
