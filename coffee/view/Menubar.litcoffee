# Menubar

    define ['jquery', 'underscore', 'backbone', 'hbs!tpl/Menubar'], (jquery, _, Backbone, MenubarTemplate) ->
      class Menubar extends Backbone.View
        el: 'menu.menu-bar'
        render: ->
          @$el.html MenubarTemplate()
        initialize: ->
          @render()