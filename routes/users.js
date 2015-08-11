var models = require('../models');
var express = require('express');
var router = express.Router();

router.post('/create', function(req, res) {
	models.User.create({
	firstname: req.body.firstname,
    lastname: req.body.lastname,
    password: req.body.password,
    email: req.body.email
	}).then(function() {
		res.redirect('/');
	});
});