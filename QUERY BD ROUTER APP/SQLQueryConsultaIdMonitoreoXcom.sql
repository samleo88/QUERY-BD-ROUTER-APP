select
 Zona.CodigoZona,
 Monitoreo.IdMonitoreo,
 Monitoreo.FechaCreacion
from usuario join zona
on usuario.Idzona = zona.Idzona left join Monitoreo
on usuario.IDusuario= Monitoreo.IdUsuario
where DescripcionZona = 'COM3Z2'
order by
Monitoreo.FechaCreacion



