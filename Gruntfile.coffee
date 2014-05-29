# Gruntfile
# [Grunt](http://gruntjs.com) is, in its simplest form, a task runner. We'll
# use our Gruntfile to import our Node `package.json` file *<-why?*, then we'll
# import our tasks.

module.exports = (grunt) ->

# Timing
# It's always nice to know how long your tasks are taking. We use the plugin
# `time-grunt` to diaplay that data in a sexy little graph once it's done.

  require('time-grunt')(grunt)

# Plugins
# We'll need to load all of the plugins for the tasks listed above. Fortunately
# we've got one plugin called `load-grunt-config` that will load all of our
# other plugins automagically.

  require('load-grunt-config')(grunt)