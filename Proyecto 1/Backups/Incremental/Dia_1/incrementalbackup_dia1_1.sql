# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#220921 23:18:07 server id 1  end_log_pos 126 CRC32 0x92985823 	Start: binlog v 4, server v 8.0.30 created 220921 23:18:07
BINLOG '
D/ArYw8BAAAAegAAAH4AAAAAAAQAOC4wLjMwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAASNYmJI=
'/*!*/;
# at 126
#220921 23:18:07 server id 1  end_log_pos 157 CRC32 0x9fa3434c 	Previous-GTIDs
# [empty]
# at 157
#220921 23:22:35 server id 1  end_log_pos 234 CRC32 0xbc4448c4 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=no	original_committed_timestamp=1663824155169078	immediate_commit_timestamp=1663824155169078	transaction_length=199
# original_commit_timestamp=1663824155169078 (2022-09-21 23:22:35.169078 Central America Standard Time)
# immediate_commit_timestamp=1663824155169078 (2022-09-21 23:22:35.169078 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824155169078*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 234
#220921 23:22:35 server id 1  end_log_pos 356 CRC32 0x18d7e9f2 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 187
SET TIMESTAMP=1663824155/*!*/;
SET @@session.pseudo_thread_id=9/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1075838976/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=255/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
DROP DATABASE DB_CMEDICO
/*!*/;
# at 356
#220921 23:24:42 server id 1  end_log_pos 433 CRC32 0xb31d624f 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=no	original_committed_timestamp=1663824282331962	immediate_commit_timestamp=1663824282331962	transaction_length=246
# original_commit_timestamp=1663824282331962 (2022-09-21 23:24:42.331962 Central America Standard Time)
# immediate_commit_timestamp=1663824282331962 (2022-09-21 23:24:42.331962 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824282331962*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 433
#220921 23:24:42 server id 1  end_log_pos 602 CRC32 0x99425b0c 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 193
SET TIMESTAMP=1663824282/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE DB_CMEDICO
CHARACTER SET utf8
COLLATE utf8_general_ci
/*!*/;
# at 602
#220921 23:25:30 server id 1  end_log_pos 681 CRC32 0xdbaa3e78 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=no	original_committed_timestamp=1663824330597852	immediate_commit_timestamp=1663824330597852	transaction_length=310
# original_commit_timestamp=1663824330597852 (2022-09-21 23:25:30.597852 Central America Standard Time)
# immediate_commit_timestamp=1663824330597852 (2022-09-21 23:25:30.597852 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824330597852*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 681
#220921 23:25:30 server id 1  end_log_pos 912 CRC32 0xd36166cb 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 230
use `db_cmedico`/*!*/;
SET TIMESTAMP=1663824330/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE PACIENTE (
	idPaciente INT,
    edad INT,
    genero VARCHAR(20),
    CONSTRAINT pk_paciente PRIMARY KEY(idPaciente)
)
/*!*/;
# at 912
#220921 23:25:30 server id 1  end_log_pos 991 CRC32 0x2653fe51 	Anonymous_GTID	last_committed=3	sequence_number=4	rbr_only=no	original_committed_timestamp=1663824330615609	immediate_commit_timestamp=1663824330615609	transaction_length=309
# original_commit_timestamp=1663824330615609 (2022-09-21 23:25:30.615609 Central America Standard Time)
# immediate_commit_timestamp=1663824330615609 (2022-09-21 23:25:30.615609 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824330615609*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 991
#220921 23:25:30 server id 1  end_log_pos 1221 CRC32 0xc4da658d 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 231
SET TIMESTAMP=1663824330/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE HABITACION (
	idHabitacion INT,
    habitacion VARCHAR(50),
    CONSTRAINT pk_habitacion PRIMARY KEY (idHabitacion)
)
/*!*/;
# at 1221
#220921 23:25:30 server id 1  end_log_pos 1300 CRC32 0x3024d8d0 	Anonymous_GTID	last_committed=4	sequence_number=5	rbr_only=no	original_committed_timestamp=1663824330647488	immediate_commit_timestamp=1663824330647488	transaction_length=482
# original_commit_timestamp=1663824330647488 (2022-09-21 23:25:30.647488 Central America Standard Time)
# immediate_commit_timestamp=1663824330647488 (2022-09-21 23:25:30.647488 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824330647488*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1300
#220921 23:25:30 server id 1  end_log_pos 1703 CRC32 0xb0c4b716 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 232
SET TIMESTAMP=1663824330/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE LOG_HABITACION (
	id_log_habitacion INT AUTO_INCREMENT,
	timestampx VARCHAR(100),
    statusx VARCHAR(45),
    idHabitacion INT,
    CONSTRAINT pk_loghabitacion PRIMARY KEY (id_log_habitacion),
    CONSTRAINT fk_habitacionlog FOREIGN KEY (idHabitacion) REFERENCES HABITACION(idHabitacion)
)
/*!*/;
# at 1703
#220921 23:25:30 server id 1  end_log_pos 1782 CRC32 0x13900489 	Anonymous_GTID	last_committed=5	sequence_number=6	rbr_only=no	original_committed_timestamp=1663824330684932	immediate_commit_timestamp=1663824330684932	transaction_length=604
# original_commit_timestamp=1663824330684932 (2022-09-21 23:25:30.684932 Central America Standard Time)
# immediate_commit_timestamp=1663824330684932 (2022-09-21 23:25:30.684932 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824330684932*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1782
#220921 23:25:30 server id 1  end_log_pos 2307 CRC32 0x4a573adf 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 233
SET TIMESTAMP=1663824330/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE LOG_ACTIVIDAD (
	id_log_actividad INT AUTO_INCREMENT,
    timestampx VARCHAR(100),
    actividad VARCHAR(500),
    idPaciente INT,
    idHabitacion INT,
    CONSTRAINT pk_logactividad PRIMARY KEY (id_log_actividad),
    CONSTRAINT fk_pacienteactividad FOREIGN KEY (idPaciente) REFERENCES PACIENTE(idPaciente),
    CONSTRAINT fk_habitacionactividad FOREIGN KEY (idHabitacion) REFERENCES HABITACION(idHabitacion)
)
/*!*/;
# at 2307
#220921 22:44:42 server id 1  end_log_pos 2393 CRC32 0x0b358491 	Anonymous_GTID	last_committed=6	sequence_number=7	rbr_only=yes	original_committed_timestamp=1663821882371011	immediate_commit_timestamp=1663824343333083	transaction_length=708
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1663821882371011 (2022-09-21 22:44:42.371011 Central America Standard Time)
# immediate_commit_timestamp=1663824343333083 (2022-09-21 23:25:43.333083 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663821882371011*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 2393
#220921 22:44:42 server id 1  end_log_pos 2474 CRC32 0x81d0c7d9 	Query	thread_id=9	exec_time=2461	error_code=0
SET TIMESTAMP=1663821882/*!*/;
SET @@session.sql_mode=1076363264/*!*/;
BEGIN
/*!*/;
# at 2474
#220921 22:44:42 server id 1  end_log_pos 2542 CRC32 0xeee749b8 	Table_map: `db_cmedico`.`habitacion` mapped to number 114
# at 2542
#220921 22:44:42 server id 1  end_log_pos 2984 CRC32 0xf38b94e0 	Write_rows: table id 114 flags: STMT_END_F

