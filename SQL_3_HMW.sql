-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, mounthly_salary 
from employees em 
join employee_salary es 
on em.id = es.employee_id  
join salary s 
on s.id = es.salary_id;

--  2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name
from employees em 
join employee_salary es 
on em.id = es.employee_id  
join salary s 
on s.id = es.salary_id 
where mounthly_salary < 2000;

--  3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но непонятно кто её получает.)
select mounthly_salary
from salary s 
where s.id not in (select salary_id from employee_salary);

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но непонятно кто её получает.)
select mounthly_salary
from salary s 
where s.id not in (select salary_id from employee_salary) and mounthly_salary < 2000;

--  5. Найти всех работников кому не начислена ЗП.
select employee_name
from employees e 
where e.id not in (select employee_id from employee_salary es);

--  6. Вывести всех работников с названиями их должности.
select employee_name, role_name
from employees e 
left join roles_employee re 
on e.id = re.employee_id 
left join roles r 
on r.id = re.role_id; 

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%Java developer';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%Python developer';

--  9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%QA engineer';

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '% Manual QA engineer';

--  11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '% Automation QA engineer';

-- 12. Вывести имена и зарплаты Junior специалистов
select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like 'Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like 'Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employee_name, role_name
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like 'Senior%';

-- 15. Вывести зарплаты Java разработчиков
select mounthly_salary
from salary s
join employee_salary es 
on s.id = es.salary_id  
join roles_employee re 
on re.employee_id  = es.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%Java developer';

-- 16. Вывести зарплаты Python разработчиков
select mounthly_salary
from salary s
join employee_salary es 
on s.id = es.salary_id  
join roles_employee re 
on re.employee_id  = es.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%Python developer';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, mounthly_salary
from employees e 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name = 'Junior Python developer';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, mounthly_salary
from employees e 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name = 'Middle JavaScript developer';

--  19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, mounthly_salary
from employees e 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name = 'Senior Java developer';

--  20. Вывести зарплаты Junior QA инженеров
select mounthly_salary
from salary s
join employee_salary es 
on s.id = es.salary_id  
join roles_employee re 
on re.employee_id  = es.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like 'Junior%QA engineer';

--  21. Вывести среднюю зарплату всех Junior специалистов
select avg(mounthly_salary)
from salary s
join employee_salary es 
on s.id = es.salary_id  
join roles_employee re 
on re.employee_id  = es.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like 'Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select sum(mounthly_salary)
from salary s
join employee_salary es 
on s.id = es.salary_id  
join roles_employee re 
on re.employee_id  = es.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%Java developer';

--  23. Вывести минимальную ЗП QA инженеров
select min(mounthly_salary)
from salary s
join employee_salary es 
on s.id = es.salary_id  
join roles_employee re 
on re.employee_id  = es.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%QA engineer';

--  24. Вывести максимальную ЗП QA инженеров
select max(mounthly_salary)
from salary s
join employee_salary es 
on s.id = es.salary_id  
join roles_employee re 
on re.employee_id  = es.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%QA engineer';

--  25. Вывести количество QA инженеров
select count(employee_name)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%QA engineer';

-- 26. Вывести количество Middle специалистов.
select count(employee_name)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like 'Middle%';

--  27. Вывести количество разработчиков
select count(employee_name)
from employees e 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%developer';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(mounthly_salary) 
from employees e
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id 
where r.role_name like '%developer';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию ЗП
select employee_name, role_name, mounthly_salary
from employees e
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
order by mounthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию ЗП, у специалистов, у которых ЗП от 1700 до 2300
select employee_name, role_name, mounthly_salary
from employees e
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where mounthly_salary between 1700 and 2300
order by mounthly_salary;

--  31. Вывести имена, должности и ЗП всех специалистов по возрастанию ЗП, у специалистов, у которых ЗП меньше 2300
select employee_name, role_name, mounthly_salary
from employees e
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where mounthly_salary < 2300
order by mounthly_salary;

--  32. Вывести имена, должности и ЗП всех специалистов по возрастанию ЗП, у специалистов, 
-- у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, mounthly_salary
from employees e
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on s.id = es.salary_id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on r.id = re.role_id
where mounthly_salary in (1100,  1500, 2000)
order by mounthly_salary;


