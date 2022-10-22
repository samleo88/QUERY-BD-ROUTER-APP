USE[Bavaria]
DECLARE @FechaInicio Datetime
DECLARE @FechaFin Datetime

Set @FechaInicio='2020-06-01 00:00:00'
Set @FechaFin='2020-06-23 23:59:58'

----ZONA Y CEDULA-------
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
Zona.DescripcionZona ,
preguntalistachequeo.textopregunta,
DetalleListaChequeo.Observaion,
CONVERT(varchar,EncabezadoListaDeChequeo.Fecha,3) as [DIA]
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=28
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

------pregunta medio de transporte---------------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=1
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

----------- pregunta porque utilizo este medio de transporte---------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
--CONVERT(varchar,EncabezadoListaDeChequeo.Fecha,3) as [DIA]
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=2
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

--------KILOMETRAJE-------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
preguntalistachequeo.textopregunta,
DetalleListaChequeo.Observaion
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=3
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

-------PLACA-----

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
preguntalistachequeo.textopregunta,
DetalleListaChequeo.Observaion
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=4
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

------LUCES DELANTERAS-----
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=5
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

-------LUCES TRASERAS---------
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=6
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

----LUCES TABLERO-------
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=7
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

------LUCES DIRECCIONALES---------------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=8
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

----------- LUCES STOP---------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=9
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

--------ACEITE MOTOR-------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=10
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

-------GASOLINA-----

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=11
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

------LIQUIDO FRENOS-----
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=12
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

-------LIQUIDO REFIGERANTE---------
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=13
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

----FRENO MANO-------
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=14
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

------FRENO PIE---------------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=15
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

----------- LLANTA DELANTERA---------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=16
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

--------LLANTA TRASERA-------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=17
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

-------BOCINA-----

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=18
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

------ESPEJO RETOVISOR DER.-----
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=19
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

-------ESPEJOS RETOVISOR IZQ.---------
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=20
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

----CASCO-------
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=21
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

------GUANTES---------------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=22
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

----------- RODILLERAS---------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=23
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

--------CODERAS-------

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=24
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

-------BOTAS DE SEGURIDAD-----

SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
RespuestaPreguntaListaChequeo.TextoRespuesta,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=25
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

------FECHA MANTENIMIENTO-----
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
DetalleListaChequeo.Observaion,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=26
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo

-------OBSERVACION---------
SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
DetalleListaChequeo.Observaion,
preguntalistachequeo.textopregunta
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin AND  DetalleListaChequeo.IdPregunta=27
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo