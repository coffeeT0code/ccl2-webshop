const db = require('../services/database.js').config
const bcrypt = require('bcrypt')
const {reject} = require("bcrypt/promises");

let getItems = () => new Promise((resolve, reject) => {
    db.query("SELECT * FROM Items", function (err, items, fields) {
        if (err) {
            reject(err)
        } else {
            // console.log(items)
            resolve(items)
        } })
})

// get item with correct id from database using promises
const getItem = (id) =>
    new Promise((resolve, reject) => {
        db.query(
            'SELECT * FROM Items WHERE id = ' + id,
            (err, item, fields) => {
                if (err) {
                    reject(err);
                } else {
                    // console.log(item);
                    resolve(item[0]);
                }
            }
        );
    });

const addItemToCart = (itemData, userData) =>
    new Promise(async (resolve, reject) => {
        let sql =
            'INSERT INTO user_cart ' +
            '(`userID`, `itemID`)' +
            ' VALUES (' +
            db.escape(userData) +
            ',' +
            db.escape(itemData) +
            ')';

        // console.log(sql)

        db.query(sql, (err, item, user) => {
            if (err) {
                reject(err);
            } else {
                // console.log("added to cart")
                resolve(itemData, userData);
            }
        });
    });

let getItemsInCart = (itemData, userData, itemsInCart) =>
    new Promise( async (resolve, reject) => {
        // console.log(userData)
    db.query("SELECT * FROM `user_cart` " +
        "INNER JOIN Items ON Items.id = user_cart.itemID " +
        "INNER JOIN Users ON Users.id = " + userData + " WHERE user_cart.userID = " + userData,
        (err, itemsInCart, fields) => {
        if (err) {
            reject(err)
        } else {
            // console.log(itemsInCart)
            resolve(itemsInCart)
        } })
})

const deleteItemFromCart = (cart_id) =>
    new Promise((resolve, reject) => {
        let sql = 'DELETE FROM `user_cart` WHERE cart_id = ' + cart_id;

        console.log(sql);

        db.query(sql, (err, itemsInCart, fields) => {
            if (err) {
                reject(err);
            } else {
                // console.log('DELETED: ' + itemsInCart.affectedRows);
                resolve(itemsInCart);
            }
        });
    });

module.exports = {
    getItems,
    getItem,
    addItemToCart,
    getItemsInCart,
    deleteItemFromCart
}