module.exports = {
// ::::::::::::::::::::   Consultas    ::::::::::::::::::::
// ***************    root    ***************
    root: (req, res) => {
        res.send('SBD2 - Proyecto 2 - Grupo 6');
    },
// -- 1. Total de pacientes que llegan a la clínica por edad catalogados por las
// siguientes categorías
// ***************    1.a  Pediátrico: menores de 18 años  ***************
    get_1a: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = "SELECT COUNT(*) AS Pediatrico FROM PACIENTE WHERE EDAD <18;";
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {edad:{$lt:18}};
            const result = await mongo.db.collection('paciente').find(query).count();
            res.status(200).send({Pediatrico:result});
        }
    },
// ***************    1.b  Mediana edad: entre 18 y 60 años  ***************
    get_1b: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = "SELECT COUNT(*) AS Mediana_Edad FROM PACIENTE WHERE EDAD >=18 AND EDAD <= 60;";
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {edad:{$gte:18,$lte:60}};
            const result = await mongo.db.collection('paciente').find(query).count();
            res.status(200).send({Mediana_Edad:result});
        }
    },
// ***************    1.c  Geriátrico: mayores de 60 años  ***************
    get_1c: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = "SELECT COUNT(*) AS Geriatico FROM PACIENTE WHERE EDAD >60;";
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {edad:{$gt:60}};
            const result = await mongo.db.collection('paciente').find(query).count();
            res.status(200).send({Mediana_Edad:result});
        }
    },
// ***************    2  Cantidad de pacientes que pasan por cada habitación  ***************
    get_2: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = ```SELECT H.habitacion, COUNT(*) as TotalPacientes 
            FROM LOG_ACTIVIDAD LA, HABITACION H WHERE h.idHabitacion=LA.idHabitacion
            GROUP BY H.habitacion;```;
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {$group:{_id:"$idHabitacion",TotalPacientes:{$sum:1}}};
            const result = await mongo.db.collection('logactividad').aggregate(query).toArray();
            res.status(200).send({Mediana_Edad:result});
        }
    },
// ***************    3  Cantidad de pacientes que llegan a la clínica, agrupados por género  ***************
    get_3: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = ```SELECT genero, COUNT(*) as total FROM PACIENTE
            group by genero;```;
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {$group:{_id:"$genero",total:{$sum:1}}};
            const result = await mongo.db.collection('paciente').aggregate(query).toArray();
            res.status(200).send({Mediana_Edad:result});
        }
    },
// ***************    4  Top 5 edades más atendidas en la clínica  ***************
    get_4: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = ```SELECT COUNT(*) as Total,P.edad
            FROM LOG_ACTIVIDAD LA, PACIENTE P WHERE P.idPaciente=LA.idPaciente
            GROUP BY P.edad 
            ORDER BY total DESC
            limit 5;```;
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {$group:{_id:"$idPaciente",Total:{$sum:1}}};
            const result = await mongo.db.collection('logactividad').aggregate(query).toArray();
            res.status(200).send({Mediana_Edad:result});
        }
    },
// ***************    5  Top 5 edades menos atendidas en la clínica  ***************
    get_5: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = ```SELECT COUNT(*) as Total,P.edad
            FROM LOG_ACTIVIDAD LA, PACIENTE P WHERE P.idPaciente=LA.idPaciente
            GROUP BY P.edad 
            ORDER BY total ASC
            limit 5;```;
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {$group:{_id:"$idPaciente",Total:{$sum:1}}};
            const result = await mongo.db.collection('logactividad').aggregate(query).toArray();
            res.status(200).send({Mediana_Edad:result});
        }
    },
// ***************    6  Top 5 habitaciones más utilizadas  ***************
    get_6: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = ```SELECT H.habitacion, COUNT(*) as Total
            FROM LOG_ACTIVIDAD LA, HABITACION H WHERE h.idHabitacion=LA.idHabitacion
            GROUP BY H.habitacion
            ORDER BY total DESC
            limit 5;
            ```;
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {$group:{_id:"$idHabitacion",Total:{$sum:1}}};
            const result = await mongo.db.collection('logactividad').aggregate(query).toArray();
            res.status(200).send({Mediana_Edad:result});
        }
    },
// ***************    7  Top 5 habitaciones menos utilizadas  ***************
    get_7: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = ```SELECT H.habitacion, COUNT(*) as Total
            FROM LOG_ACTIVIDAD LA, HABITACION H WHERE h.idHabitacion=LA.idHabitacion
            GROUP BY H.habitacion
            ORDER BY total ASC
            limit 5;```;
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {$group:{_id:"$idHabitacion",Total:{$sum:1}}};
            const result = await mongo.db.collection('logactividad').aggregate(query).toArray();
            res.status(200).send({Mediana_Edad:result});
        }
    },
// ***************    8  Día con más pacientes en la clínica  ***************
    get_8: async function (req, res) {
        data = req.body;
        if(data.typebd == 'mysql'){
            const query = ```SELECT timestampx, COUNT(idPaciente) AS NO_PACIENTE FROM log_actividad
            GROUP BY timestampx ORDER BY NO_PACIENTE DESC LIMIT 1;```;
            const result = await mysql.query(query, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(500).send(err);
                } else {
                    res.status(200).send(result);
                }
            });
        }else{
            //MongoDB
            const query = {$group:{_id:"$timestampx",Total:{$sum:1}}};
            const result = await mongo.db.collection('logactividad').aggregate(query).toArray();
            res.status(200).send({Mediana_Edad:result});
        }
    }
}