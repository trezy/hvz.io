# Menubar

    define ['jquery', 'underscore', 'backbone', 'hbs!tpl/menubar'], (jquery, _, Backbone, tpl_menubar) ->
      class Menubar extends Backbone.View
        el: 'menu.menu-bar'
        render: ->
          @$el.html tpl_menubar()
        initialize: ->
          @render()