BINLOG '
OugrYxMBAAAARAAAAO4JAAAAAHIAAAAAAAEACmRiX2NtZWRpY28ACmhhYml0YWNpb24AAgMPApYA
AgEBAAIBIbhJ5+4=
OugrYx4BAAAAugEAAKgLAAAAAHIAAAAAAAEAAgAC/wABAAAAE1NhbGEgZGUgZXhhbWVuZXMgMQ0A
AgAAABNTYWxhIGRlIGV4YW1lbmVzIDINAAMAAAATU2FsYSBkZSBleGFtZW5lcyAzDQAEAAAAE1Nh
bGEgZGUgZXhhbWVuZXMgNA0ABQAAABNTYWxhIGRlIGltYWdlbmVzIDENAAYAAAAZU2FsYSBkZSBw
cm9jZWRpbWllbnRvcyAxDQAHAAAAGVNhbGEgZGUgcHJvY2VkaW1pZW50b3MgMg0ACAAAABlTYWxh
IGRlIHByb2NlZGltaWVudG9zIDMNAAkAAAAZU2FsYSBkZSBwcm9jZWRpbWllbnRvcyA0DQAKAAAA
ClJlY2VwY2lvbg0ACwAAAAxMYWJvcmF0b3Jpbw0ADAAAABlFc3RhY2nDs24gZGUgcmV2aXNpw7Nu
IDENAA0AAAAZRXN0YWNpw7NuIGRlIHJldmlzacOzbiAyDQAOAAAAGUVzdGFjacOzbiBkZSByZXZp
c2nDs24gMw0ADwAAABlFc3RhY2nDs24gZGUgcmV2aXNpw7NuIDQN4JSL8w==
'/*!*/;
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=1
###   @2='Sala de examenes 1\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=2
###   @2='Sala de examenes 2\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=3
###   @2='Sala de examenes 3\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=4
###   @2='Sala de examenes 4\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=5
###   @2='Sala de imagenes 1\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=6
###   @2='Sala de procedimientos 1\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=7
###   @2='Sala de procedimientos 2\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=8
###   @2='Sala de procedimientos 3\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=9
###   @2='Sala de procedimientos 4\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=10
###   @2='Recepcion\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=11
###   @2='Laboratorio\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=12
###   @2='Estación de revisión 1\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=13
###   @2='Estación de revisión 2\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=14
###   @2='Estación de revisión 3\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=15
###   @2='Estación de revisión 4\r'
# at 2984
#220921 22:44:42 server id 1  end_log_pos 3015 CRC32 0xfdd2b2c5 	Xid = 268
COMMIT/*!*/;
# at 3015
#220921 22:48:58 server id 1  end_log_pos 3099 CRC32 0x4bafe7c8 	Anonymous_GTID	last_committed=7	sequence_number=8	rbr_only=no	original_committed_timestamp=1663822138111522	immediate_commit_timestamp=1663824343348378	transaction_length=206
# original_commit_timestamp=1663822138111522 (2022-09-21 22:48:58.111522 Central America Standard Time)
# immediate_commit_timestamp=1663824343348378 (2022-09-21 23:25:43.348378 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663822138111522*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3099
#220921 22:48:58 server id 1  end_log_pos 3221 CRC32 0x94125ad5 	Query	thread_id=9	exec_time=2205	error_code=0	Xid = 275
SET TIMESTAMP=1663822138/*!*/;
SET @@session.sql_mode=1075838976/*!*/;
DROP DATABASE DB_CMEDICO
/*!*/;
# at 3221
#220921 22:50:08 server id 1  end_log_pos 3307 CRC32 0xdf64b953 	Anonymous_GTID	last_committed=8	sequence_number=9	rbr_only=no	original_committed_timestamp=1663822208581314	immediate_commit_timestamp=1663824343364812	transaction_length=255
# original_commit_timestamp=1663822208581314 (2022-09-21 22:50:08.581314 Central America Standard Time)
# immediate_commit_timestamp=1663824343364812 (2022-09-21 23:25:43.364812 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663822208581314*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3307
#220921 22:50:08 server id 1  end_log_pos 3476 CRC32 0xff59df42 	Query	thread_id=9	exec_time=2135	error_code=0	Xid = 283
SET TIMESTAMP=1663822208/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE DB_CMEDICO
CHARACTER SET utf8
COLLATE utf8_general_ci
/*!*/;
# at 3476
#220921 23:26:43 server id 1  end_log_pos 3553 CRC32 0x06ee033f 	Anonymous_GTID	last_committed=9	sequence_number=10	rbr_only=no	original_committed_timestamp=1663824403836423	immediate_commit_timestamp=1663824403836423	transaction_length=199
# original_commit_timestamp=1663824403836423 (2022-09-21 23:26:43.836423 Central America Standard Time)
# immediate_commit_timestamp=1663824403836423 (2022-09-21 23:26:43.836423 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824403836423*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3553
#220921 23:26:43 server id 1  end_log_pos 3675 CRC32 0x1b491e2c 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 303
SET TIMESTAMP=1663824403/*!*/;
DROP DATABASE DB_CMEDICO
/*!*/;
# at 3675
#220921 23:26:43 server id 1  end_log_pos 3752 CRC32 0x3ac8de51 	Anonymous_GTID	last_committed=10	sequence_number=11	rbr_only=no	original_committed_timestamp=1663824403841584	immediate_commit_timestamp=1663824403841584	transaction_length=246
# original_commit_timestamp=1663824403841584 (2022-09-21 23:26:43.841584 Central America Standard Time)
# immediate_commit_timestamp=1663824403841584 (2022-09-21 23:26:43.841584 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824403841584*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 3752
#220921 23:26:43 server id 1  end_log_pos 3921 CRC32 0x8f256d57 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 304
SET TIMESTAMP=1663824403/*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE DB_CMEDICO
CHARACTER SET utf8
COLLATE utf8_general_ci
/*!*/;
# at 3921
#220921 23:26:49 server id 1  end_log_pos 4000 CRC32 0x395275ce 	Anonymous_GTID	last_committed=11	sequence_number=12	rbr_only=no	original_committed_timestamp=1663824409671863	immediate_commit_timestamp=1663824409671863	transaction_length=310
# original_commit_timestamp=1663824409671863 (2022-09-21 23:26:49.671863 Central America Standard Time)
# immediate_commit_timestamp=1663824409671863 (2022-09-21 23:26:49.671863 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824409671863*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4000
#220921 23:26:49 server id 1  end_log_pos 4231 CRC32 0x3714e50d 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 309
use `db_cmedico`/*!*/;
SET TIMESTAMP=1663824409/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE PACIENTE (
	idPaciente INT,
    edad INT,
    genero VARCHAR(20),
    CONSTRAINT pk_paciente PRIMARY KEY(idPaciente)
)
/*!*/;
# at 4231
#220921 23:26:49 server id 1  end_log_pos 4310 CRC32 0x09543e23 	Anonymous_GTID	last_committed=12	sequence_number=13	rbr_only=no	original_committed_timestamp=1663824409688205	immediate_commit_timestamp=1663824409688205	transaction_length=309
# original_commit_timestamp=1663824409688205 (2022-09-21 23:26:49.688205 Central America Standard Time)
# immediate_commit_timestamp=1663824409688205 (2022-09-21 23:26:49.688205 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824409688205*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4310
#220921 23:26:49 server id 1  end_log_pos 4540 CRC32 0x3dd83ce1 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 310
SET TIMESTAMP=1663824409/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE HABITACION (
	idHabitacion INT,
    habitacion VARCHAR(50),
    CONSTRAINT pk_habitacion PRIMARY KEY (idHabitacion)
)
/*!*/;
# at 4540
#220921 23:26:49 server id 1  end_log_pos 4619 CRC32 0x42f12258 	Anonymous_GTID	last_committed=13	sequence_number=14	rbr_only=no	original_committed_timestamp=1663824409713687	immediate_commit_timestamp=1663824409713687	transaction_length=482
# original_commit_timestamp=1663824409713687 (2022-09-21 23:26:49.713687 Central America Standard Time)
# immediate_commit_timestamp=1663824409713687 (2022-09-21 23:26:49.713687 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824409713687*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 4619
#220921 23:26:49 server id 1  end_log_pos 5022 CRC32 0xa6c5d38a 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 311
SET TIMESTAMP=1663824409/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE LOG_HABITACION (
	id_log_habitacion INT AUTO_INCREMENT,
	timestampx VARCHAR(100),
    statusx VARCHAR(45),
    idHabitacion INT,
    CONSTRAINT pk_loghabitacion PRIMARY KEY (id_log_habitacion),
    CONSTRAINT fk_habitacionlog FOREIGN KEY (idHabitacion) REFERENCES HABITACION(idHabitacion)
)
/*!*/;
# at 5022
#220921 23:26:49 server id 1  end_log_pos 5101 CRC32 0x44bdf2aa 	Anonymous_GTID	last_committed=14	sequence_number=15	rbr_only=no	original_committed_timestamp=1663824409743781	immediate_commit_timestamp=1663824409743781	transaction_length=604
# original_commit_timestamp=1663824409743781 (2022-09-21 23:26:49.743781 Central America Standard Time)
# immediate_commit_timestamp=1663824409743781 (2022-09-21 23:26:49.743781 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824409743781*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5101
#220921 23:26:49 server id 1  end_log_pos 5626 CRC32 0x4e038a39 	Query	thread_id=9	exec_time=0	error_code=0	Xid = 312
SET TIMESTAMP=1663824409/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE LOG_ACTIVIDAD (
	id_log_actividad INT AUTO_INCREMENT,
    timestampx VARCHAR(100),
    actividad VARCHAR(500),
    idPaciente INT,
    idHabitacion INT,
    CONSTRAINT pk_logactividad PRIMARY KEY (id_log_actividad),
    CONSTRAINT fk_pacienteactividad FOREIGN KEY (idPaciente) REFERENCES PACIENTE(idPaciente),
    CONSTRAINT fk_habitacionactividad FOREIGN KEY (idHabitacion) REFERENCES HABITACION(idHabitacion)
)
/*!*/;
# at 5626
#220921 23:28:07 server id 1  end_log_pos 5705 CRC32 0xc9f562f4 	Anonymous_GTID	last_committed=15	sequence_number=16	rbr_only=yes	original_committed_timestamp=1663824487994038	immediate_commit_timestamp=1663824487994038	transaction_length=703
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1663824487994038 (2022-09-21 23:28:07.994038 Central America Standard Time)
# immediate_commit_timestamp=1663824487994038 (2022-09-21 23:28:07.994038 Central America Standard Time)
/*!80001 SET @@session.original_commit_timestamp=1663824487994038*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 5705
#220921 23:28:07 server id 1  end_log_pos 5788 CRC32 0xdb56b0d8 	Query	thread_id=9	exec_time=0	error_code=0
SET TIMESTAMP=1663824487/*!*/;
BEGIN
/*!*/;
# at 5788
#220921 23:28:07 server id 1  end_log_pos 5856 CRC32 0xd3e4f3e4 	Table_map: `db_cmedico`.`habitacion` mapped to number 117
# at 5856
#220921 23:28:07 server id 1  end_log_pos 6298 CRC32 0x6c89e28c 	Write_rows: table id 117 flags: STMT_END_F

