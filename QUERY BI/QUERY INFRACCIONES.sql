declare @Fechafin datetime
declare @Fechainicio datetime
declare @conver datetime
Set @conver = CONVERT (date, SYSDATETIME())
Set @Fechafin= dateadd(hour,23,@conver)  
set @Fechainicio = DATEADD(day,-30,@Fechafin) 

SELECT 
ZonaBav.CodigoZona Zona,
UnidadBav.DescripcionUnidad Unidad,
GerenciaBav.DescripcionGerencia Gerencia,
RegionalBav.DescripcionRegional Regional,
recorridoTemporal.Latitud,
recorridoTemporal.Longitud,
CONVERT(float,((recorridoTemporal.Distancia) /recorridoTemporal.velocidad),1)   as Tiempo,
CONVERT(float,(recorridoTemporal.Distancia / 3600),1)  as Distancia,
CONVERT(float,recorridoTemporal.velocidad,1) as Velocidad,
CONVERT(varchar,recorridoTemporal.Fecha,3) as [DIA],
CONVERT(varchar,recorridoTemporal.Fecha,8) as [HORA],
recorridoTemporal.Idrecorrido,
mon.IdMonitoreo, 
Mon.IdDispositivo
FROM Bavaria.dbo.Usuario AS UsuBav
INNER JOIN Bavaria.dbo.Monitoreo AS Mon
ON
UsuBav.IdUsuario = Mon.IdUsuario
INNER JOIN Bavaria.dbo.Zona AS ZonaBav
ON
UsuBav.IdZona = ZonaBav.IdZona
INNER JOIN Bavaria.dbo.Unidad AS UnidadBav
ON
ZonaBav.IdUnidad = UnidadBav.IdUnidad
INNER JOIN Bavaria.dbo.Gerencia AS GerenciaBav
ON
UnidadBav.IdGerencia = GerenciaBav.IdGerencia
INNER JOIN Bavaria.dbo.Regional AS RegionalBav
ON
GerenciaBav.IdRegional = RegionalBav.IdRegional
JOIN Monitoreo.dbo.RecorridoTemporal recorridoTemporal
ON
Mon.idmonitoreo= recorridoTemporal.IdMonitoreo
WHERE
recorridoTemporal.Fecha between @Fechainicio and @Fechafin
and recorridoTemporal.velocidad>60
order by 
recorridoTemporal.Fecha

