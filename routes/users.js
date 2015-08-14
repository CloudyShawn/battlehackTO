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

router.get('/:user_name', function(req, res) {
	var user = models.User.findAll({
		where: {
			id: req.params.user_id
		}
	}).then(function () {
		res.render('pages/index', {
			firstname: user.firstname,
			lastname: user.lastname,
			email: user.email
		});
	});
	
});

module.exports = router;