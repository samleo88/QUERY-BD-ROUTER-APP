

use Bavaria
go


--select * from Zona 
--where CodigoZona ='com1y5'
--select *from Usuario
--SELECT *FROM Monitoreo
--where IdUsuario = '98E989B7-1D17-4A8C-B860-785C8D64E203'
--where FechaCreacion between '2019-11-27 00:00:00' and '2019-11-27 23:00:00'


/*--USUARIOS QUE ESTAN EN LA BD BAVARIA
select 
Usuario.PrimerNombre,
Usuario.PrimerApellido,
Zona.CodigoZona,
Usuario.Telefonos,
Regional.DescripcionRegional,
Gerencia.DescripcionGerencia,
Unidad.DescripcionUnidad

from usuario left join Zona
ON 
Usuario.IdZona = Zona.IdZona
INNER JOIN Unidad
ON
Unidad.IdUnidad= Zona.IdUnidad
INNER JOIN Gerencia
ON 
Gerencia.IdGerencia = Unidad.IdGerencia
INNER JOIN Regional
ON
Regional.IdRegional =Gerencia.IdRegional
order by
Regional.DescripcionRegional,
Gerencia.DescripcionGerencia,
Unidad.DescripcionUnidad,
Zona.CodigoZona


*/


--MONITOREO INICIADOS
select Monitoreo.IdMonitoreo,Zona.*
from usuario left join Monitoreo
on Usuario.IdUsuario= Monitoreo.IdUsuario
left join zona on zona.idzona = usuario.idzona
where Monitoreo.FechaCreacion between '2019-12-06 05:00:00' and '2019-12-06 23:00:00'

--administrador
/*select FechaAutenticacion,usuario.Login
from sesion join usuario 
on sesion.idusuario = usuario.idusuario
where FechaAutenticacion between '2019-11-27 00:00:00' and '2019-11-27 23:00:00'
order by FechaAutenticacion */

SELECT Zona.DescripcionZona, *
from EncabezadoListaDeChequeo join Usuario
on Usuario.IdUsuario = EncabezadoListaDeChequeo.IdUsuario
join Zona on Usuario.IdZona = Zona.IdZona
where Fecha between '2019-12-14 00:00:00' and '2019-12-30 23:00:00'
--where DescripcionZona = 'COM3Y9'

