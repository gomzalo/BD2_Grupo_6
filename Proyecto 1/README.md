# **Proyecto 1**

Realizar carga masiva y aplicar dos tipos de backups cada dia.

- [**Proyecto 1**](#proyecto-1)
  - [Carga masiva](#carga-masiva)
    - [Backups a realizar](#backups-a-realizar)
    - [Orden de carga y distribución de backups](#orden-de-carga-y-distribución-de-backups)
      - [Archivos de carga para grupos pares](#archivos-de-carga-para-grupos-pares)
  - [**Solución**](#solución)
    - [**Pasos a seguir**](#pasos-a-seguir)
  - [**Solución a errores en MYSQL**](#solución-a-errores-en-mysql)
    - [**Problema al cargar archivos de datos**](#problema-al-cargar-archivos-de-datos)
    - [**Problema de límite de tamaño en restaurar backup**](#problema-de-límite-de-tamaño-en-restaurar-backup)


## Carga masiva

### Backups a realizar

- Full Backup
- Incremental Backup

### Orden de carga y distribución de backups
#### Archivos de carga para grupos pares

Seguir el orden de carga de los archivos, según el día.

| Día | Archivo         | Full    | Incremental |
| --- | --------------- | ------- | ----------- |
| 1   | Habitaciones    | Marco   | Gonzalo     |
| 2   | Pacientes       | Erick   | Luis        |
| 3   | LogActividades1 | Gonzalo | Marco       |
| 4   | LogActividades2 | Luis    | Erick       |
| 5   | LogHabitacion   | Marco   | Gonzalo     |


## **Solución**

- [Script](<ddl.sql>)
- [Full Backups](<Backups/Full/>)
- [Incremental Backups](<Backups/Incremental/>)
- [Archivos a cargar](<Archivos de carga/CSVInputFiles/>)
- [Análisis](<Analisis.md>)

### **Pasos a seguir**

1. Drop de la base de datos.
2. Creación de la base de datos.
3. Creación de tablas.
4. Restore del día anterior.
5. Carga del archivo .csv, correspondiente al día.
6. Backup correspondiente.

## **Solución a errores en MYSQL**

En el archivo "*C:\ProgramData\MySQL\MySQL Server 8.0\my.ini*".

### **Problema al cargar archivos de datos**

Cambiar valor de variable **secure-file-priv** a cadena vacia.

* **Valor original**: secure-file-priv="C:/ProgramData/MySQL/MySQL Server 8.0/Uploads"

* **Nuevo valor**: secure-file-priv=""

### **Problema de límite de tamaño en restaurar backup**

Cambiar valor de variable **max_allowed_packet** al tamaño deseado.

* **Valor original**: max_allowed_packet=4M

* **Nuevo valor**: max_allowed_packet=64M