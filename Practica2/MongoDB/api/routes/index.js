const router = require('express').Router();

const Habitaciones = require('../models/Habitacion');
const Pacientes = require('../models/Paciente');
const LogHabitaciones = require('../models/LogHabitacion');
const LogActividades = require('../models/LogActividad');

router.get('/', (req, res) => {
    res.json({
        'Curso': 'Bases 2',
        'Año': '2022'
    });
});

router.get('/1a', (req, res) => {
    LogActividades.find({})
        .then((actividades) => {
            res.json({
                'status': 'ok'
            });
        })
        .catch((err) => {
            res.json({
                'status': 'fail'
            });
        })
});

router.get('/1b', (req, res) => { });

router.get('/1c', (req, res) => { });

router.get('/2', (req, res) => { });

router.get('/3', (req, res) => { });

router.get('/4', (req, res) => { });

router.get('/5', (req, res) => { });

router.get('/6', (req, res) => { });

router.get('/7', (req, res) => { });

router.get('/8', (req, res) => { });

module.exports = router;
