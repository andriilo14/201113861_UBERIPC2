create database uber

use uber

create table pasajero(
id_pasajero int primary key not null,
nombre varchar(20) not null,
telefono int not null,
direccion varchar(20) not null,
activo bit not null)

create table conductor(
id_conductor int primary key not null,
nombre varchar(20) not null,
telefono int not null,
direccion varchar(20) not null,
activo bit not null)

create table ruta(
id_ruta int primary key not null,
nombre varchar not null,
id_conductor int not null,
foreign key (id_conductor) references conductor (id_conductor))

create table vehiculo_uber(
id_uber int primary key not null,
modelo varchar not null,
anio int not null,
marca varchar not null,
activo bit not null,
id_ruta int not null,
foreign key (id_ruta) references ruta (id_ruta))

create table tipo_uber(
id_tipo_uber int primary key not null,
nombre varchar not null,
descripcion varchar not null,
id_uber int not null,
foreign key (id_uber) references id_uber (vehiculo_uber))

create table uber_contratado
id_contratacion int primary key not null,
tarifa decimal not null,
id_ruta int not null,
id_uber int not null,
id_pasajero int not null,
id_conductor int not null,
id_tipo_uber int not null,
foreign key (id_ruta) references ruta (id_ruta),
foreign key (id_uber) references vehiculo_uber (id_uber),
foreign key (id_pasajero) references pasajero (id_pasajero),
foreign key (id_conductor) references conductor (id_conductor),
foreign key (id_tipo_uber) references tipo_uber (id_tipo_uber))

create table uber_pagado
id_pago int primary key not null,
tipo varchar not null,
calificacion_conductor int not null,
id_contratacion int not null,
foreign key (id_contratacion) references uber_contratado (id_contratacion))


alter usuario
add column fecha_nacimiento

