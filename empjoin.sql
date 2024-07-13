select * from dataset
select * from company

select * from performance

select d.education, d.recruitment_channel, c.salary, c.annual_bonus 
	from dataset as d
inner join  company AS C
on d.employee_id = c.employee_id


select d.department, d.no_of_trainings, c.company , c.department, p.name, p.salary from dataset as d
left join company as c
on  d.employee_id = c.employee_id
left join performance as p
on  d.employee_id = p.employeeid

select d.recruitment_channel, d.avg_training_score, c.company, c.age, p.name, p.salary from dataset as d
right join company as c
on d.employee_id = c.employee_id
right join performance as p
on d.employee_id = p.employeeid

select * from dataset
select * from company
select * from performance

select * from dataset
select * from company

select d.department, sum(p.salary), p.name  from dataset as d
inner join performance as p 
on d.employee_id = p.employeeid
group by d.department, p.name
having sum (p.salary) > 129149
limit 10

select d.department, sum(p.salary), p.name  from dataset as d
inner join performance as p 
on d.employee_id = p.employeeid
group by d.department, p.name
having sum (p.salary) > 129149
limit 10

select d.department, sum(p.salary), p.name  from dataset as d
inner join performance as p 
on d.employee_id = p.employeeid
group by d.department, p.name
having sum (p.salary) > 129149
limit 10
	
select * from performance

	
select d.department, sum(p.salary), avg (p.performancescore), p.name  from dataset as d
inner join performance as p 
on d.employee_id = p.employeeid
group by d.department, p.name
having sum (p.salary) > 139273
order by avg (p.performancescore) asc
limit 10
offset 10

select * from dataset
	select * from company
select * from performance

select d.department , d.recruitment_channel, c. company, sum (c.annual_bonus) from dataset as d
inner join company as c
on d.employee_id = c.employee_id
group by d.department , d.recruitment_channel, c. company
having sum (c.annual_bonus) > 928643.968036
limit 10

select d.department, sum(d.age) as total_age, p.name from dataset as d
inner join performance as p
on d.employee_id = p.employeeid
group by p.name , d.department

select  * from company
select * from performance
select * from dataset

select d.department, sum(d.no_of_trainings), c.salary from dataset as d
inner join company as c
on d.employee_id = c.employee_id
group by d.department, c.salary
having sum (d.no_of_trainings) >5






