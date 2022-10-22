with cte_infraccion as (SELECT  
	   Zona.DescripcionZona AS [Zona],
	   CAST(REC.PuntoRecorrido.Lat AS NVARCHAR(50)) AS [LatitudRecorrido],  
	   CAST(REC.PuntoRecorrido.Long AS NVARCHAR(50)) AS [LongitudRecorrido],
       CASE 
         WHEN Lim.tiempo IS NULL THEN 0 
         WHEN Lim.tiempo = 0 THEN 10 
         ELSE Lim.tiempo 
       END AS [TiempoInfraccionSeg], 
       ( Cast(Isnull(rec.velocidad, 0) AS FLOAT) / 3600 ) * ( Cast( 
       CASE 
         WHEN Lim.tiempo IS 
              NULL THEN 0 
         WHEN Lim.tiempo = 
              0 THEN 10 
         ELSE Lim.tiempo 
       END AS FLOAT) ) AS [DistanciaRecorridaInfraccionKM] /*Km/h * 1h/60s = Km/S * (S) = KM*/, 
       CASE 
         WHEN Lim.idlimitevelocidadrecorrido IS NULL THEN 0 
         ELSE Cast(Isnull(rec.velocidad, 0) AS FLOAT) 
       END  AS [VelocidadInfraccionKM/H], 
       rec.fecha AS [FechaInfraccion] 
	  
FROM   [BAVARIA].[DBO].[monitoreo] AS MON 
       INNER JOIN [MONITOREO].[DBO].[recorrido] AS REC 
               ON MON.idmonitoreo = REC.idmonitoreo 
       --and rec.Fecha > convert(date, (getdate()-10))and rec.Fecha < convert(date, (getdate()))
       INNER JOIN [MONITOREO].[DBO].limitevelocidadrecorrido AS LIM 
               ON rec.idrecorrido = LIM.idrecorrido 
       --DE CADA RECORRIDO TRAIGAME SUS INFRACCIONES  
       INNER JOIN [MONITOREO].[DBO].[recorrido] AS RecAnt 
               ON rec.idrecorridopredecesor = recant.idrecorrido 
                  AND rec.idmonitoreo = RecAnt.idmonitoreo 
       INNER JOIN [MONITOREO].[DBO].distanciarecorrido AS xRec 
               ON rec.idrecorrido = xRec.idrecorrido 
       INNER JOIN [BAVARIA].[DBO].[Usuario] AS  Usu
	           ON Usu.IdUsuario = Mon.IdUsuario
	   INNER JOIN [BAVARIA].[DBO].[Zona] AS Zona
	           ON Zona.IdZona = Usu.IdZona)
select Zona, /*LatitudRecorrido, LongitudRecorrido,*/
 sum(TiempoInfraccionSeg) as [TiempoTotal],
 sum(DistanciaRecorridaInfraccionKM) as [DistanciaTotal],
  avg([VelocidadInfraccionKM/H]) as [PromedioVelocidad],
concat(convert(varchar,year(FechaInfraccion)), convert(varchar,month(FechaInfraccion)), convert(varchar,day(FechaInfraccion))) as [Fecha]
 from cte_infraccion
 group by Zona, /*LatitudRecorrido, LongitudRecorrido,*/ concat(convert(varchar,year(FechaInfraccion)), convert(varchar,month(FechaInfraccion)), convert(varchar,day(FechaInfraccion)))
 go
 