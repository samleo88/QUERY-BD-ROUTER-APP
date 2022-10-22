use Monitoreo
go

DECLARE @IdMonitoreo as UNIQUEIDENTIFIER

--SET @IdMonitoreo = '20571D88-5ABD-441C-8BB9-D93DE68E5DC5'

--Encabezado Monitoreo

select 
	monitoreo.IdMonitoreo,
	monitoreo.FechaCreacion,
	monitoreo.FechaInicio,
	monitoreo.FechaFin,
	TipoVehiculo.Descripcion 'Tipo Vehiculo',
	Estado.Descripcion
from monitoreo join TipoVehiculo
on monitoreo.IdTipoVehiculo=TipoVehiculo.IdTipoVehiculo join Estado
on monitoreo.IdEstado= Estado.IdEstado
--WHERE FechaInicio between '20191126' and '20191128';
/*where monitoreo.IdMonitoreo= @IdMonitoreo

SELECT * FROM LimiteVelocidadRecorrido
select * from recorrido
SELECT *FROM ConfiguracionLimiteVelocidad


SELECT * FROM ConfiguracionMonitoreo
WHERE IdConfiguracionMonitoreo = 'E57AB039-FE3D-48DB-AAC6-A4512BF13754'

-- Configuración Parada
select 
	ConfiguracionMonitoreo.IdConfiguracionMonitoreo,
	TipoMonitoreo.Descripcion, 
	Estado.Descripcion,
	ConfiguracionParada.Tiempo,
	ConfiguracionParada.Rango,
	ConfiguracionParada.Alerta,
	ConfiguracionParada.TiempoParaAlerta
from monitoreo join TipoVehiculo
on monitoreo.IdTipoVehiculo=TipoVehiculo.IdTipoVehiculo
join ConfiguracionMonitoreo
on monitoreo.IdMonitoreo=ConfiguracionMonitoreo.IdMonitoreo
join TipoMonitoreo on ConfiguracionMonitoreo.IdTipoMonitoreo= TipoMonitoreo.IdTipoMonitoreo
join Estado on ConfiguracionMonitoreo.IdEstado=Estado.IdEstado
join ConfiguracionParada on ConfiguracionMonitoreo.IdConfiguracionMonitoreo= ConfiguracionParada.IdConfiguracionMonitoreo
where monitoreo.IdMonitoreo= @IdMonitoreo

-- Configuración LimiteVelocidad
select 
	ConfiguracionMonitoreo.IdConfiguracionMonitoreo,
	TipoMonitoreo.Descripcion, 
	Estado.Descripcion,
	ConfiguracionLimiteVelocidad.Limite,	
	ConfiguracionLimiteVelocidad.Alerta,
	ConfiguracionLimiteVelocidad.TiempoParaAlerta
from monitoreo join TipoVehiculo
on monitoreo.IdTipoVehiculo=TipoVehiculo.IdTipoVehiculo
join ConfiguracionMonitoreo
on monitoreo.IdMonitoreo=ConfiguracionMonitoreo.IdMonitoreo
join TipoMonitoreo on ConfiguracionMonitoreo.IdTipoMonitoreo= TipoMonitoreo.IdTipoMonitoreo
join Estado on ConfiguracionMonitoreo.IdEstado=Estado.IdEstado
join ConfiguracionLimiteVelocidad on ConfiguracionMonitoreo.IdConfiguracionMonitoreo= ConfiguracionLimiteVelocidad.IdConfiguracionMonitoreo
where monitoreo.IdMonitoreo= @IdMonitoreo

select count(*)
from Recorrido
where IdMonitoreo = @IdMonitoreo

select *
from Recorrido
where IdMonitoreo = @IdMonitoreo
order by Fecha 

--Analisi Recorrido
select AnalisisRecorrido.*,TipoRecorrido.Descripcion,Recorrido.Fecha,AnalisisRecorrido.IdGrupoAnalisis
from AnalisisRecorrido
join Recorrido on AnalisisRecorrido.IdRecorrido=Recorrido.IdRecorrido
join Monitoreo  on Recorrido.IdMonitoreo= Monitoreo.IdMonitoreo
join TipoRecorrido on AnalisisRecorrido.IdTipoRecorrido= TipoRecorrido.IdTipoRecorrido
where Monitoreo.IdMonitoreo = @IdMonitoreo
order by Recorrido.Fecha

select * from TipoRecorrido*/

