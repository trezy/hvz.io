hvz = window.hvz or {}

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
    'c': 'controller'
    'm': 'model'
    'v': 'view'
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
    partialsUrl: 'partial'

require ['jquery', 'underscore', 'backbone', 'c/Router', 'v/Base', 'v/Menubar', 'v/SiteNav', 'v/Dashboard'], (jquery, _, Backbone, RouterController, BaseView, MenubarView, SiteNavView, DashboardView) ->
  $ ->
    router = new RouterController()
    base = new BaseView()
    menubar = new MenubarView()
    sitenav = new SiteNavView router.routes
    router.on 'route:dashboard', ->
      dashboard = new DashboardView()
    Backbone.history.start()
