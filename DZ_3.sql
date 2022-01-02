 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 select * from employees ;
select * from salary ;
select * from employee_salary ;

select  employee_name, monthly_salary from employee_salary 
join employees 
on employee_salary.id_employee =employees.id
join salary 
on employee_salary.id_salary=salary.id;

 --2. Вывести всех работников у которых ЗП меньше 2000.
select  employee_name, monthly_salary from employee_salary 
join employees 
on employee_salary.id_employee =employees.id
join salary 
on employee_salary.id_salary=salary.id
where monthly_salary<2000;

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select  employee_name, monthly_salary from employee_salary 
left join employees 
on employee_salary.id_employee = employees.id
join salary 
on employee_salary.id_salary=salary.id
 where  employee_name is null ;
 
--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select  employee_name, monthly_salary from employee_salary 
left join employees 
on employee_salary.id_employee = employees.id
join salary 
on employee_salary.id_salary=salary.id
 where  employee_name is null and monthly_salary < 2000 ;

--5. Найти всех работников кому не начислена ЗП.
select  employee_name, monthly_salary from employee_salary 
full join employees 
on employee_salary.id_employee =employees.id
full join salary 
on employee_salary.id_salary=salary.id
where monthly_salary is null ;


--6.Вывести всех работников с названиями их должности.
select employee_name , role_name from employees 
 left join roles_employee 
on employees.id = roles_employee.employee_id 
left join roles  
on roles_employee.role_id  = roles.id ;


 --7. Вывести имена и должность только Java разработчиков.
select employee_name , role_name from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
where role_name Like '%Java_developer%';

 --8. Вывести имена и должность только Python разработчиков.
select employee_name , role_name from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
where role_name Like '%Python_developer%';

 --9. Вывести имена и должность всех QA инженеров.
 select employee_name , role_name from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
where role_name Like '%QA%engineer%';


 --10. Вывести имена и должность ручных QA инженеров.
 select employee_name , role_name from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
where role_name Like '%Manual%QA%';


 --11. Вывести имена и должность автоматизаторов QA
 select employee_name , role_name from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
where role_name Like '%Automation%QA%';

 --12. Вывести имена и зарплаты Junior специалистов
  select employee_name , role_name from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
where role_name Like '%Junior%';

 
 --13. Вывести имена и зарплаты Middle специалистов
select employee_name , role_name, monthly_salary from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
full join employee_salary 
on employees.id = employee_salary.id_employee 
full join salary 
on employee_salary.id_salary=salary.id
where role_name Like '%Middle%';

 --14. Вывести имена и зарплаты Senior специалистов
select employee_name , role_name, monthly_salary from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
full join employee_salary 
on employees.id = employee_salary.id_employee 
full join salary 
on employee_salary.id_salary=salary.id
where role_name Like '%Senior%';

 --15. Вывести зарплаты Java разработчиков
select employee_name , role_name, monthly_salary from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
full join employee_salary 
on employees.id = employee_salary.id_employee 
full join salary 
on employee_salary.id_salary=salary.id
where role_name Like '%Java%developer%';

 --16. Вывести зарплаты Python разработчиков
select employee_name , role_name, monthly_salary from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
full join employee_salary 
on employees.id = employee_salary.id_employee 
full join salary 
on employee_salary.id_salary=salary.id
where role_name Like '%Python%developer%';

 --17. Вывести имена и зарплаты Junior Python разработчиков
 select employee_name , role_name, monthly_salary from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
full join employee_salary 
on employees.id = employee_salary.id_employee 
full join salary 
on employee_salary.id_salary=salary.id
where role_name Like '%Junior%Python%developer%';

 --18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name , role_name, monthly_salary from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
full join employee_salary 
on employees.id = employee_salary.id_employee 
full join salary 
on employee_salary.id_salary=salary.id
where role_name Like '%Middle%J%S%developer%';

 --19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name , role_name, monthly_salary from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
full join employee_salary 
on employees.id = employee_salary.id_employee 
full join salary 
on employee_salary.id_salary=salary.id
where role_name Like '%Senior%Java%developer';
 
 
 --20. Вывести зарплаты Junior QA инженеров
 select employee_name , role_name, monthly_salary from employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
