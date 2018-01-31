'use strict';
 
var gulp = require('gulp');
var sass = require('gulp-sass');
var uglify = require('gulp-uglify');
var pump = require('pump');
var gulpCopy = require('gulp-copy');
var cleanCSS = require('gulp-clean-css');
gulp.task('gulp-copy',function(){
  return gulp.src(['bower_components/**/*']).pipe(gulp.dest('Scouts-en-Gidsen-Vlaanderen/login/resources/bower_components/'));

  
  
});
gulp.task('minify-css', function() {
 
  return gulp.src('src/login/css/**/*.css')
    .pipe(cleanCSS({compatibility: 'ie8'}))
    .pipe(gulp.dest('Scouts-en-Gidsen-Vlaanderen/login/resources/css'));
});
gulp.task('sass', function () {
  return gulp.src('src/login/sass/**/*.scss')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('src/login/css'));
});
gulp.task('compress', function (cb) {
  pump([
        gulp.src('src/login/js/**/*.js'),
        uglify(),
        gulp.dest('Scouts-en-Gidsen-Vlaanderen/login/recources/js')
    ],
    cb
  );
});

gulp.task('default', function () {
  gulp.watch('src/login/sass/**/*.scss', ['sass']);
  gulp.watch('src/login/js/**/*.js', ['compress']);
  gulp.watch('src/login/css/**/*.css', ['minify-css']);
  gulp.watch('bower_components/**/*', ['gulp-copy']);
});
