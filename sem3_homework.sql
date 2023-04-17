select * from sem3.staff order by salary;

select * from sem3.staff order by salary desc;

select * from sem3.staff order by salary desc limit 5;

select post, sum(salary) from sem3.staff group by post;

select count(*) from sem3.staff where post like 'Рабочий' and age between 24 and 49;

select post,count(*) from sem3.staff group by post; 

select post from sem3.staff group by post having avg(age)<30