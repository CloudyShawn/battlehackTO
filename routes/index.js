var express = require("express");
var Router = express.Router();
Router.route("/").get(function(req,res){
    res.render("pages/index");
});
Router.route("/account").get(function(req,res){
    res.render("pages/account");
});

exports.index = Router;
