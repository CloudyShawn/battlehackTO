var models = require('../models');
var express = require('express');
var router = express.Router();

router.post('/createCharity', function(req, res) {
	models.Charity.create({
		name: req.body.name,
		description: req.body.description
	}).then (function(){
		res.redirect('/charities');
	});
});

router.get('/new', function(req, res) {
	res.render('partials/registration_charity');
});

router.get('/:charity_name', function(req, res) {

	var charityget = function() {
		return models.Charity.findAll({
				where: {
				name: req.params.charity_name
			}});
	}


	charityget().then(function(response) {
		res.render('pages/charity', {
			charname: response[0].name,
			chardesc: response[0].description
		});
	});
});

module.exports = router;