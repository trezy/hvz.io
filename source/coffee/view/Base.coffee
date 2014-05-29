define [
  'jquery', 'underscore', 'backbone', 'hbs!tpl/Base'
], (
  $
  _
  Backbone
  BaseTemplate
) ->
  class Base extends Backbone.View
    el: 'body'
    render: ->
      @$el.html BaseTemplate()
    initialize: ->
      @render()
