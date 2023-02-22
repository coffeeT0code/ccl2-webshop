const express = require('express');
const path = require('path');

const userController = require('../controllers/userController')
const userModel = require('../models/userModel');
const authenticationService = require('../services/authentication')

const router = express.Router();
router.use(authenticationService.authenticateJWT);

router.get('/profile', (req, res) => {
    res.render('user', {title: 'Profile', user: req.user})
})

module.exports = router;