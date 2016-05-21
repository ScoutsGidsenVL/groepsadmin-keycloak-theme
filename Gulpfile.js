'use strict';

var gulp = require('gulp-help')(require('gulp'));
var sass = require('gulp-sass');

gulp.task('sass', 'Genereer de CSS bestanden', function () {
  return gulp.src('./Scouts-en-Gidsen-Vlaanderen/login/resources/scss/*.scss')
    .pipe(sass.sync().on('error', sass.logError))
    .pipe(gulp.dest('./Scouts-en-Gidsen-Vlaanderen/login/resources/css'));
});

gulp.task('sass:watch', 'SCSS watcher', function () {
  gulp.watch('./Scouts-en-Gidsen-Vlaanderen/login/resources/scss/*.scss', ['sass']);
});
