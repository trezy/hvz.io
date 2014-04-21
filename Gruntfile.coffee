# Gruntfile
# [Grunt](http://gruntjs.com) is, in its simplest form, a task runner. We'll use our Gruntfile to import our Node `package.json` file *<-why?*, then we'll import our tasks.

module.exports = (grunt) ->
  appNamespace = 'hvz'

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

# Tasks
# Tasks in Grunt can do almost *anything*. We'll use them to compile the projects Sass files, compress files for production, and run unit tests. To do this we'll first pass individual types of tasks - i.e. compile Sass, concatenate scripts, etc. - as objects to Grunt's `initConfig` method. Later we'll create more complex tasks by chaining subsets of these original task objects.

# Image Minification
# Since we're already in the business of optimizing everything for bandwidth, we'll keep that trend up with `imagemin`. This task will take all of the images in the `img/` folder and optimize them using any means available. The resulting files will be put end up in `build/img/`.

    imagemin:
      dynamic:
        files: [
          expand: true
          src: ['images/*.{png,jpg,gif}']
          dest: 'build/img'
        ]

# Sass
# All of our styling is done in Sass so we'll want a task to compile them instead of having to do it manually every time we make a change. We'll break this down further similar to the way we broke down our `coffee` task. Our `sass:dev` task will compile our Sass files to normalized CSS files. Our `sass:build` task will compile our

    sass:
      dev:
        options:
          style: 'expanded'
        files:
          'build/' + appNamespace + '.css': 'scss/global.scss'
      build:
        options:
          style: 'compressed'
        files:
          'build/' + appNamespace + '.css': 'scss/global.scss'

# Watch
# Finally we'll want to set up a `watch` task. This will allow us to watch for changes in any of the files we'll be editing and automagically compile them when we save.

    watch:
      img:
        files: ['img/*.{png,jpg,gif}']
        tasks: ['imagemin']
      sass:
        files: ['scss/**/*.scss']
        tasks: ['sass:dev']

# Plugins
# We'll need to load all of the plugins for the tasks listed above. We can do this using Grunt's `loadNpmTasks` method.
  grunt.loadNpmTasks 'grunt-contrib-imagemin'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'build', ['sass:dev']
