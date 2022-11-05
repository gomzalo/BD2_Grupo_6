const { Schema, model } = require('mongoose')

const pacientesSchema = new Schema({
    idPaciente: Number,
    edad: Number,
    genero: String
})

const Pacientes = model('Pacientes', pacientesSchema);

module.exports = Pacientes