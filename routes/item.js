const express = require('express');
const path = require('path');

const itemController = require('../controllers/itemController');
const authenticationService = require("../services/authentication");

const router = express.Router();

// add item controller routes
router.get('/:id', itemController.getItem);

module.exports = router;