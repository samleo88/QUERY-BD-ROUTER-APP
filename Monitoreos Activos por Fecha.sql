FILE0  ?h    LA 8  ?                ?  re       `           H      ??\?? S[???&???????\??                                      0   ?          z     ?   CL??\????\????\????\??                         S Q L Q u e r y T i p o d e t r a n s p o r t e . s q l       ?   ?        ?     --Medio que utilizan para transportarse
USE[Bavaria]

SELECT Zona.DescripcionZona ,
RespuestaPreguntaListaChequeo.TextoRespuesta,
EncabezadoListaDeChequeo.Fecha
from RespuestaP guntaListaChequeo join DetalleListaChequeo
on RespuestaPreguntaListaChequeo.IdRespuesta =DetalleListaChequeo.IdRespuesta
join EncabezadoListaDeChequeo
on EncabezadoListaDeChequeo.IdEncabezadoListaChequeo=DetalleListaChequeo.IdEncabezadoListaChequeo
join Usuario
on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
join Zona on Usuario.IdZona = Zona.IdZona
where Res