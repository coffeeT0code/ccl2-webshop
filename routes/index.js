const express = require('express');
const router = express.Router();
const authenticationService = require('../services/authentication');
const userModel = require('../models/userModel');
const {use} = require("bcrypt/promises");
const itemController = require("../controllers/itemController");

router.get('/', itemController.getRandomImagesInCategorys, itemController.getItems, itemController.getIndexData)

// register route
router
    .route('/register')
    .get((req, res) => {
        res.render('register', {title: 'Register'});
    })
    .post((req, res) => {
        // this is what the authentication service receives
        console.log('body: ' + req.body.email);
        userModel
            .createUser(req.body)
            .then((users) => {
                res.redirect('/login');
            })
            .catch((err) => res.sendStatus(500));
    });

// log in the user
router
    .route('/login')
    .get((req, res) => {
        res.render('login', { title: 'Log In' });
    })
    .post((req, res) => {
        // this is what the authentication service receives
        userModel
            .getUsers()
            .then((users) =>
                authenticationService.authenticateUser(req.body, users, res)
            )
            .catch((err) => res.sendStatus(500));
    })

// logout the user
router.get('/logout', (req, res) => {
    res.cookie('accessToken', '', { maxAge: 0 });
    console.log('User logged out')
    res.redirect('/');
});

module.exports = router;