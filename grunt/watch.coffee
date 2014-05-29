# Watch
# Finally we'll want to set up a `watch` task. This will allow us to watch for changes in any of the files we'll be editing and automagically compile them when we save.

module.exports =
  coffee:
    files: 'source/coffee/**/*.coffee'
    tasks: ['coffeelint', 'coffee:dev']
  fonts:
    files: 'source/scss/fonts/**/*'
    tasks: 'copy:fonts'
  images:
    files: 'source/images/**/*'
    tasks: 'imagemin:dynamic'
  libraries:
    files: 'bower_components/**/*'
    tasks: 'copy:libraries'
  sass:
    files: 'source/scss/**/*'
    tasks: 'sass:dev'
  templates:
    files: 'source/templates/**/*'
    tasks: 'copy:templates'
