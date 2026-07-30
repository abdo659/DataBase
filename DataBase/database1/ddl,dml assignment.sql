use school;
CREATE TABLE students (ID numeric Primary Key,First_name char(50) not null , last_name char(50) , salary numeric , address char(50),
city char(50) not null , country char(50),BirthDate date,check(salary>=10000) );
ALTER TABLE students add postal_code numeric;
ALTER TABLE STUDENTS drop postal_code;
DROP TABLE Students; #remove all table
TRUNCATE TABLE students;#keep structure


use dmltest  ;
INSERT INTO employee(fname ,lname,ssn,bdate,address,gender,salary,superssn,dno)
values ('ahmed','kariem','107679','2003-08-10','20elharam st','male','50000','112233','30'),
('ahmed','arafa','107688','2003-08-10','20elharam st','male','50000','112233',30);

INSERT INTO employee
values ('ahmed','ebrahim',107699,'2003-08-10','20elharam st','male','50000','112233','30');

INSERT INTO employee(fname ,lname,ssn,bdate,gender,dno)
values ('asmaa','ali','102674','2003-08-10','f','10');

UPDATE employee SET Salary=40000, dno=30 WHERE ssn='102674';
UPDATE employee SET Salary=null WHERE ssn='102674';
DELETE FROM employee WHERE ssn='102674';

SELECT * FROM employee WHERE DNO=10;
SELECT * FROM project WHERE city = 'Cairo';
SELECT pname,pnumber FROM project WHERE city = 'Cairo';
SELECT * FROM employee where salary>=1500;
SELECT * FROM employee where salary between 1500 and 3000;
SELECT * FROM employee where superssn= 332244 or superssn=321654 ;
SELECT * FROM employee where superssn in(332244,321654)  ; #or

SELECT * FROM employee WHERE fname like '_a%';
SELECT * FROM employee WHERE fname like 'moha%ed';

SELECT DISTINCT dno FROM employee;




