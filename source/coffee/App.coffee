# Create a namespace for the application
hvz = window.hvz or {}





# Configure RequireJS
require.config
  paths:
    # RequireJS Plugins
    'hbs': '../lib/require-handlebars-plugin/hbs'
    # Libraries
    'backbone': '../lib/backbone/backbone'
    'handlebars': '../lib/handlebars/handlebars'
    'jquery': '../lib/jquery/dist/jquery'
    'qrcode': '../lib/jquery.qrcode/src/jquery.qrcode.js'
    'underscore': '../lib/underscore/underscore'
    # Templates
    'tpl': 'templates'
    # Module Types
    'ctrl': 'controllers'
    'c': 'collections'
    'm': 'models'
    'v': 'views'
  shim:
    underscore:
      exports: '_'
    backbone:
      deps: ['jquery', 'underscore']
      exports: 'Backbone'
    handlebars:
      exports: 'Handlebars'
  hbs:
    disableI18n: true
    partialsUrl: 'partials'





# Initialize the application
require [
  'jquery'
  'underscore'
  'backbone'
  'ctrl/Router'
  'm/Player'
  'v/Base'
  'v/Menubar'
  'v/Sitenav'
  'v/Dashboard'
], (
  $
  _
  Backbone
  Router
  PlayerModel
  BaseView
  MenubarView
  SitenavView
  DashboardView
) ->

  hvz.vent = _.extend {}, Backbone.Events
  hvz.router = new Router
  hvz.player = new PlayerModel

  $ ->
    base = new BaseView
    menubar = new MenubarView
    sitenav = new SitenavView hvz.router.routes
    hvz.router.on 'route:dashboard', ->
      dashboard = new DashboardView
    Backbone.history.start()
