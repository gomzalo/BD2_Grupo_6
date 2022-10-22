# **Práctica 2**

Realizar carga masiva y consultas, tanto en MySQL y MongoDB.
Analizar los resultados y compararlos.

- [**Práctica 2**](#práctica-2)
  - [Consultas](#consultas)
    - [Backups a realizar](#backups-a-realizar)
    - [Orden de carga y distribución de backups](#orden-de-carga-y-distribución-de-backups)
      - [Archivos de carga para grupos pares](#archivos-de-carga-para-grupos-pares)
  - [**Solución**](#solución)


## Consultas

### Backups a realizar

- Full Backup
- Incremental Backup

### Orden de carga y distribución de backups
#### Archivos de carga para grupos pares

Seguir el orden de carga de los archivos, según el día.

| No. |                             Consulta                                                             |
| --- | ------------------------------------------------------------------------------------------------ |
| 1   | Total de pacientes que llegan a la clínica por edad catalogados por las siguientes categorías    |
| - 1.a | Pediátrico: menores de 18 años    |
| - 1.b | Mediana edad: entre 18 y 60 años    |
| - 1.c | Geriátrico: mayores de 60 años    |
| 2   | Cantidad de pacientes que pasan por cada habitación       |
| 3   | Cantidad de pacientes que llegan a la clínica, agrupados por género |
| 4   | Top 5 edades más atendidas en la clínica |
| 5   | Top 5 edades menos atendidas en la clínica   |
| 6   | Top 5 habitaciones más utilizadas   |
| 7   | Top 5 habitaciones menos utilizadas   |
| 8   | Día con más pacientes en la clínica   |


## **Solución**

- [MySQL](<MySQL/>)
- [MongoDB](<MongoDB/>)
- [Análisis](<Analisis.md>)
