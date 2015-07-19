/**
 * Module dependencies
 */

// load the things we need
var express = require('express'),
    bodyParser = require('body-parser'),
    morgan = require('morgan'),
    methodOverride = require('method-override'),
    compression = require('compression'),
    api = require('./routes/api'),
    routes = require('./routes');

var app = express();

/**
 * Configuration
 */
var env = process.env.NODE_ENV || 'development';

// development only
if (env === 'development') {
    //app.use(express.errorHandler());
}

// production only
if (env === 'production') {
    // TODO
}

// all environments
app.set('view engine', 'ejs');
app.use(morgan('dev'));
app.use(bodyParser.urlencoded({
    extended: true
}));

app.use(express.static('public'));


app.set('port', process.env.PORT || 8888);

// set the view engine to ejs
app.set('view engine', 'ejs');

// use res.render to load up an ejs view file

// index page 
app.use('/', routes.index);
//app.get('/api/name', api.name);

// redirect all others to the index (HTML5 history)
//app.get('*', routes.index);


// about page 
app.get('/about', function (req, res) {
    res.render('pages/about');
});

app.listen(app.get('port'), function () {
    console.log('Express server is listening on port ' + app.get('port'))
});