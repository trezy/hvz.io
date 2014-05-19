# Site Nav

    define ['jquery', 'underscore', 'backbone', 'hbs!tpl/sitenav'], (jquery, _, Backbone, tpl_sitenav) ->
      class SiteNav extends Backbone.View
        el: 'nav.site-nav'
        render: (routes) ->
          @$el.html tpl_sitenav routes
        initialize: (routes) ->
          @render routes