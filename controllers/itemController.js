const itemModel = require("../models/itemModel");
const userModel = require("../models/userModel");
const appConfig = require("../services/appConfig")

const authenticationService = require('../services/authentication')
const indexModel = require("../models/indexModel");
const {auth} = require("mysql/lib/protocol/Auth");

function getItems(req, res, next) {
    itemModel.getItems()
        .then(items => res.render('shop', {items, title: 'Shop'}))
        .catch(err => res.sendStatus(500))
}

function getItem(req, res, next) {
    itemModel.getItem(req.params.id)
        .then(item => res.render('item', {item, title: 'Item'}))
        .catch(error => res.sendStatus(500))
}

function getRandomImagesInCategorys(req, res, next) {
    itemModel.getItems()
        .then(items => {
            let randomImageDisplay = [];
            const categoryCount = appConfig.config.categories.length;

            for (let i = 0; i < categoryCount ; i++) {
                randomImageDisplay[i] = []
            }

                items.forEach(item => {
                for (let i = 0; i < categoryCount ; i++) {
                    // console.log(appConfig.config.categories[i])
                    if (item.category === appConfig.config.categories[i]) {
                        randomImageDisplay[i].push(item.img);
                    }
                }
            })
            // console.log(randomImageDisplay)
            indexModel.getIndexData()
                    .then(indexData => {
                        return res.render('index', {items, randomImageDisplay, indexData, title: 'Index'})
                    })
                .catch(err => res.sendStatus(500))
                    })
        .catch(err => res.sendStatus(500))
}

function addItemToCart(req, res, next) {
    itemModel.addItemToCart(req.params.id, req.user.id)
        .then(()=>{
            res.redirect('/shop')
        })
}

function getItemsInCart(req, res, next) {
    if (req.user) {
        itemModel.getItemsInCart(req.params.id, req.user.id)
            .then(itemsInCart => res.render('cart', {itemsInCart, title: 'Cart'}))
            .catch(error => res.status(500).send(error))
    } else {
        res.render('login', { title: 'Log In' })
    }

}
const deleteItemsFromCart = (req, res, next) => {
    itemModel
        .deleteItemFromCart(req.params.cart_id, req.user.id)
        .then((itemsInCart) =>
            res.render('cart', {
                itemsInCart,
                title: 'Cart',
            })
        )
        .catch((error) => res.sendStatus(500));
};

module.exports = {
    getItems,
    getItem,
    addItemToCart,
    getRandomImagesInCategorys,
    getIndexData: indexModel.getIndexData,
    getItemsInCart,
    deleteItemsFromCart
}