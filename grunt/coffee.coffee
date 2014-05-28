# Coffee

module.exports =
  dev:
    options:
      bare: true
      sourceMap: true
    files: [{
      expand: true
      cwd: 'coffee'
      src: [
        '**/*.coffee'
        '!helper/**/*'
      ]
      dest: 'build/js/'
      ext: '.js'
    }, {
      expand: true
      cwd: 'coffee/helper'
      src: ['**/*.coffee']
      dest: 'templates/helpers'
      ext: '.js'
    }]
