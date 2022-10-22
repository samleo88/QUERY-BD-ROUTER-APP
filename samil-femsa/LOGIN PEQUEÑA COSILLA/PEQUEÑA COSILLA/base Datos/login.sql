/*validar usuarios actuales*/



create database colegio2
go
use database colegio2
go
create table usuarios
(users varchar(25),
passwords varchar(25),
nivel varchar(20)
)
go
create proc _iniciosesion
@users varchar(25),
@passwords varchar(25)
as
select *from  usuarios where
users=@users and passwords=@passwords
go








