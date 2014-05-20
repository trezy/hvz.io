# Dashboard

    define ['jquery', 'underscore', 'backbone', 'm/Player', 'hbs!tpl/Dashboard'], (jquery, _, Backbone, PlayerModel, DashboardTemplate) ->
      class Dashboard extends Backbone.View
        el: 'main'
        initialize: ->
          @player = new PlayerModel()
          console.log @player
          @$el.html DashboardTemplate
            infectionDuration: @player.get 'infectionDuration'
            status: @player.get 'status'
            recentlyFallen: [{
              name: 'Bob the Builder'
              timeSinceDeath: 1400618895
            }, {
              name: 'Bob the Builder'
              timeSinceDeath: 1400618895
            }, {
              name: 'Bob the Builder'
              timeSinceDeath: 1400618895
            }]