require('./mongo')

const express = require('express');
const app = express();
const cors = require('cors');
const client = require('./mongo');

app.use(cors())
app.use(express.json());

// app.use('/', require('./routes/index'))

app.listen(3000, () => {
    console.log('Listening on port 3000');
});

app.get("/1a", (req, res) => {
    client.connect(err => {
        const database = client.db("clinica");
        console.log("Conectado a la base de datos");
        const collection = database.collection("log_actividades");
        collection.aggregate([
        {
        $lookup: {
                from: 'pacientes',
                localField: 'idPaciente',
                foreignField: 'idPaciente',
                as: 'pacientinho'
            }
        }, {
            $unset: 'pacientinho'
        },{
            $group: {
                _id: '$pacientes.genero',
                count: {
                    $sum: 1
                }
            }
        }
        ]).toArray((err, docs) => {
            if(err) {
                return res.status(500).send(err.message);
            }
            res.send(docs);
        });
    });
    client.close();
});


