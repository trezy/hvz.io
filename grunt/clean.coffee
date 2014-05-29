# Clean
# The clean task is used to clear out the `build/` directory, preventing us
# from having superfluous files and other junk lying around in our repository.

module.exports =
  dev: [
    'build/**/*'
    '!build/index.html'
    '!build/.gitignore'
    '!build/.lock'
  ]
