create database Projeto_m4;

use Projeto_m4;

create table Alunos (
Matricula int not null primary key auto_increment,
Nome varchar(50) not null,
Email varchar(60) not null,
Endereço varchar(100) not null,
ID_Turma int not null
);

insert into Alunos (Nome,Email,Endereço,ID_Turma)
values("Gabriel", "gabriel_aluno@gmail.com", "Rocinha", "205");
insert into Alunos (Nome,Email,Endereço,ID_Turma)
values("Carla", "carla_aluna@gmail.com", "Madureira", "204");

create table Turmas (
Numero_da_turma int not null primary key auto_increment,
Curso varchar(30) not null,
Turno varchar(10)
);

insert into Turmas (Curso,Turno)
values("T.I", "Tarde");
insert into Turmas (Curso,Turno)
values("Culinaria", "Manhã");

create table Cursos (
ID int not null primary key auto_increment,
Nome_do_curso varchar(50) not null,
Horario varchar(20),
ID_Turma int not null
Grade varchar(40) not null
);

alter table Cursos
drop ID_Turma;

alter table Cursos
add Quantidade_turmas int not null;

insert into Cursos (Nome_do_curso,Horario,quantidade_turmas,Grade)
values("T.I", "Tarde",5,"4 dias por semana");
insert into Cursos (Nome_do_curso,Horario,quantidade_turmas,Grade)
values("Culinaria", "Manhã", 9,"3 dias por semana");
