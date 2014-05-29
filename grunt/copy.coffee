# Copy
# Some of our files don't need to be compiled but we still want to keep them in our project root to maintain separation of concerns. We'll just copy these files directly from the project root to the `build/` folder.

module.exports =
  fonts:
    expand: true
    cwd: 'source/scss/'
    src: 'fonts/**/*'
    dest: 'build/css/'
  libraries:
    expand: true
    cwd: 'bower_components/'
    src: '**/*'
    dest: 'build/lib/'
  templates:
    src: 'source/templates/**/*'
    dest: 'build/js/'
