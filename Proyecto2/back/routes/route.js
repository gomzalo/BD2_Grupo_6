const express = require('express');
const router = new express.Router();
const controller = require('../controllers/controller');
const Habitaciones = require('../models/Habitacion');
const Pacientes = require('../models/Paciente');
const LogHabitaciones = require('../models/LogHabitacion');
const LogActividades = require('../models/LogActividad');

router.get('/', controller.root);
router.get('/1a', controller.get_1a);
router.get('/1b', controller.get_1b);
router.get('/1c', controller.get_1c);
router.get('/2', controller.get_2);
// router.get('/3', controller.get_3);
// router.get('/4', controller.get_4);
// router.get('/5', controller.get_5);
// router.get('/6', controller.get_6);
// router.get('/7', controller.get_7);
// router.get('/8', controller.get_8);

module.exports = router;