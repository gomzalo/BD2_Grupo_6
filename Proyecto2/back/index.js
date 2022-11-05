require('./config/mongo')

const express = require('express');
const app = express();
const cors = require('cors');
const mongo = require('./config/mongo');
const mysql = require('./config/mysql');

const Habitaciones = require('../back/models/Habitacion');
const Pacientes = require('../back/models/Paciente');
const LogHabitaciones = require('../back/models/LogHabitacion');
const LogActividades = require('../back/models/LogActividad');
const client = require('./config/mongo');

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

app.get("/1a", (req, res) => {
    client.connect(err => {
        const database = client.db("clinica");
        console.log("Conectado a la base de datos");
        const collection = database.collection("log_actividades");

        const cantidad = collection.find({ Edad: { $lte: 18 } });
        console.log()
        res.send({
            status: 'ok',
            pacientes: cantidad.bufferedCount()
        });
    });
    client.close();
});

app.get('/1b', (req, res) => { 
    client.connect(err => {
        const database = client.db("clinica");
        console.log("Conectado a la base de datos");
        const collection = database.collection("log_actividades");

        const cantidad = collection.find({ Edad: { $gt: 18, $lte: 60 } });
        console.log()
        res.send({
            status: 'ok',
            pacientes: cantidad.bufferedCount()
        });
    });
    client.close();
});

app.get('/1c', (req, res) => { 
    client.connect(err => {
        const database = client.db("clinica");
        console.log("Conectado a la base de datos");
        const collection = database.collection("log_actividades");

        const cantidad = collection.find({ Edad: { $gte: 60 } });
        console.log()
        res.send({
            status: 'ok',
            pacientes: cantidad.bufferedCount()
        });
    });
    client.close();
});

app.get('/2', (req, res) => { });

app.get('/3', (req, res) => { });

app.get('/4', (req, res) => { });

app.get('/5', (req, res) => { });

app.get('/6', (req, res) => { });

app.get('/7', (req, res) => { });

app.get('/8', (req, res) => { });

const rutas = require('./routes/route');

app.use('/', rutas);

module.exports = app;