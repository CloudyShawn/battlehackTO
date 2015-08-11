var models = require('../models');
var express = require('express');
var router = express.Router();

router.all('/create', function(req, res) {
	console.log("post started")
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
	var user = User.findAll({
		where: {
			id: req.params.user_id
		}
	});
	res.render('pages/userinfo' {
		firstname: user.firstname,
		lastname: user.lastname,
		email: user.email
	});
});

exports.index = router;