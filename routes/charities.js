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

// router.get('/:charity_name', function(req, res) {
// 	models.Charity.findAll({
// 		where {
// 			id: req.params
// 		}
// 	})
// });

module.exports = router;