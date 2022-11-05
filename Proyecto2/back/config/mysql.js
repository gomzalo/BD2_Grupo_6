// Mysql connection
const mysql = require('mysql');
module.exports = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'Hola1234',
    database: 'clinica'
});