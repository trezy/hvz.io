define ['jquery', 'underscore', 'backbone', 'hbs!tpl/Sitenav'], (jquery, _, Backbone, SitenavTemplate) ->
  class SiteNav extends Backbone.View
    el: 'nav.site-nav'
    render: (routes) ->
      @$el.html SitenavTemplate routes
    initialize: (routes) ->
      @render routes
