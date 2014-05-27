define ['jquery', 'underscore', 'backbone', 'hbs!tpl/Menubar'], (jquery, _, Backbone, MenubarTemplate) ->
  class Menubar extends Backbone.View
    el: 'menu.menu-bar'
    events:
      'click button.main-menu': 'openMainMenu'
    openMainMenu: ->
      @trigger ''
    initialize: ->
      @$el.html MenubarTemplate()
