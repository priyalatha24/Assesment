--Employee table--
-- create table if not exists employee (
--     emp_id integer primary key,
--     first_name character varying,
--     last_name character varying,
--     birth_day date,
--     sex character,
--     salary bigint,
--     super_id character varying,
--     branch_id integer
-- );
-- insert into Employee values(20,'Finn','Muller','12.05.67','M',85000,' ',1),
--                            (21,'Lucas','Schmidt','30.08.72','M',200000,'20',1),
--                           (22,'Jonas','Fischer','01.01.83','M',65000,'22',2),
-- 						   (23,'Ella','Weber','22.05.64','F',1700000,'22',2),
-- 						   (24,'Ida','Wagner','07.03.70','F',90000,'22',2),
-- 						   (25,'Ben','Scheider','25.08.73','M',72000,'22',2),
-- 						   (26,'Oliver','Brown','02.03.89','M',199000,'26',3),
-- 						   (27,'Leonie','Williams','07.07.77','F',800000,'26',3),
-- 						   (28,'Lea','Zimmerman','5.12.83','F',62000,'26',3)

-- select*from Employee
-----------------------------
--Branch table--
create table if not exists branch (
    branch_id integer primary key,
    branch_name character varying,
    mgr_id integer,
    mgr_start_date date
);

/*insert into branch values(1,'Insurance',20,'06.02.22'),
                         (2,'Account',22,'01.04.22'),
						 (3,'Energy',26,'24.02.19')*/
--select*from branch

------------------------------
--Branch_supplier--

-- create table if not exists branch_supplier (
--     branch_id integer,
--     supplier_name character varying,
--     supply_type character varying)


-- insert into branch_supplier values(1,'S_Direkit','Insurance'),
--                         (1,'Inshared','Insurance'),
-- 						(2,'Deutsche_Bank','Credit'),
-- 						(2,'Commmerzbank','Credit'),
-- 						(3,'Ostrom','Renewable'),
-- 						(3,'E.ON_Energy','Electricity')
-- 						on conflict do nothing

--select*from branch_supplier
------------------------------
--Client--
-- create table if not exists client (
--     client_id integer primary key,
--     first_name character varying,
--     last_name  character varying,
--     branch_id integer)

-- insert into client values(10,'Daniel','Maier',2),
--                        (11,'Ella','Walter',2),
-- 						(12,'Zhang','Wei',1),
-- 					   (13,'Ivan','Kirillov',3),
-- 						(14,'John','Smith',3),
-- 					    (15,'Dirik','Pelletr',1),
-- 						(16,'Tobias','Roth',1),
-- 						(27,'Leonie','Willams',1)
-- select*from client
------------------------------
--Works_with--

-- create table if not exists works_with (
--     emp_id integer,
--     client_id integer,
--     total_sales bigint,
--     primary key (emp_id, client_id)
 
-- );



-- insert into works_with values(28,14,120000),
--                         (22,15,6000),
-- 						(20,15,6000),
-- 						(25,16,55000),
-- 						 (21,11,40000)
--select*from works_with
----------------------
-- update employee
-- set salary = salary * 1.10
-- from branch_supplier
-- where employee.branch_id = 1
-- and branch_supplier.branch_id = 1
-- and branch_supplier.supply_type = 'Insurance'
----------------------
-- select * from works_with;
-- update client set last_name = 'shan' where client_id = 12;

--select*from client
