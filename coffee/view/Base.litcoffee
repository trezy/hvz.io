# Base

    define ['jquery', 'underscore', 'backbone', 'hbs!tpl/base'], (jquery, _, Backbone, tpl_base) ->
      class Base extends Backbone.View
        el: 'body'
        render: ->
          @$el.html tpl_base()
        initialize: ->
          @render()