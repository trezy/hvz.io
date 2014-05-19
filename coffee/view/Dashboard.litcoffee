# Dashboard

    define ['jquery', 'underscore', 'backbone', 'hbs!tpl/dashboard'], (jquery, _, Backbone, tpl_dashboard) ->
      class Dashboard extends Backbone.View
        el: 'main'
        render: ->
          @$el.html tpl_dashboard()
        initialize: ->
          @render()