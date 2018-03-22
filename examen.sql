CREATE TABLE SALARIES 
(id Number(*,0) not null primary key, 
salary Number(10,2) Not Null , 
employee_id Number(*,0) not null , 
project_id Number(*,0) not null,
constraint salaries_project_FK references PROJECTS(id)
constraint salaries_employee_FK references EMPLOYEES(id))

CREATE TABLE EMPLOYEES 
(id Number(*,0) not null primary key, 
manager_id Number(*,0) not null , 
date_of_joinig date not null, 
full_name  varchar(50)not null,
constraint EMPLOYEES_manager_FK references PROJECTS(id))

CREATE TABLE PROJECTS 
(id Number(*,0) not null primary key, 
code varchar(255)not null, 
manager_id Number(*,0) not null , 
budget Number(10,2),
date_of_beginning date, 
date_of_ending date,
constraint PROJECTS_manager_FK references EMPLOYEES(id))