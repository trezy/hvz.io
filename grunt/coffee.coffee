# Coffee

module.exports =
  dev:
    options:
      bare: true
      sourceMap: true
    expand: true
    cwd: 'source/coffee/'
    src: ['**/*.coffee']
    dest: 'build/js/'
    ext: '.js'
