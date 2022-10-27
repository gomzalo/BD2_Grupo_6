# MongoDB
Cadena de conexión: 

```sh
mongosh "mongodb+srv://practica2.z6oddmz.mongodb.net/clinica" --apiVersion 1 --username g6 --password g6
```
## 1. Total de pacientes que llegan a la clínica por edad catalogados por las siguientes categorías

- ### a. **Pediátrico**: menores de 18 años

    ```sh
    db.log_actividades_1.find({ Edad: { $lte: 18 } }).count()
    ```

- ### b. **Mediana edad**: entre 18 y 60 años

    ```sh
    db.log_actividades_1.find({ Edad: { $gt: 18, $lte: 60 } }).count()
    ```

- ### c. **Geriátrico**: mayores de 60 años

    ```sh
    db.log_actividades_1.find({ Edad: { $gte: 60 } }).count()
    ```

## 2. Cantidad de pacientes que pasan por cada habitación

```sh
db.log_habitaciones.aggregate([
    { $group:
        { 
            _id: "$idHabitacion",
            count: { $sum: 1 }
        }
    }
])
```
## 3. Cantidad de pacientes que llegan a la clínica, agrupados por género

```sh
db.log_actividades_1.aggregate([
    { $group: { _id: "$Genero", count: { $sum: 1 } } }
])
```

## 4. Top 5 edades más atendidas en la clínica

```sh
db.log_actividades_1.aggregate([
    { $group: { _id: "$Edad", count: { $sum: 1 } } },
    { $sort: { count: -1 } },
    { $limit: 5 }
])
```

## 5. Top 5 edades menos atendidas en la clínica

```sh
db.log_actividades_1.aggregate([
    { $group: { _id: "$Edad", count: { $sum: 1 } } },
    { $sort: { count: 1 } },
    { $limit: 5 }
])
```

## 6. Top 5 habitaciones más utilizadas

```sh
db.log_actividades_1.aggregate([
    { $group: { _id: "$Habitacion", count: { $sum: 1 } } },
    { $sort: { count: -1 } },
    { $limit: 5 }
])
```

## 7. Top 5 habitaciones menos utilizadas

```sh
db.log_actividades_1.aggregate([
    { $group: { _id: "$Habitacion", count: { $sum: 1 } } },
    { $sort: { count: 1 } },
    { $limit: 5 }
])
```

## 8. Día con más pacientes en la clínica

```sh
db.log_actividades_1.aggregate([
    { $group: { _id: "$timestampx", count: { $sum: 1 } } },
    { $sort: { count: -1 } },
    { $limit: 1 }
])
```