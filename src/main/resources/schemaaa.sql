--------------------------------------------------------
--  File created - Monday-April-28-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EQUIPOS
--------------------------------------------------------

create table "EQUIPOS" (
   "EQUIPO_ID"     number,
   "NOMBRE_EQUIPO" varchar2(100),
   "DESCRIPCION"   clob
);
--------------------------------------------------------
--  DDL for Table KPIS
--------------------------------------------------------

create table "KPIS" (
   "KPI_ID"         number,
   "USUARIO_ID"     number,
   "NOMBRE_KPI"     varchar2(100),
   "DESCRIPCION"    clob,
   "VALOR_ACTUAL"   number(10,2),
   "META"           number(10,2),
   "FECHA_REGISTRO" timestamp(6)
);
--------------------------------------------------------
--  DDL for Table PROYECTOS
--------------------------------------------------------

create table "PROYECTOS" (
   "PROYECTO_ID"  number,
   "NOMBRE"       varchar2(100),
   "DESCRIPCION"  clob,
   "EQUIPO_ID"    number,
   "FECHA_INICIO" date,
   "FECHA_FIN"    date
);
--------------------------------------------------------
--  DDL for Table SPRINTS
--------------------------------------------------------

create table "SPRINTS" (
   "SPRINT_ID"    number,
   "PROYECTO_ID"  number,
   "NOMBRE"       varchar2(100),
   "FECHA_INICIO" date,
   "FECHA_FIN"    date,
   "ESTADO"       varchar2(20)
);
--------------------------------------------------------
--  DDL for Table SUB_TAREAS
--------------------------------------------------------

create table "SUB_TAREAS" (
   "SUB_TAREA_ID"    number
      generated always as identity minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 start with 1 cache 20 noorder
      nocycle nokeep noscale,
   "TAREA_ID"        number,
   "TITULO"          varchar2(255),
   "DESCRIPCION"     varchar2(1000),
   "ESTADO"          varchar2(50),
   "HORAS_ESTIMADAS" number,
   "HORAS_REALES"    number,
   "FECHA_CREACION"  timestamp(6),
   "DEADLINE"        timestamp(6)
);
--------------------------------------------------------
--  DDL for Table TAREAS
--------------------------------------------------------

create table "TAREAS" (
   "TAREA_ID"           number,
   "PROYECTO_ID"        number,
   "TITULO"             varchar2(100),
   "DESCRIPCION"        clob,
   "ESTADO"             varchar2(20),
   "HORAS_ESTIMADAS"    number(5,2),
   "HORAS_REALES"       number(5,2),
   "FECHA_CREACION"     timestamp(6),
   "EQUIPO_ID"          number,
   "USUARIO_ID"         number,
   "DEADLINE"           date,
   "SPRINT_ID"          number,
   "FECHA_FINALIZACION" timestamp(6)
);
--------------------------------------------------------
--  DDL for Table USUARIOS
--------------------------------------------------------

create table "USUARIOS" (
   "USUARIO_ID"       number,
   "NOMBRE"           varchar2(100),
   "EMAIL"            varchar2(100),
   "ROL"              varchar2(50),
   "EQUIPO_ID"        number,
   "TELEGRAM_CHAT_ID" varchar2(100)
);
insert into equipos (
   equipo_id,
   nombre_equipo
) values ( 1,
           'Team Rocket' );
insert into proyectos (
   proyecto_id,
   nombre,
   equipo_id,
   fecha_inicio,
   fecha_fin
) values ( 1,
           'Toodo Task Manager',
           1,
           to_date('01-APR-25','DD-MON-RR'),
           to_date('30-JUN-25','DD-MON-RR') );
insert into proyectos (
   proyecto_id,
   nombre,
   equipo_id,
   fecha_inicio,
   fecha_fin
) values ( 2,
           'Toodo Task Manager',
           1,
           to_date('01-APR-25','DD-MON-RR'),
           to_date('30-JUN-25','DD-MON-RR') );
insert into proyectos (
   proyecto_id,
   nombre,
   equipo_id,
   fecha_inicio,
   fecha_fin
) values ( 3,
           'Toodo Task Manager',
           1,
           to_date('01-APR-25','DD-MON-RR'),
           to_date('30-JUN-25','DD-MON-RR') );
insert into sprints (
   sprint_id,
   proyecto_id,
   nombre,
   fecha_inicio,
   fecha_fin,
   estado
) values ( 1,
           1,
           'Sprint 1',
           to_date('22-APR-25','DD-MON-RR'),
           to_date('06-MAY-25','DD-MON-RR'),
           'Activo' );
