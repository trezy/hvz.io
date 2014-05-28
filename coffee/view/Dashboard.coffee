define ['jquery', 'underscore', 'backbone', 'moment', 'hbs!tpl/Dashboard'], (jquery, _, Backbone, moment, DashboardTemplate) ->
  class Dashboard extends Backbone.View
    el: 'main'

    render: =>
      @$el.html DashboardTemplate
        infectionDuration: hvz.player.get 'infectionDuration'
        status: hvz.player.get 'status'
        recentlyFallen: [{
          name: 'Bob the Builder'
          timeOfDeath: 1401238410457
        }, {
          name: 'Bob the Builder'
          timeOfDeath: 1401238410454
        }, {
          name: 'Bob the Builder'
          timeOfDeath: 1401238410450
        }]

    initialize: =>
      @render()
      hvz.vent.on 'playerKilled', @render