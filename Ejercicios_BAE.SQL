//!
select * from juegos


//2
use steam
select DISTINCT Genre from juegos


//3
select * from juegos
where PlatformLinux='true' and PlatformWindows='false' and PlatformMac='false'


//4
use steam
select Nombre,Metacritic from juegos
where genre like '%RPG%'
order by Metacritic desc


//5
select nombre,SupportedLanguages from juegos
where SupportedLanguages like '%spanish%' and SupportedLanguages not like '%french%'
