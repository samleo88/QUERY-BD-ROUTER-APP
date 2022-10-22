--Medio que utilizan para transportarse
USE[Bavaria]

SELECT Zona.DescripcionZona ,
RespuestaPreguntaListaChequeo.TextoRespuesta,
EncabezadoListaDeChequeo.Fecha
from RespuestaPreguntaListaChequeo join DetalleListaChequeo
on RespuestaPreguntaListaChequeo.IdRespuesta =DetalleListaChequeo.IdRespuesta
join EncabezadoListaDeChequeo
on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo=DetalleListaChequeo.IdEncabezadoListaChequeo
join Usuario
on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
join Zona on Usuario.IdZona = Zona.IdZona
where RespuestaPreguntaListaChequeo.TextoRespuesta='CARRO'
order by
EncabezadoListaDeChequeo.Fecha