full join employee_salary 
on employees.id = employee_salary.id_employee 
full join salary 
on employee_salary.id_salary=salary.id
where role_name Like '%Junior%QA%';
 
 --21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary)
from  employees 
full join roles_employee 
on employees.id = roles_employee.employee_id 
full join roles  
on roles_employee.role_id  = roles.id 
full join employee_salary 
on employees.id = employee_salary.id_employee 
full join salary 
on employee_salary.id_salary=salary.id
where role_name Like '%Junior%' ;

 
-- 22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) from employees e 
full join roles_employee
on e.id=roles_employee.employee_id 
full join roles r 
on roles_employee.role_id=r.id 
full join employee_salary es 
on e.id=es.id_employee 
full join salary s 
on es.id_salary=s.id 
where role_name like '%J%S%developer'
;


 --23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) from employees e 
full join roles_employee
on e.id=roles_employee.employee_id 
full join roles r 
on roles_employee.role_id=r.id 
full join employee_salary es 
on e.id=es.id_employee 
full join salary s 
on es.id_salary=s.id 
where role_name like '%QA%engineer'
;

 --24. Вывести максимальную ЗП QA инженеров
select max ( monthly_salary) from employees e 
full join roles_employee
on e.id=roles_employee.employee_id 
full join roles r 
on roles_employee.role_id=r.id 
full join employee_salary es 
on e.id=es.id_employee 
full join salary s 
on es.id_salary=s.id 
where role_name like '%QA%engineer%'
;

 --25. Вывести количество QA инженеров
select  count(role_name) from employees e 
full join roles_employee
on e.id=roles_employee.employee_id 
full join roles r 
on roles_employee.role_id=r.id 
where role_name like '%QA%engineer%'
;

 --26. Вывести количество Middle специалистов.
select  count(role_name) from employees e 
full join roles_employee
on e.id=roles_employee.employee_id 
full join roles r 
on roles_employee.role_id=r.id 
where role_name like '%Middle%'
;

 --27. Вывести количество разработчиков
select  count (role_name) from employees e 
full join roles_employee
on e.id=roles_employee.employee_id 
full join roles r 
on roles_employee.role_id=r.id 
where role_name like '%developer%'


 --28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) from employees e 
full join roles_employee
on e.id=roles_employee.employee_id 
full join roles r 
on roles_employee.role_id=r.id 
full join employee_salary es 
on e.id=es.id_employee 
full join salary s 
on es.id_salary=s.id 
where role_name like '%developer%'
;

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию 
 select employee_name , role_name, monthly_salary from employees 
join roles_employee 
on employees.id = roles_employee.employee_id 
 join roles  
on roles_employee.role_id  = roles.id 
 join employee_salary 
on employees.id = employee_salary.id_employee 
 join salary 
on employee_salary.id_salary=salary.id 
order by salary.monthly_salary;


 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name , role_name, monthly_salary from employees 
  join roles_employee 
on employees.id = roles_employee.employee_id 
  join roles  
on roles_employee.role_id  = roles.id 
join employee_salary 
on employees.id = employee_salary.id_employee 
 join salary 
on employee_salary.id_salary=salary.id 
where monthly_salary between 1700 and  2300 
order by salary.monthly_salary ;


 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name , role_name, monthly_salary from employees 
 join roles_employee 
on employees.id = roles_employee.employee_id 
 join roles  
on roles_employee.role_id  = roles.id 
 join employee_salary 
on employees.id = employee_salary.id_employee 
 join salary 
on employee_salary.id_salary=salary.id 
where monthly_salary  <2300 
order by salary.monthly_salary ;


 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name , role_name, monthly_salary from employees 
 join roles_employee 
on employees.id = roles_employee.employee_id 
join roles  
on roles_employee.role_id  = roles.id 
 join employee_salary 
on employees.id = employee_salary.id_employee 
 join salary 
on employee_salary.id_salary=salary.id 
where monthly_salary in ( 1100, 1500, 2000)
order by salary.monthly_salary ;


		