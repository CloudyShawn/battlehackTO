var express = require("express");
var Router = express.Router();

Router.route("/user")
    .post(function (req, res) {
        // TODO: Collect information from req, and then call the sequel queries
    });

Router.route("/payment-methods")
    .post(function (req, res) {
        app.post("/payment-methods", function (req, res) {
            var nonce = req.body.payment_method_nonce;
            // Use payment method nonce here
        });
    });
exports.router = Router;