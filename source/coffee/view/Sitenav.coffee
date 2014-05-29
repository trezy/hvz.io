define ['jquery', 'underscore', 'backbone', 'hbs!tpl/Sitenav'], (jquery, _, Backbone, SitenavTemplate) ->
  class Sitenav extends Backbone.View
    el: 'nav.site-nav'
    events:
      'openMainMenu': 'open'
    open: ->
      @$el.addClass 'open'
    initialize: (routes) ->
      @$el.html SitenavTemplate routes: routes
