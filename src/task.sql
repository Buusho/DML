--#1
--Отобразите бренд, модель и цены на всю технику

select brand , model , price from cars;

--#2
--Отобразите количество всех автомобилей

select COUNT(*) as total_cars
from  cars;

--#3
--Отобразите все автомобили бренда Hyundai

select * from cars where brand  = 'Hyundai';

--#4
--Отобразите все красные и синие автомобили
select * from cars where color in ('Red','Blue');

--#5
-- Отобразите все автомобили, выпущенные с 2000 по 2010 год

select * from cars where year_of_issue between 2000 and 2010;

--#6
--Отобразите количество автомобилей марки Chevrolet
select  count (*)  from cars where  brand = 'Chevrolet';

--#7
--Отобразите среднестатистический год выпуска всех машин
select  avg(year_of_issue) from cars;

--#8
--Отобразите все автомобили марок Audi, Toyota, Kia и Ford

select * from cars  where brand in ('Audi','Toyota','Kia','Ford') ;

--#9
--Отобразите автомобили, где модель автомобиля начинается с «Т»

select * from cars where model like ('T%');

--#10
--Отобразите автомобили, где модель автомобиля заканчивается на «е»

select  * from cars where model like ('%e');

--#11
--Отобразите бренды, содержащие всего 5 символов

select brand from cars where LENGTH(brand) = 5;

--#12
--Отобразите структуру всех автомобилей марок Mercedes-Benz

select * from cars where brand = 'Mercedes-Benz';

--#13
--Отобразите самую низкую дорогую и самую дешевую машину

select max(price) as max_experience, min(price) as min_experience from cars;

--#14
--Отобразите все автомобили, кроме марок TOYOTA

select * from cars where brand NOT LIKE 'TOYOTA';

--#15
-- Отобразите 10 самых дорогих автомобилей

select  * from cars order by price DESC limit 10;

--#16
-- Отобразите 10 новейших машин с 5-го по 15-е

select * from cars where year_of_issue between  2005 and 2015 limit 10;

--#17
--Отобразите все автомобили, кроме тех, которые были выпущены в период с 1995 по 2005 год

select * from cars where year_of_issue < 1995 OR year_of_issue > 2005;

--#18
-- Вывести автомобили одного цвета и наибольшего количества

select color, COUNT(*) as car_count from cars group by color order by car_count desc;