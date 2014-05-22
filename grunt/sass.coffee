# Sass
# All of our styling is done in Sass so we'll want a task to compile them instead of having to do it manually every time we make a change. Our `sass:dev` task will compile our Sass files to normalized CSS files. Our `sass:dist` task will compile our Sass files to minified CSS files.

module.exports =
  dev:
    options:
      style: 'expanded'
    files:
      'build/css/app.css': 'scss/global.scss'
  dist:
    options:
      style: 'compressed'
    files:
      'build/css/app.css': 'scss/global.scss'
