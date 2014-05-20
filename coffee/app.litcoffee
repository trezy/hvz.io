# hvz.io

We'll use the namespace `hvz` for our application. To do so, we'll verify in out application's entry point that the `hvz` namespace is always equal to itself or, if it does not yet exist, we'll create it as an empty object.

    hvz = window.hvz or {}

## RequireJS

To [RequireJS](http://requirejs.org) is a Javascript dependency manager. The Require framework will allow us to declare the dependencies of each module in our application without worrying that it's still downloading or about loading a module more than once. First we'll need to do some standard configuration to handle all of our libraries.

`require.config` allows us to change RequireJS's core settings to accomodate our setup. We'll make sure to point all of our libraries at the appropriate files so we don't have to type their full paths in every time we add them as a dependency. We'll also create shims for most of our libraries.

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
        partialsUrl: 'templates'

## Initialize

Once RequireJS has loaded all of our dependencies we'll be ready to initialize the application.

    require ['jquery', 'underscore', 'backbone', 'c/Router', 'v/Base', 'v/Menubar', 'v/SiteNav', 'v/Dashboard'], (jquery, _, Backbone, RouterController, BaseView, MenubarView, SiteNavView, DashboardView) ->
      $ ->
        router = new RouterController()
        base = new BaseView()
        menubar = new MenubarView()
        sitenav = new SiteNavView router.routes

        router.on 'route:dashboard', ->
          dashboard = new DashboardView()
        Backbone.history.start()
