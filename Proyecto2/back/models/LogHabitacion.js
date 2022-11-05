const { Schema, model } = require('mongoose')

const logHabitacionesSchema = new Schema({
    idHabitacion: Number,
    timestampx: Date,
    statusx: String,
    Habitacion: Number
});

const LogHabitaciones = model('LogHabitaciones', logHabitacionesSchema);

module.exports = LogHabitaciones