// Dependencies
// -----------------------
var gulp       = require('gulp-help')(require('gulp'));
var lesshint   = require('gulp-lesshint');
var less       = require('gulp-less');

// Config
// -----------------------
var AccountLessPath = 'Scouts-en-Gidsen-Vlaanderen/account/resources/';
var loginLessPath   = 'Scouts-en-Gidsen-Vlaanderen/login/resources/';

// Tasks
// -----------------------

// command: gulp login:lint
//
// Lints the less files for coding style issues.
gulp.task('login:lint', 'Lint the account LESS files', function() {
    return gulp.src(loginLessPath + 'less/*.less')
        .pipe(lesshint({ }))
        .pipe(lesshint.reporter());
});

// command: gulp login:generate
//
// Generate the css files for the login theme.
gulp.task('login:generate', 'Generate the css for the login theme', function() {
    return gulp.src(loginLessPath + 'less/*.less')
        .pipe(less({}))
        .pipe(gulp.dest(loginLessPath + 'css'))
});

// command: gulp account lint
//
// Lints the less files for the account theme.
gulp.task('account:lint', 'Lint the account LESS files', function() {
    return gulp.src(AccountLessPath + 'less/*.less')
        .pipe(lesshint({ }))
        .pipe(lesshint.reporter());
});

// command: account:generate
//
// Generate the css files for the account theme.
gulp.task('account:generate', 'Generate the CSS for the account theme', function() {
    return gulp.src(AccountLessPath + 'less/*.less')
        .pipe(less({}))
        .pipe(gulp.dest(loginLessPath + 'css'))
});
