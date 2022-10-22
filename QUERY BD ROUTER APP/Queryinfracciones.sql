SELECT 
Zona.DescripcionZona AS COM,  
DetalleListaChequeo.Observaion AS CEDULA,
UnidadBav.DescripcionUnidad Unidad,
GerenciaBav.DescripcionGerencia Gerencia,
RegionalBav.DescripcionRegional Regional,
LatitudRecorrido AS Latitud,
LongitudRecorrido As Longitud,
TiempoInfraccionSeg AS Tiempo,
DistanciaRecorridaInfraccionKM AS Distancia,
[VelocidadInfraccionKM/H] As Velocidad_KM,
FechaInfracción AS Fecha
FROM DetalleListaChequeo
inner join EncabezadoListaDeChequeo
On DetalleListaChequeo.IdEncabezadoListaChequeo =EncabezadoListaDeChequeo.IdEncabezadoListaChequeo
inner join Usuario
on EncabezadoListaDeChequeo.IdUsuario =Usuario.IdUsuario
inner join Zona 
on Usuario.IdZona = Zona.IdZona
INNER JOIN Unidad AS UnidadBav
ON Zona.IdUnidad = UnidadBav.IdUnidad
INNER JOIN Gerencia AS GerenciaBav
ON UnidadBav.IdGerencia = GerenciaBav.IdGerencia
INNER JOIN Regional AS RegionalBav
ON GerenciaBav.IdRegional = RegionalBav.IdRegional
inner join Monitoreo
on Monitoreo.IdUsuario = Usuario.IdUsuario
inner join BI_Dim_Infraccion
on BI_Dim_Infraccion.Monitoreo = Monitoreo.IdMonitoreo
where DetalleListaChequeo.IdPregunta=28 and Fecha between '2020-02-26 00:00:00.000' and '2020-02-26 23:59:59.998' and FechaInfracción between '2020-02-26 00:00:00.000' and '2020-02-26 23:59:59.998'
order by BI_Dim_Infraccion.FechaInfracción



