const { Schema, model } = require('mongoose')

const habitacionesSchema = new Schema({
    idHabitacion: Number,
    habitacion: String
})

const Habitaciones = model('Habitaciones', habitacionesSchema);

module.exports = Habitaciones