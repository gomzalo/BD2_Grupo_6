# MongoDB

## 1. Total de pacientes que llegan a la clínica por edad catalogados por las siguientes categorías

```mongodb
db.log_actividades_1.find({ Edad: { $lte: 18 } }).count()
db.log_actividades_1.find({ $and:  [ { Edad: { $lte: 18 } }, { Edad: { $gte: 60 } } ] }).count()
db.log_actividades_1.find({ Edad: { $gte: 60 } }).count()
```

## 2. Cantidad de pacientes que pasan por cada habitación

```
db.log_actividades_1.aggregate([
    { $group: { _id: "$Habitacion", count: { $sum: 1 } } }
])
```

## 3. Cantidad de pacientes que llegan a la clínica, agrupados por género

```
db.log_actividades_1.aggregate([
    { $group: { _id: "$Genero", count: { $sum: 1 } } }
])
```

## 4. Top 5 edades más atendidas en la clínica

```
db.log_actividades_1.aggregate([
    { $group: { _id: "$Edad", count: { $sum: 1 } } },
    { $sort: { count: -1 } },
    { $limit: 5 }
])
```

## 5. Top 5 edades menos atendidas en la clínica

```
db.log_actividades_1.aggregate([
    { $group: { _id: "$Edad", count: { $sum: 1 } } },
    { $sort: { count: 1 } },
    { $limit: 5 }
])
```

## 6. Top 5 habitaciones más utilizadas

```
db.log_actividades_1.aggregate([
    { $group: { _id: "$Habitacion", count: { $sum: 1 } } },
    { $sort: { count: -1 } },
    { $limit: 5 }
])
```

## 7. Top 5 habitaciones menos utilizadas

```
db.log_actividades_1.aggregate([
    { $group: { _id: "$Habitacion", count: { $sum: 1 } } },
    { $sort: { count: 1 } },
    { $limit: 5 }
])
```

## 8. Día con más pacientes en la clínica

```
db.log_actividades_1.aggregate([
    { $group: { _id: "$Fecha", count: { $sum: 1 } } },
    { $sort: { count: -1 } },
    { $limit: 1 }
])
```