# CoffeeLint
# Linters are used to verify that Coffeescript files are following certain coding style standards. Thes standards are set in `.coffeelint` at the root of the repository.

module.exports =
  options:
    configFile: '.coffeelint'
  dev: [
    'coffee/**/*.coffee'
    'coffee/**/*.litcoffee'
  ]
