gulp = require 'gulp'
mocha = require 'gulp-mocha'
coffeelint = require 'gulp-coffeelint'

paths =
  tests: 'test.coffee'
  scripts: [
    './*.coffee'
  ]

gulp.task 'test', ['lint:tests'], ->
  gulp.src paths.tests
  .pipe mocha()
  .once 'end', -> process.exit()

gulp.task 'lint:scripts', ->
  gulp.src paths.scripts
    .pipe coffeelint()
    .pipe coffeelint.reporter()

gulp.task 'lint:tests', ->
  gulp.src paths.tests
    .pipe coffeelint()
    .pipe coffeelint.reporter()
