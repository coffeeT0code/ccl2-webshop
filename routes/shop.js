const express = require('express');
const path = require('path');
const itemController = require('../controllers/itemController');
const authenticationService = require("../services/authentication");

const router = express.Router();
router.use(authenticationService.optionalAuthenticateJWT);
router.get('/cart', itemController.getItemsInCart);
router.get('/cart/delete/:cart_id', itemController.deleteItemsFromCart);

// add item controller routes
router.get('/', itemController.getItems);
router.route('/:id')
    .get (itemController.getItem)
    .post(itemController.addItemToCart)


module.exports = router;
