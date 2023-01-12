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


//6
use steam
select Nombre,PriceInitial, PriceFinal, sum(PriceInitial-PriceFinal) as Diferencia  from juegos
group by Nombre,PriceInitial, PriceFinal



//7
select count(nombre) from juegos
where ReleaseDate<'2000'


//8
select nombre from juegos
where Nombre like '%n' or nombre like '%o'



//9
use steam
select Nombre from juegos
where Nombre LIKE 'A%' and ControllerSupport='True'



//10
use steam
select Nombre,ReleaseDate from juegos
where ReleaseDate>='2000' and ReleaseDate<='2010'

