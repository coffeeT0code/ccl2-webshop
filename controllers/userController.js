const userModel = require("../models/userModel");
const authenticationService = require('../services/authentication')

function getUsers(req, res, next) {
    userModel.getUsers()
        .then(users => res.render('users', {users}))
        .catch(err => res.sendStatus(500))
}

function getUser(req, res, next) {
    userModel.getUser(req.params.id)
        .then(user => res.render('user', {user: req.user, title: 'Your Profile'}))
        .catch(error => res.sendStatus(500))
}

module.exports = {
    getUser,
    getUsers
}