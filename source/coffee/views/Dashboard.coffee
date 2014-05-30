define [
  'jquery', 'underscore', 'backbone', 'hbs!tpl/Dashboard'
], (
  $
  _
  Backbone
  DashboardTemplate
) ->
  class Dashboard extends Backbone.View
    el: 'main'
    player: hvz.player

    render: =>
      @$el.html DashboardTemplate
        infectionDuration: hvz.player.get 'infectionDuration'
        status: hvz.player.get 'status'
        recentlyFallen: [{
          name: 'Bob the Builder'
          timeSinceDeath: 1400618895
        }, {
          name: 'Bob the Builder'
          timeSinceDeath: 1400618896
        }, {
          name: 'Bob the Builder'
          timeSinceDeath: 1400618897
        }]

    initialize: =>
      hvz.vent.on 'playerKilled', @render
      @render()