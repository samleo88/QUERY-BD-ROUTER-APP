USE[Bavaria]
declare @Fechafin datetime
declare @Fechainicio datetime
declare @conver datetime

Set @conver = CONVERT (date, SYSDATETIME())
Set @Fechafin= dateadd(hour,23,@conver)  
set @Fechainicio = DATEADD(day,-30,@Fechafin) 
SELECT 
Mon.idmonitoreo IDMONITOREO,
ZonaBav.CodigoZona ZONA,
RegionalBav.DescripcionRegional REGIONAL,
GerenciaBav.DescripcionGerencia GERENCIA,
UnidadBav.DescripcionUnidad UNIDAD,
UsuBav.JefeInmediato JEFE_INMEDIATO,
CONVERT(varchar,Mon.fechaCreacion,3) as [DIA],
CONVERT(varchar,Mon.fechaCreacion,8) as [HORA],
Mon.IdDispositivo DISPOSITIVO
FROM Usuario AS UsuBav INNER JOIN Monitoreo AS Mon
ON 
UsuBav.IdUsuario = Mon.IdUsuario
INNER JOIN Zona     AS ZonaBav     ON UsuBav.IdZona = ZonaBav.IdZona 
INNER JOIN Unidad   AS UnidadBav   ON ZonaBav.IdUnidad = UnidadBav.IdUnidad
INNER JOIN Gerencia AS GerenciaBav ON UnidadBav.IdGerencia = GerenciaBav.IdGerencia
INNER JOIN Regional AS RegionalBav ON GerenciaBav.IdRegional = RegionalBav.IdRegional
WHERE 
Mon.FechaCreacion between @FechaInicio and @FechaFin 
order by
Mon.FechaCreacion
