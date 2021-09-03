CREATE DATABASE Inf21

go
use Inf21
go

/* Creando tabla Usuario, Categoria y Administrador */

Create table Usuario(
Id char(8) primary key,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Direccion varchar(50),
Localidad varchar(20),
Fecha_nacimiento char(8)
);

Create table Categoria(
Id char(8) primary key,
Nombre varchar(20) not null
);

Create table Administrador(
Id char(8) primary key,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Direccion varchar(50),
);

/* Creando tabla Inscripción con campos para llaves foraneas */

Create table Inscripcion(
Id char(8) primary key,
IdCategoria char(8) not null,
IdUsuario char(8) not null,
IdAdministrador char(8) not null,
Fecha char(8),
CONSTRAINT fk_Categoria FOREIGN KEY (IdCategoria) REFERENCES Categoria (Id),
CONSTRAINT fk_Usuario FOREIGN KEY (IdUsuario) REFERENCES Usuario (Id),
CONSTRAINT fk_Administrador FOREIGN KEY (IdAdministrador) REFERENCES Administrador (Id),
);

/* Creando tabla Preguntas, Respuestas y Respuestas Correctas */

create table Preguntas(
IdPreguntas int primary key,
Preguntas varchar(250)not null,
)

create table Respuestas(
IdRespuestas int,
Respuesta varchar(10),
Estado INT,
)

create table Estado(
IdEstado int,
Estado varchar(30),
)
