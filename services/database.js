const mysql = require('mysql');
const secrets = require('../secrets');

const config = mysql.createPool({
    connectionLimit: 1000,
    connectTimeout: 100000,
    acquireTimeout: 100000,
    timeout: 100000,
    host: "localhost",
    port: 3306,
    user: "root",
    password: "",
    database: "cc211005",
});

config.getConnection(function (err, connection) {
    if (err) throw err;
    console.log("connected!");
    // connection.release();
});

module.exports = {config};