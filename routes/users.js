const express = require('express');
const path = require('path');

const userController = require('../controllers/userController');
const authenticationService = require('../services/authentication');
const router = express.Router();

router.use(authenticationService.authenticateJWT);

// add user controller routes
router.get('/', userController.getUsers);
module.exports = router;
