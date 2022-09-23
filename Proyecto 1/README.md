# Proyecto 1

Realizar carga masiva y aplicar dos tipos de backups cada dia.

## Carga masiva

### Grupo par

1. Habitaciones
2. Pacientes
3. LogActividades1
4. LogActividades2
5. LogHabitacion

## Backups a realizar

- Full Backup
- Incremental Backup

# Solución

- [Script](<ddl.sql>)
- [Full Backups](<Full/>)
- [Incremental Backups](<Incremental/>)
- [Archivos a cargar](<CSVInputFiles/>)


## Solución a error en MYSQL

Cambiar valor de variable **secure-file-priv** a cadena vacia en archivo "*C:\ProgramData\MySQL\MySQL Server 8.0\my.ini*".

Valor original: secure-file-priv="C:/ProgramData/MySQL/MySQL Server 8.0/Uploads"

Nuevo valor: secure-file-priv=""