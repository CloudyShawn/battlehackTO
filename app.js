/**
 * Module dependencies
 */

// load the things we need
var express = require('express'),
    braintree = require('braintree'),
    bodyParser = require('body-parser'),
    morgan = require('morgan'),
    methodOverride = require('method-override'),
    compression = require('compression'),
    api = require(__dirname+'/routes/api'),
    routes = require(__dirname+'/routes'),
    Sequelize = require('sequelize');
    users = require(__dirname+'/routes/users');
    charity = require(__dirname+'/routes/charities');

var sequelize = new Sequelize('rainyday', 'postgres' , 'akshay94', {
    host: 'localhost',
    dialect: 'postgres'
});

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
app.set('view engine', 'ejs');




// index page 
app.use('/', routes.index);
app.use('/api',api.router);
app.use('/users', users);
app.use('/charity', charity);
//app.get('/api/name', api.name);

app.listen(app.get('port'), function () {
    console.log('Express server is listening on port ' + app.get('port'))
});