insert into sprints (
   sprint_id,
   proyecto_id,
   nombre,
   fecha_inicio,
   fecha_fin,
   estado
) values ( 2,
           1,
           'Sprint 2',
           to_date('24-MAR-25','DD-MON-RR'),
           to_date('04-APR-25','DD-MON-RR'),
           'Activo' );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 268,
           1,
           'Data Model Validation',
           'completado',
           1,
           1,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           103,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 270,
           1,
           'Acceptance Criteria Story Map Update',
           'completado',
           2,
           1,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           104,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 276,
           1,
           'User ID connection with Telegram',
           'completado',
           2,
           2,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 277,
           1,
           'UML sequence flow diagram',
           'completado',
           2,
           2,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           101,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 278,
           1,
           'Add task as a developer with estimated time',
           'completado',
           1,
           2,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 181,
           1,
           'KPIS Tests ',
           'completado',
           1,
           2,
           to_timestamp('24-APR-25 03.10.30.421000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           100,
           null,
           2,
           to_timestamp('24-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 186,
           1,
           'Render each users KPI',
           'completado',
           4,
           4,
           to_timestamp('07-APR-25 03.30.00.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           103,
           to_date('24-APR-25','DD-MON-RR'),
           2,
           to_timestamp('23-APR-25 06.22.31.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 188,
           1,
           'Tasks assignation functionality',
           'completado',
           4,
           3,
           to_timestamp('07-APR-25 03.30.00.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('22-APR-25','DD-MON-RR'),
           2,
           to_timestamp('20-APR-25 10.33.39.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 191,
           1,
           'Oswaldos KPI queries and endpoints',
           'completado',
           3,
           3,
           to_timestamp('10-APR-25 03.30.00.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           103,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 09.10.44.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 192,
           1,
           'Our KPI queries and endpoints',
           'completado',
           3,
           4,
           to_timestamp('10-APR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           104,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 09.15.32.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 279,
           1,
           'Assign task to current sprint',
           'completado',
           1,
           1,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 280,
           1,
           'Complete task with actual time',
           'completado',
           1,
           1,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           101,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 285,
           1,
           'Display task table for current sprint',
           'In progress',
           1,
           1,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           100,
           to_date('30-APR-25','DD-MON-RR'),
           1,
           null );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 299,
           1,
           'Github Action CICD',
           'completado',
           4,
           5,
           to_timestamp('07-APR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           101,
           to_date('24-APR-25','DD-MON-RR'),
           2,
           to_timestamp('23-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 190,
           1,
           'Task assignation via Telegram',
           'completado',
           3,
           3,
           to_timestamp('07-APR-25 03.30.00.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 07.00.31.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 222,
           1,
           'KPIS Tests TDD',
           'completado',
           4,
           4,
           to_timestamp('10-APR-25 08.00.20.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           100,
           to_date('24-APR-25','DD-MON-RR'),
           2,
           to_timestamp('21-APR-25 03.44.11.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 224,
           1,
           'Subtareas Tests TDD',
           'completado',
           4,
           4,
           to_timestamp('10-APR-25 08.00.20.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           104,
           to_date('22-APR-25','DD-MON-RR'),
           2,
           to_timestamp('21-APR-25 03.09.18.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 354,
           1,
           'Realizar video de demo para Release Version 1',
           'completado',
           1,
           2,
           to_timestamp('24-APR-25 07.22.21.302531000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           null,
           null,
           null );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 287,
           1,
           'DB update from Telegram',
           'completado',
           1,
           2,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           101,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 288,
           1,
           'Design API tests for TDD',
           'completado',
           4,
           4,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           104,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 290,
           1,
           'Public IP available',
           'completado',
           3,
           3,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           100,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 291,
           1,
           'Display status of Kubernetes cluster nodes',
           'completado',
           1,
           1,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           100,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 292,
           1,
           'Fix database deletion',
           'completado',
           1,
           1,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           104,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 193,
           1,
           'Update Story Points Priority',
           'completado',
           1,
           1,
           to_timestamp('17-APR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           104,
           to_date('30-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 227,
           1,
           'KPIs TDD Necesary Endpoints',
           'completado',
           3,
           3,
           to_timestamp('21-APR-25 08.00.10.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           100,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 03.34.42.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 228,
           1,
           'Usuarios TDD Necesary Endpoints',
           'completado',
           3,
           3,
           to_timestamp('21-APR-25 08.00.10.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           103,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 12.03.42.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 229,
           1,
           'Subtareas TDD Necesary Endpoints',
           'completado',
           3,
           4,
           to_timestamp('21-APR-25 08.00.10.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           104,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 04.43.11.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 184,
           1,
           'Confirm if user deletion and SSO will be supported',
           'completado',
           1,
           1,
           to_timestamp('07-APR-25 03.30.00.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           103,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('09-APR-25 04.30.00.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 185,
           1,
           'Create KPIs page and route',
           'completado',
           4,
           4,
           to_timestamp('07-APR-25 03.30.00.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           100,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 08.32.01.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 187,
           1,
           'Roles functionality',
           'pendiente',
           4,
           null,
           to_timestamp('07-APR-25 03.30.00.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('07-MAY-25','DD-MON-RR'),
           2,
           null );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 223,
           1,
           'Usuarios Tests TDD',
           'completado',
           3,
           3,
           to_timestamp('10-APR-25 08.00.20.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           103,
           to_date('22-APR-25','DD-MON-RR'),
           2,
           to_timestamp('21-APR-25 02.43.15.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 183,
           1,
           'Login and logout',
           'en progreso',
           4,
           null,
           to_timestamp('24-APR-25 03.48.02.004071000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           101,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           null );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 189,
           1,
           'Record Delivery video',
           'completado',
           0.5,
           1,
           to_timestamp('07-APR-25 03.30.00.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('24-APR-25','DD-MON-RR'),
           2,
           null );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 225,
           1,
           'Chatbot Tests TDD',
           'completado',
           4,
           4,
           to_timestamp('10-APR-25 08.00.20.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('24-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 11.31.18.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 221,
           1,
           'Tareas Tests TDD',
           'completado',
           4,
           5,
           to_timestamp('10-APR-25 08.00.20.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           101,
           to_date('24-APR-25','DD-MON-RR'),
           2,
           to_timestamp('23-APR-25 07.11.32.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 262,
           1,
           '2FA Cron Job Setup',
           'completado',
           2,
           2,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 289,
           1,
           'Deploy project using OCI, docker and kubernetes',
           'completado',
           4,
           4,
           to_timestamp('24-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           103,
           to_date('03-APR-25','DD-MON-RR'),
           1,
           to_timestamp('02-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 226,
           1,
           'Tareas TDD Necesary Endpoints',
           'completado',
           2,
           3,
           to_timestamp('23-APR-25 08.00.20.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           101,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('23-APR-25 10.31.18.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 230,
           1,
           'Chatbot TDD Necesary Endpoints',
           'completado',
           3,
           3,
           to_timestamp('21-APR-25 08.00.10.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           102,
           to_date('23-APR-25','DD-MON-RR'),
           2,
           to_timestamp('22-APR-25 06.00.56.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into tareas (
   tarea_id,
   proyecto_id,
   titulo,
   estado,
   horas_estimadas,
   horas_reales,
   fecha_creacion,
   equipo_id,
   usuario_id,
   deadline,
   sprint_id,
   fecha_finalizacion
) values ( 306,
           1,
           'Github Repository Restructure',
           'completado',
           2,
           2,
           to_timestamp('25-MAR-25 04.21.20.000000000 PM',
                        'DD-MON-RR HH.MI.SSXFF AM'),
           1,
           103,
           to_date('05-APR-25','DD-MON-RR'),
           1,
           to_timestamp('04-APR-25 08.15.32.000000000 AM',
                        'DD-MON-RR HH.MI.SSXFF AM') );
insert into usuarios (
   usuario_id,
   nombre,
   email,
   rol,
   equipo_id,
   telegram_chat_id
) values ( 104,
           'Miguel Angel Barrientos Ballesteros',
           'A01637150@tec.mx',
           'manager',
           1,
           '100005' );
insert into usuarios (
   usuario_id,
   nombre,
   email,
   rol,
   equipo_id,
   telegram_chat_id
) values ( 101,
           'José María Soto Valenzuela',
           'A01254831@tec.mx',
           'manager',
           1,
           '100002' );
insert into usuarios (
   usuario_id,
   nombre,
   email,
   rol,
   equipo_id,
   telegram_chat_id
) values ( 103,
           'Fernanda Díaz Gutiérrez',
           'A01639572@tec.mx',
           'developer',
           1,
           '100004' );
insert into usuarios (
   usuario_id,
   nombre,
   email,
   rol,
   equipo_id,
   telegram_chat_id
) values ( 102,
           'Cesar Alan Silva Ramos',
           'A01252916@tec.mx',
           'developer',
           1,
           '100003' );
insert into usuarios (
   usuario_id,
   nombre,
   email,
   rol,
   equipo_id,
   telegram_chat_id
) values ( 100,
           'Diego Iván Morales Gallardo',
           'A01643382@tec.mx',
           'developer',
           1,
           '100001' );
--------------------------------------------------------
--  DDL for Index SYS_C0045126
--------------------------------------------------------

create unique index "SYS_C0045126" on
   "EQUIPOS" (
      "EQUIPO_ID"
   );
--------------------------------------------------------
--  DDL for Index SYS_C0045138
--------------------------------------------------------

create unique index "SYS_C0045138" on
   "KPIS" (
      "KPI_ID"
   );
--------------------------------------------------------
--  DDL for Index SYS_C0045129
--------------------------------------------------------

create unique index "SYS_C0045129" on
   "PROYECTOS" (
      "PROYECTO_ID"
   );
--------------------------------------------------------
--  DDL for Index SYS_C0045131
--------------------------------------------------------

create unique index "SYS_C0045131" on
   "SPRINTS" (
      "SPRINT_ID"
   );
--------------------------------------------------------
--  DDL for Index SYS_C0045188
--------------------------------------------------------

create unique index "SYS_C0045188" on
   "SUB_TAREAS" (
      "SUB_TAREA_ID"
   );
--------------------------------------------------------
--  DDL for Index SYS_C0045133
--------------------------------------------------------

create unique index "SYS_C0045133" on
   "TAREAS" (
      "TAREA_ID"
   );
--------------------------------------------------------
--  DDL for Index SYS_C0045127
--------------------------------------------------------

create unique index "SYS_C0045127" on
   "USUARIOS" (
      "USUARIO_ID"
   );
--------------------------------------------------------
--  DDL for Trigger BI_TAREAS
--------------------------------------------------------

create or replace editionable trigger "BI_TAREAS" before
   insert on tareas
   for each row
begin
   if :new.tarea_id is null then
      select seq_tareas.nextval
        into :new.tarea_id
        from dual;
   end if;
end;

alter trigger "BI_TAREAS" enable;
--------------------------------------------------------
--  Constraints for Table EQUIPOS
--------------------------------------------------------

alter table "EQUIPOS" add primary key ( "EQUIPO_ID" )
   using index enable;
--------------------------------------------------------
--  Constraints for Table KPIS
--------------------------------------------------------

alter table "KPIS" add primary key ( "KPI_ID" )
   using index enable;
--------------------------------------------------------
--  Constraints for Table PROYECTOS
--------------------------------------------------------

alter table "PROYECTOS" add primary key ( "PROYECTO_ID" )
   using index enable;
--------------------------------------------------------
--  Constraints for Table SPRINTS
--------------------------------------------------------

alter table "SPRINTS" add primary key ( "SPRINT_ID" )
   using index enable;
--------------------------------------------------------
--  Constraints for Table SUB_TAREAS
--------------------------------------------------------

  --ALTER TABLE "SUB_TAREAS" MODIFY ("SUB_TAREA_ID" NOT NULL ENABLE);
alter table "SUB_TAREAS" modify (
   "TAREA_ID" not null enable
);
alter table "SUB_TAREAS" add primary key ( "SUB_TAREA_ID" )
   using index enable;
--------------------------------------------------------
--  Constraints for Table TAREAS
--------------------------------------------------------

alter table "TAREAS" add primary key ( "TAREA_ID" )
   using index enable;
--------------------------------------------------------
--  Constraints for Table USUARIOS
--------------------------------------------------------

alter table "USUARIOS" add primary key ( "USUARIO_ID" )
   using index enable;
--------------------------------------------------------
--  Ref Constraints for Table KPIS
--------------------------------------------------------

alter table "KPIS"
   add constraint "FK_KPI_USUARIO"
      foreign key ( "USUARIO_ID" )
         references "USUARIOS" ( "USUARIO_ID" )
      enable;
--------------------------------------------------------
--  Ref Constraints for Table PROYECTOS
--------------------------------------------------------

alter table "PROYECTOS"
   add constraint "FK_PROYECTO_EQUIPO"
      foreign key ( "EQUIPO_ID" )
         references "EQUIPOS" ( "EQUIPO_ID" )
      enable;
--------------------------------------------------------
--  Ref Constraints for Table SPRINTS
--------------------------------------------------------

alter table "SPRINTS"
   add constraint "FK_SPRINT_PROYECTO"
      foreign key ( "PROYECTO_ID" )
         references "PROYECTOS" ( "PROYECTO_ID" )
      enable;
--------------------------------------------------------
--  Ref Constraints for Table SUB_TAREAS
--------------------------------------------------------

alter table "SUB_TAREAS"
   add constraint "FK_TAREA_SUBTAREA"
      foreign key ( "TAREA_ID" )
         references "TAREAS" ( "TAREA_ID" )
      enable;
--------------------------------------------------------
--  Ref Constraints for Table TAREAS
--------------------------------------------------------

alter table "TAREAS"
   add constraint "FK_TAREA_USUARIO"
      foreign key ( "USUARIO_ID" )
         references "USUARIOS" ( "USUARIO_ID" )
      enable;
alter table "TAREAS"
   add constraint "FK_TAREA_PROYECTO"
      foreign key ( "PROYECTO_ID" )
         references "PROYECTOS" ( "PROYECTO_ID" )
      enable;
--------------------------------------------------------
--  Ref Constraints for Table USUARIOS
--------------------------------------------------------

alter table "USUARIOS"
   add constraint "FK_USUARIO_EQUIPO"
      foreign key ( "EQUIPO_ID" )
         references "EQUIPOS" ( "EQUIPO_ID" )
      enable;