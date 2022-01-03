--Cleansed Dataset
SELECT ut.ID
	,ut.DATE
	,YEAR([Date]) AS [Year]
	--,ut.[Time]
	,RIGHT(ut.Time, CHARINDEX(' ', REVERSE(ut.Time))) AS Time_With_Hour_Min
	--,ut.[Site]
	,LEFT(ut.Site, CHARINDEX(' ', ut.Site, 1)) AS FirstName
	,RIGHT(ut.Site, CHARINDEX(' ', REVERSE(ut.Site))) AS SecondName
	,REPLACE(ut.Site, ' ', '_') AS Site
	,ut.Latitude
	,ut.Longitude
	,ut.[Temp (°„C)]
	,ut.Depth
FROM [dbo].[Underwater_Temperature] AS ut
--where ut.Depth in(12,22)
ORDER BY ut.ID
