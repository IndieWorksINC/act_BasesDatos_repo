--1
select * from juegos


--2
use steam
select DISTINCT Genre from juegos


--3
select * from juegos
where PlatformLinux='true' and PlatformWindows='false' and PlatformMac='false'


--4
use steam
select Nombre,Metacritic from juegos
where genre like '%RPG%'
order by Metacritic desc


--5
select nombre,SupportedLanguages from juegos
where SupportedLanguages like '%spanish%' and SupportedLanguages not like '%french%'



--6
use steam
select Nombre,PriceInitial, PriceFinal, sum(PriceInitial-PriceFinal) as Diferencia  from juegos
group by Nombre,PriceInitial, PriceFinal




--7
select count(nombre) from juegos
where ReleaseDate<'2000'


--8
select nombre from juegos
where Nombre like '%n' or nombre like '%o'



--9
use steam
select Nombre from juegos
where Nombre LIKE 'A%' and ControllerSupport='True'



--10
use steam
select Nombre,ReleaseDate from juegos
where ReleaseDate>='2000' and ReleaseDate<='2010'



--11
use steam
select Nombre
from juegos
where Nombre like '%Final Fantasy%'



--12
use steam
select Nombre,Genre
from juegos
where Genre like '%Sport%' and DeveloperCount=3



--13
select genre, count(nombre) from juegos
group by Genre



--14
use steam
select count(nombre) as 'n? juegos', ReleaseDate
from juegos
GROUP BY ReleaseDate
ORDER BY ReleaseDate asc



--15
use steam
select count(nombre) as 'n? juegos', ReleaseDate
from juegos
group by ReleaseDate
having avg(Metacritic)<=8 and avg(Metacritic)>=6
ORDER BY ReleaseDate asc



--16
use steam
select max(Metacritic) as 'Maximo', min(Metacritic) as 'minimo', Genre
from juegos
group by Genre



--17
select top 10 Metacritic, nombre from juegos
where releasedate='2012'
order by metacritic desc



--18
use steam
select top 10 ReleaseDate, nombre, Category
from juegos
where Category like '% Single player%'
order by ReleaseDate desc



--19
select avg(metacritic) as 'media de nota' from juegos
where RequiredAge>=18



--20
select  RequiredAge, count(nombre) from juegos
group by RequiredAge
order by requiredage asc



--21
select  releasedate, count(nombre) from juegos
group by releasedate
having count(nombre)<300



--22
select nombre from juegos
where PlatformMac='true' and PlatformWindows='false'



--23
select nombre from juegos
where PriceFinal>PriceInitial



--24
select nombre from juegos
where PriceCurrency not like 'usd'



--25
select nombre, metacritic from juegos
where metacritic>0 and Metacritic<50

--26
select top 15 dlccount, nombre from juegos
order by DLCCount desc


--27
select * from juegos
where SupportedLanguages like 'english'

--28

select lower(nombre), upper(website) from juegos
where genre like '%actio%' or genre like '%casual%'

--29
select top 1 metacritic, nombre, genre from juegos
where genre like '%indie%'
order by metacritic desc


--30
select top 1 metacritic, nombre, genre from juegos
where genre like '%indie%'
order by metacritic asc

--31
select top 1  *
from juegos
where Metacritic=(select min(Metacritic) from juegos where Metacritic> 0 )


--32 
select nombre, metacritic from juegos
where metacritic > (select avg(metacritic) from juegos)


--33
select nombre, metacritic from juegos
where ReleaseDate='2008' and metacritic=(select max(Metacritic) from juegos where ReleaseDate='2008')

--34
select * from juegos
where PriceInitial>(select avg(priceinitial)  from juegos)


--35
select * 
from juegos
where PlatformLinux = 'True' and AchievementCount = (select top 1 AchievementCount from juegos order by AchievementCount desc);
