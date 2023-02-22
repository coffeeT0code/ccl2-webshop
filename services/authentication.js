const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt')
const AUTH_TOKEN_SECRET = require('../secrets').auth_token_secret;

async function checkPassword(password, hash) {
    let pw = await bcrypt.compare(password, hash);
    return pw;
}

async function authenticateUser({email, password}, users, res){
    const user = users.find(u => {
        return u.email === email
    });

    if(user && await checkPassword(password, user.password)) {
        const accessToken = jwt.sign({id: user.id, name: user.name}, AUTH_TOKEN_SECRET);
        console.log(accessToken)
        res.cookie('accessToken', accessToken);
        res.redirect('/');
    } else {
        res.send('Username or Password are incorrect.');
    }
}

const authenticateJWT = (req, res, next) => {

    const token = req.cookies['accessToken'];
    if (token) {

        jwt.verify(token, AUTH_TOKEN_SECRET, (err, user) => {
            if (err) {
                return res.sendStatus(403);
            }
            console.log('authenticate JWT:', user)
            req.user = user;
            next();
        });
    } else {
        res.sendStatus(401);
    }
};

const optionalAuthenticateJWT = (req, res, next) => {

    const token = req.cookies['accessToken'];
    if (token) {
        jwt.verify(token, AUTH_TOKEN_SECRET, (err, user) => {
            if (err) {
                return res.sendStatus(403);
            }
            console.log('optionalauthenticate JWT:', user)
            req.user = user;
            next();
        });
    } else {
        next();
    }
};

module.exports = {
    authenticateUser,
    authenticateJWT,
    optionalAuthenticateJWT
}