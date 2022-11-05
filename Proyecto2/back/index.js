require('./config/mongo')

const express = require('express');
const app = express();
const cors = require('cors');
const mongo = require('./config/mongo');
const mysql = require('./config/mysql');

// parsing body request
app.use(cors())
app.use(express.json());

// connecting route to database
app.use(function(req, res, next) {
    req.mysql = mysql
    next()
})

mysql.getConnection(function(err) {
    if (err) throw err;
    console.log("Connected to MySQL local DB!");
})

app.listen(3000, (err) => {
    if (err) console.log('Error :c'), process.exit(1);
    console.log('SBD2 - Proyecto 2 - Grupo 6');
});

const rutas = require('./routes/route');

app.use('/', rutas);

module.exports = app;