
-----CONSULTA DE LISTA DE CHEQUEO--------
USE[Bavaria]
declare @Fechafin datetime
declare @Fechainicio datetime
declare @conver datetime

Set @conver = CONVERT (date, SYSDATETIME())
Set @Fechafin= dateadd(hour,23,@conver)  
set @Fechainicio = DATEADD(day,-30,@Fechafin) 


SELECT 
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo,
Zona.DescripcionZona ,
preguntalistachequeo.textopregunta,
RespuestaPreguntaListaChequeo.TextoRespuesta,
DetalleListaChequeo.Observaion,
CONVERT(varchar,EncabezadoListaDeChequeo.Fecha,3) as [DIA]
 from EncabezadoListaDeChequeo
 full join DetalleListaChequeo     on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo = DetalleListaChequeo.IdEncabezadoListaChequeo
 full join PreguntaListaChequeo   on  PreguntaListaChequeo.IdPregunta = DetalleListaChequeo.IdPregunta
 full join RespuestaPreguntaListaChequeo on RespuestaPreguntaListaChequeo.IdRespuesta = DetalleListaChequeo.IdRespuesta
 full join Usuario                on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
 full join Zona on Usuario.IdZona = Zona.IdZona
where  Fecha between @FechaInicio and @FechaFin --AND  DetalleListaChequeo.IdPregunta=28
order by
EncabezadoListaDeChequeo.Fecha,
EncabezadoListaDeChequeo.IdEncabezadoListaChequeo
