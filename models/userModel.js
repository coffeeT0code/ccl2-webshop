const db = require('../services/database.js').config
const bcrypt = require('bcrypt')

let getUsers = () => new Promise((resolve, reject) => {
    db.query("SELECT * FROM Users", function (err, users, fields) {
        if (err) {
            reject(err)
        } else {
            // console.log(users)
            resolve(users)
        } })
})

// get user with correct id from database using promises
const getUser = (id) =>
    new Promise((resolve, reject) => {
        db.query(
            'SELECT * FROM Users WHERE id = ' + id,
            (err, user, fields) => {
                if (err) {
                    reject(err);
                } else {
                    // console.log(user);
                    resolve(user[0]);
                }
            }
        );
    });

const createUser = (userData) =>
    new Promise(async (resolve, reject) => {
        let pw = await bcrypt.hash(userData.password, 10)
        let sql =
            'INSERT INTO Users ' +
            '(`name`, `surname`, `email`, `password`)' +
            ' VALUES (' +
            db.escape(userData.name) +
            ',' +
            db.escape(userData.surname) +
            ',' +
            db.escape(userData.email) +
            ',' +
            db.escape(pw) +
            ')';

        // console.log(sql);
        db.query(sql, (err, user, fields) => {
            if (err) {
                reject(err);
            } else {
                // console.log('CREATED: ' + user.affectedRows);
                resolve(userData);
            }
        });
    });


module.exports = {
    getUsers,
    getUser,
    createUser
}