BINLOG '
Z/IrYxMBAAAARAAAAOAWAAAAAHUAAAAAAAMACmRiX2NtZWRpY28ACmhhYml0YWNpb24AAgMPApYA
AgEBAAIBIeTz5NM=
Z/IrYx4BAAAAugEAAJoYAAAAAHUAAAAAAAEAAgAC/wABAAAAE1NhbGEgZGUgZXhhbWVuZXMgMQ0A
AgAAABNTYWxhIGRlIGV4YW1lbmVzIDINAAMAAAATU2FsYSBkZSBleGFtZW5lcyAzDQAEAAAAE1Nh
bGEgZGUgZXhhbWVuZXMgNA0ABQAAABNTYWxhIGRlIGltYWdlbmVzIDENAAYAAAAZU2FsYSBkZSBw
cm9jZWRpbWllbnRvcyAxDQAHAAAAGVNhbGEgZGUgcHJvY2VkaW1pZW50b3MgMg0ACAAAABlTYWxh
IGRlIHByb2NlZGltaWVudG9zIDMNAAkAAAAZU2FsYSBkZSBwcm9jZWRpbWllbnRvcyA0DQAKAAAA
ClJlY2VwY2lvbg0ACwAAAAxMYWJvcmF0b3Jpbw0ADAAAABlFc3RhY2nDs24gZGUgcmV2aXNpw7Nu
IDENAA0AAAAZRXN0YWNpw7NuIGRlIHJldmlzacOzbiAyDQAOAAAAGUVzdGFjacOzbiBkZSByZXZp
c2nDs24gMw0ADwAAABlFc3RhY2nDs24gZGUgcmV2aXNpw7NuIDQNjOKJbA==
'/*!*/;
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=1
###   @2='Sala de examenes 1\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=2
###   @2='Sala de examenes 2\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=3
###   @2='Sala de examenes 3\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=4
###   @2='Sala de examenes 4\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=5
###   @2='Sala de imagenes 1\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=6
###   @2='Sala de procedimientos 1\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=7
###   @2='Sala de procedimientos 2\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=8
###   @2='Sala de procedimientos 3\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=9
###   @2='Sala de procedimientos 4\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=10
###   @2='Recepcion\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=11
###   @2='Laboratorio\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=12
###   @2='Estación de revisión 1\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=13
###   @2='Estación de revisión 2\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=14
###   @2='Estación de revisión 3\r'
### INSERT INTO `db_cmedico`.`habitacion`
### SET
###   @1=15
###   @2='Estación de revisión 4\r'
# at 6298
#220921 23:28:07 server id 1  end_log_pos 6329 CRC32 0xa40fe2fd 	Xid = 428
COMMIT/*!*/;
# at 6329
#220921 23:28:27 server id 1  end_log_pos 6374 CRC32 0x2ad203f1 	Rotate to G10-bin.000040  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
