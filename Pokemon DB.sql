create database pokedex_db;
use pokedex_db;

create table Usuario (
id int primary key not null,
nombre_completo varchar(100),
tipo_documento varchar(50),
documento_num varchar (50),
correo varchar(100) unique,
passwor varchar(100),
pais varchar(50),
ciudad varchar(50),
fecha_regustro date 
);

create table Mochila (
id int primary key auto_increment not null,
pokemon_id int,
nombre varchar(100),
imagen varchar(50),
tipo varchar(50),
experiencia_base int,
es_favorito boolean default false,
usuario_id int,
foreign key (usuario_id) references Usuario (id)


);