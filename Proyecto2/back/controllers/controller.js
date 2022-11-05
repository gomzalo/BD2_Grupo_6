module.exports = {
// ::::::::::::::::::::   Consultas    ::::::::::::::::::::
// ***************    root    ***************
    root: (req, res) => {
        res.send('SBD2 - Proyecto 2 - Grupo 6');
    },
// ***************    1.a    ***************
    get_1a: async function (req, res) {
        const query = "SELECT * FROM paciente WHERE idPaciente";
        const result = await mysql.query(query, (err, result) => {
            if (err) {
                console.log(err);
                res.status(500).send(err);
            } else {
                res.status(200).send(result);
            }
        });
    }
}