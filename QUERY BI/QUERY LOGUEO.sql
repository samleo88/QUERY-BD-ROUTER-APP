use [bavaria]  
SELECT 
Zona.DescripcionZona as Zona,  
DetalleListaChequeo.Observaion as Cedula,
Unidad.DescripcionUnidad as Unidad,
Gerencia.DescripcionGerencia As Gerencia,
regional.DescripcionRegional AS Regional,
CONVERT(varchar,EncabezadoListaDeChequeo.Fecha,3) as [DIA],
CONVERT(varchar,EncabezadoListaDeChequeo.Fecha,8) as [HORA],

--EncabezadoListaDeChequeo.Fecha,
monitoreo.idmonitoreo
FROM DetalleListaChequeo
inner join EncabezadoListaDeChequeo On DetalleListaChequeo.IdEncabezadoListaChequeo =EncabezadoListaDeChequeo.IdEncabezadoListaChequeo
inner join Usuario                  on EncabezadoListaDeChequeo.IdUsuario =Usuario.IdUsuario
inner join Zona                     on Usuario.IdZona = Zona.IdZona
INNER JOIN UNIDAD					ON Zona.IdUnidad = Unidad.IdUnidad
INNER JOIN Gerencia					ON Unidad.idgerencia = gerencia.idgerencia
inner join Regional					on Gerencia.IdRegional = Regional.IdRegional
inner join Monitoreo				on CONVERT(varchar,Monitoreo.FechaCreacion,3)  = CONVERT(varchar,EncabezadoListaDeChequeo.Fecha,3) and monitoreo.idusuario = usuario.idusuario
where DetalleListaChequeo.IdPregunta=28 --and Fecha between @FechaInicio and @FechaFin  --AND DescripcionZona IN ('COM1P8')
order by EncabezadoListaDeChequeo.Fecha
