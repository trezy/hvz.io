module.exports =
  prep: [
    'clean'
    'newer:coffeelint'
  ]
  compilers: [
    'newer:coffee:dev'
    'newer:sass:dev'
  ]
  copy: [
    'newer:copy:fonts'
    'newer:copy:libraries'
    'newer:copy:templates'
    'newer:imagemin'
  ]
  server: [
    'connect'
    'watch'
  ]