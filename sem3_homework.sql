--Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания 
select * from sem3.staff order by salary desc;

select * from sem3.staff order by salary;

--Выведите 5 максимальных заработных плат 
select * from sem3.staff order by salary desc limit 5;

--Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
select post, sum(salary) from sem3.staff group by post;

--Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
select count(*) from sem3.staff where post like 'Рабочий' and age between 24 and 49;

--Найдите количество специальностей
select post,count(*) from sem3.staff group by post; 

--Выведите специальности, у которых средний возраст сотрудников меньше 30 лет 
select post from sem3.staff group by post having avg(age)<30