# MongoDB

## Total de pacientes que llegan a la clínica por edad catalogados por las siguientes categorías

```
db.log_actividades1.find({ Edad: { $lte: 18 } }).count()
db.log_actividades1.find({ $and:  [ { Edad: { $lte: 18 } }, { Edad: { $gte: 60 } } ] }).count()
db.log_actividades1.find({ Edad: { $gte: 60 } }).count()
```

## Cantidad de pacientes que pasan por cada habitación

```
```

## Cantidad de pacientes que llegan a la clínica, agrupados por género

```
```

## Top 5 edades más atendidas en la clínica

```
```

## Top 5 edades menos atendidas en la clínica

```
```

## Top 5 habitaciones más utilizadas

```
```

## Top 5 habitaciones menos utilizadas

```
```

## Día con más pacientes en la clínica

```
```