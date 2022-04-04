#CREATE DATABASE Job;
USE Job;
CREATE TABLE Regions (region_id int(20),region_name varchar(50),primary key(region_id));


CREATE TABLE Countries (country_id int(20) primary key,country_name varchar(50),region_id int, foreign key(region_id) references Regions(region_id));


CREATE TABLE Locations (location_id int(20) primary key,street_address varchar(50),postal_code int(10),city varchar(50),state_province varchar(50),country_id int(20),foreign key(country_id) references Countries (country_id));

CREATE TABLE Department (department_id int(20) primary key,department_name varchar(50),location_id int(20),foreign key(location_id) references Locations (location_id));

CREATE TABLE Jobs (job_id int(20) primary key,job_title varchar(50),min_salary int(20),max_salary int(20));

CREATE TABLE Employees(employee_id int(20) primary key,firstname varchar(20),lastname varchar(20),email varchar(20),phone_number int(10),hire_date date,job_id int(20),foreign key(job_id) references Jobs (job_id),Salary int(20),manager_id int(20),foreign key(manager_id) references Employees(employee_id),department_id int(20),foreign key(department_id) references Department (department_id));

CREATE TABLE Dependents(dependent_id int(20),firstname varchar(20),lastname varchar(20),relationship varchar(20),employee_id int(20),foreign key(employee_id) references Employees (employee_id));
