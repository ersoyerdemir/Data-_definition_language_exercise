use nortwind

-- select * from Categories as cat
-- select cat.CategoryName from Categories AS cat 




-- where kullanımı

-- select *from Categories cat where cat.CategoryID>=5;
-- select *from Categories cat where cat.CategoryID>5
-- select *from Categories cat where cat.CategoryID<8
-- select *from Categories cat where cat.CategoryID<5

-- order by kullanımı
-- asc küçükten büyüğe
-- desc büyükten küçüğe

-- select * from Categories as c where c.CategoryID <=6
-- select * from Categories c where c.CategoryID<=6 order by c.CategoryID asc
-- select * from Categories c where c.CategoryID<=6 order by c.CategoryID desc

--between kullanımı

-- select * from Categories cat where cat.CategoryID between 3 and 6

-- like kullanımı 

-- select *from Categories c where c.CategoryName like 'C%'
-- select *from Categories c where c.CategoryName like '%s'
-- select *from Categories c where c.CategoryName like '%on%'
-- select *from Categories c where c.CategoryName like '%on%'order by c.CategoryID desc
-- select *from Categories c where c.CategoryName like '%Cond%s'  order by c.CategoryID desc


-- İN kullanımı 
-- verideki en büyük ve en küçük verileri getirdik
-- select* from Categories  cat where cat.CategoryID=(select max(cat.CategoryID)  from Categories cat )
-- select* from Categories  cat where cat.CategoryID=(select min(cat.CategoryID)  from Categories cat )

-- select *from Categories cat where cat.CategoryName like '%on%'
-- select count(*) as ongeçenkategorisayısı from Categories cat where cat.CategoryName like '%on%'


--TOP yapısı

-- select *from [nortwind].[dbo].[Categories] as ct	
-- select  top (4)* from [nortwind].[dbo].[Categories] as ct	
-- select  top (4)* from [nortwind].[dbo].[Categories] as ct	order by ct.CategoryID asc

--DISTINCT yapısı = Tekrarsız veri
-- select * from Categories ct
-- select distinct ct.CategoryName from Categories ct

-- AGGREAGATE FUNCTİONS
--toplama(sum)
--minimum(min)
--maksimum(max)
--ortalama(avg)
--sayısı(count)

-- select sum (ct.CategoryID) from Categories ct
-- select min  (ct.CategoryID) from Categories ct
-- select max  (ct.CategoryID) from Categories ct
-- select avg  (ct.CategoryID) from Categories ct
-- select count  (ct.CategoryID) from Categories ct


--IS NULL 

-- select * from Categories as ct where ct.Picture is null

-- select count (*) from Categories as ct where ct.Picture is null

--IS NOT NULL 

-- select * from Categories as ct where ct.Picture is not null

-- select count(*) as 'nullolmayanverisayısı' from Categories ct where ct.Picture is not null