# Watch
# Finally we'll want to set up a `watch` task. This will allow us to watch for changes in any of the files we'll be editing and automagically compile them when we save.

module.exports =
  coffee:
    files: 'coffee/**/*.coffee'
    tasks: 'coffee:dev'
  coffeelint:
    files: 'coffee/**/*.coffee'
    tasks: 'coffeelint:dev'
  fonts:
    files: 'scss/fonts/**/*'
    tasks: 'copy:fonts'
  images:
    files: 'images/*.{png,jpg,gif}'
    tasks: 'imagemin:dynamic'
  libraries:
    files: 'bower_components/*'
    tasks: 'copy:libraries'
  sass:
    files: 'scss/**/*.scss'
    tasks: 'sass:dev'
  templates:
    files: 'templates/*'
    tasks: 'copy:templates'
