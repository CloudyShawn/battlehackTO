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

router.get('/:user_id', function(req, res) {
	
	var finduser = function() {
		return models.User.findAll({
			where: {
				id: req.params.user_id
			}
		});	
	}
	


	finduser().then(function(response) {
		console.log (response);
		console.log (response[0].firstname);
		console.log (response[0].lastname);
		console.log (response[0].email);
		res.render('pages/index', {
			firstname: response[0].firstname,
			lastname: response[0].lastname,
			email: response[0].email
		});
	});
	
});

module.exports = router;