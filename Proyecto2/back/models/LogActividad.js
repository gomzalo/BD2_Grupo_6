const { Schema, model } = require('mongoose')

const logActividadesSchema = new Schema({
    timestampx: Date,
    actividad: String,
    idHabitacion: Number,
    idPaciente: Number,
});

const LogActividades = model('LogActividades', logActividadesSchema);

module.exports = LogActividades