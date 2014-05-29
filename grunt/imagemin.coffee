# Image Minification
# Since we're already in the business of optimizing everything for bandwidth, we'll keep that trend up with `imagemin`. This task will take all of the images in the `img/` folder and optimize them using any means available. The resulting files will end up in `build/img/`.

module.exports =
  dev:
    files: [
      expand: true
      cwd: 'source/images/'
      src: '**/*'
      dest: 'build/img/'
    ]