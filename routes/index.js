var express = require("express");
var Router = express.Router();
var braintree = require('braintree');
var models = require('../models');
//braintree
//xlimitlessskiesx@gmail.com:bt123456
var gateway = braintree.connect({
  environment: braintree.Environment.Sandbox,
  merchantId: "7d5q39q8nb39m3vy",
  publicKey: "xbys5mthfxkkfvym",
  privateKey: "fee40178873108d028fe09dcac3c7219"
});


Router.route("/").get(function (req, res) {
    res.render("pages/index");
});
Router.route("/account").get(function (req, res) {
    res.render("pages/account");
});
Router.route("/client_token").get(function (req, res) {
    gateway.clientToken.generate({}, function (err, response) {
        res.send(response.clientToken);
    });
});

Router.get('/charities', function (req, res) {
  models.Charity.findAll().then(function(response) {
    res.render ("pages/charities", {
      allcharities: response
    });
  });
});



//Db routes
Router.route
exports.index = Router;
