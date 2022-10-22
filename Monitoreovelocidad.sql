SELECT 
ZonaBav.CodigoZona Zona,
UsuBav.Identificacion,
UnidadBav.DescripcionUnidad Unidad,
GerenciaBav.DescripcionGerencia Gerencia,
RegionalBav.DescripcionRegional Regional,
recorridoTemporal.Latitud,
recorridoTemporal.Longitud,
recorridoTemporal.velocidad,
recorridoTemporal.Fecha,
recorridoTemporal.IdRecorrido,
recorridoTemporal.Distancia / 3600 as Distancia,
 Datediff(minute, mon.fechacreacion,RecorridoTemporal.Fecha)      AS  TIEMPO_SESION
    

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
Mon.FechaCreacion between '2020-05-22 00:00:00'and '2020-05-22 23:59:00'
and recorridoTemporal.velocidad>60
--and ZonaBav.CodigoZona='com1ae'
order by
RegionalBav.DescripcionRegional,
GerenciaBav.DescripcionGerencia,
UnidadBav.DescripcionUnidad,
ZonaBav.CodigoZona