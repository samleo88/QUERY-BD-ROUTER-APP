USE[Bavaria]

DECLARE @FechaInicio Datetime
DECLARE @FechaFin Datetime
--FECHA PARA LAS DOS CONSULTAS SOLO SE CAMBIA ACA Y AFECTA A LAS DOS
Set @FechaInicio='2020-04-30 00:00:00.001'
Set @FechaFin='2020-04-30 23:59:59.998'

-- Usuarios con Monitoreo
SELECT 
ZonaBav.CodigoZona Zona,
RegionalBav.DescripcionRegional Regional,
GerenciaBav.DescripcionGerencia Gerencia,
UnidadBav.DescripcionUnidad Unidad,
Mon.IdDispositivo Dispositivo,
Mon.idmonitoreo,
DATEADD(HH,-5,Mon.fechaCreacion) Fecha
FROM Usuario AS UsuBav
INNER JOIN Monitoreo AS Mon
ON UsuBav.IdUsuario = Mon.IdUsuario
INNER JOIN Zona AS ZonaBav
ON UsuBav.IdZona = ZonaBav.IdZona
INNER JOIN Unidad AS UnidadBav
ON ZonaBav.IdUnidad = UnidadBav.IdUnidad
INNER JOIN Gerencia AS GerenciaBav
ON UnidadBav.IdGerencia = GerenciaBav.IdGerencia
INNER JOIN Regional AS RegionalBav
ON GerenciaBav.IdRegional = RegionalBav.IdRegional
WHERE Mon.FechaCreacion between @FechaInicio and @FechaFin --AND DescripcionZona IN ('Com1r5')
order by ZonaBav.CodigoZona

--MUESTRA TODAS LAS INFRACCIONES COMETIDAS EN LA FECHA
select * from BI_Dim_Infraccion
where FechaInfracción between @FechaInicio and @FechaFin


--ZONAS CON EL NUMERO DE CEDULA
SELECT
Zona.DescripcionZona,  
DetalleListaChequeo.Observaion,
EncabezadoListaDeChequeo.Fecha
FROM DetalleListaChequeo
inner join EncabezadoListaDeChequeo
On DetalleListaChequeo.IdEncabezadoListaChequeo =EncabezadoListaDeChequeo.IdEncabezadoListaChequeo
inner join Usuario
on EncabezadoListaDeChequeo.IdUsuario =Usuario.IdUsuario
inner join Zona
on Usuario.IdZona = Zona.IdZona
where DetalleListaChequeo.IdPregunta=28 and Fecha between @FechaInicio and @FechaFin
order by EncabezadoListaDeChequeo.Fecha

--ZONAS CON EL MEDIO DE TRANSPORTE QUE UTILIZO
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
where RespuestaPreguntaListaChequeo.TextoRespuesta IN ('CARRO','MOTO','A PIE') and Fecha between @FechaInicio and @FechaFin
order by
EncabezadoListaDeChequeo.Fecha
