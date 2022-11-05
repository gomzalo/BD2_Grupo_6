const { MongoClient, ServerApiVersion } = require('mongodb');
const uri = "mongodb+srv://g6:g6@practica2.z6oddmz.mongodb.net/?retryWrites=true&w=majority";
const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true, serverApi: ServerApiVersion.v1 });
// client.connect(err => {
//   const database = client.db("clinica");
//   console.log("Conectado a la base de datos");
//   // perform actions on the collection object
// });

module.exports = client;