const db = require('../services/database.js').config


let getIndexData = () => new Promise((resolve, reject) => {
    db.query("SELECT * FROM `Index`", function (err, indexData, fields) {
        if (err) {
            reject(err)
        } else {
            //console.log(indexData)
            resolve(indexData)
        } })
})

module.exports = {
   getIndexData
}