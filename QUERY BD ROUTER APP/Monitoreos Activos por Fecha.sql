USE[Bavaria]
DECLARE @FechaInicio Datetime
DECLARE @FechaFin Datetime

Set @FechaInicio='2019-11-27 00:00:00'
Set @FechaFin='2019-11-27 23:59:00'

SELECT 
UsuBav.Identificacion,
UsuBav.PrimerNombre,
RegionalBav.DescripcionRegional,
GerenciaBav.DescripcionGerencia,
UnidadBav.DescripcionUnidad,
ZonaBav.CodigoZona
FROM Usuario AS UsuBav
INNER JOIN Monitoreo AS Mon
ON 
UsuBav.IdUsuario = Mon.IdUsuario
INNER JOIN Zona AS ZonaBav
ON 
UsuBav.IdZona = ZonaBav.IdZona
INNER JOIN Unidad AS UnidadBav
ON 
ZonaBav.IdUnidad = UnidadBav.IdUnidad
INNER JOIN Gerencia AS GerenciaBav
ON 
UnidadBav.IdGerencia = GerenciaBav.IdGerencia
INNER JOIN Regional AS RegionalBav
ON 
GerenciaBav.IdRegional = RegionalBav.IdRegional
WHERE 
Mon.FechaCreacion between @FechaInicio and @FechaFin
order by
RegionalBav.DescripcionRegional,
GerenciaBav.DescripcionGerencia,
UnidadBav.DescripcionUnidad,
ZonaBav.CodigoZona