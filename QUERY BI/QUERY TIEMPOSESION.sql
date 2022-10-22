USE[Monitoreo]

declare @Fechafin datetime
declare @Fechainicio datetime
declare @conver datetime

Set @conver = CONVERT (date, SYSDATETIME())
Set @Fechafin= dateadd(hour,23,@conver)  
set @Fechainicio = DATEADD(day,-30,@Fechafin) 

SELECT 
       Mon.idmonitoreo                                AS [MonitoreoId], 
       CASE 
         WHEN Datediff(minute, mon.fechacreacion, Max( 
              Isnull(rec.fecha, mon.fechacreacion))) 
              >= 0 THEN Datediff(minute, mon.fechacreacion, Max( 
                        Isnull(rec.fecha, mon.fechacreacion))) 
         WHEN Datediff(minute, mon.fechacreacion, Max( 
              Isnull(rec.fecha, mon.fechacreacion))) < 
              0 THEN 0 
       END                                            AS 
       [TiempoSesion] 
FROM   [BAVARIA].[DBO].[monitoreo] AS MON 
       LEFT JOIN [MONITOREO].[DBO].[RecorridoTemporal] AS REC 
              ON MON.idmonitoreo = REC.idmonitoreo 
       LEFT JOIN [MONITOREO].[DBO].[recorrido] AS RecAnt 
              ON rec.idrecorridopredecesor = recant.idrecorrido 
                 AND rec.idmonitoreo = RecAnt.idmonitoreo 
       LEFT JOIN [MONITOREO].[DBO].distanciarecorrido AS xRec 
              ON rec.idrecorrido = xRec.idrecorrido
	
WHERE   mon.fechacreacion between @Fechainicio and @Fechafin 
	  AND rec.fecha between @Fechainicio and @Fechafin
GROUP  BY 
          Mon.idmonitoreo, 
          mon.fechacreacion;
