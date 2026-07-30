use sakila ;
use mysqldump;
SELECT fname, salary FROM employee ORDER BY fname DESC;

SELECT dno FROM employee;
SELECT distinct dno FROM employee;

SELECT distinct superssn, dno FROM employee;
USE company;

SELECT fname, dname FROM employee, department WHERE ssn = mgrssn;

SELECT fname, dname FROM employee JOIN department ON ssn = mgrssn; #map PK -> FK
ALTER TABLE department RENAME COLUMN dnum TO dno;

SELECT fname, dname FROM employee JOIN department ON employee.dno = department.dno;

SELECT fname, dname FROM employee AS e JOIN department AS d ON d.dno = e.dno; #Best

SELECT concat(fname, ' ', lname) AS 'Full Name', pname, weekly_hours FROM employee, project, works_on WHERE ssn = essn AND pnumber = pno; # Use Join

SELECT concat(fname, ' ', lname) AS 'Full Name', dname FROM employee AS e LEFT OUTER JOIN department AS d ON d.dno = e.dno;

SELECT concat(fname, ' ', lname) AS 'Full Name', dname FROM employee AS e RIGHT OUTER JOIN department AS d ON d.dno = e.dno;

SELECT concat(fname, ' ', lname) AS 'Full Name', dname FROM employee AS e LEFT OUTER JOIN department AS d ON d.dno = e.dno
UNION
SELECT concat(fname, ' ', lname) AS 'Full Name', dname FROM employee AS e RIGHT OUTER JOIN department AS d ON d.dno = e.dno;

SELECT concat(e.fname, ' ', e.lname) AS 'Employee Full Name', concat(m.fname, ' ', m.lname) AS 'Manager Full Name' FROM employee e JOIN employee m ON m.ssn = e.superssn;

SELECT e.fname, e.lname, s.fname, s.lname FROM employee e, employee s WHERE e.superssn = s.ssn;
INSERT INTO `company`.`department`
(`dno`, `dname`, `mgrssn`, `MGRStart Date`)
VALUES
('40', 'DP4', '521634', '2006-06-01');

SELECT salary FROM employee WHERE fname = 'Ahmed' AND lname = 'Hassan';

SELECT * FROM employee WHERE salary > (SELECT salary FROM employee WHERE fname = 'Ahmed ' AND lname = 'Ali');

SELECT salary FROM employee WHERE dno = 10;

SELECT * FROM employee WHERE salary > ALL (SELECT salary FROM employee WHERE dno = 10);

SELECT * FROM employee WHERE salary > ANY (SELECT salary FROM employee WHERE dno = 10);

SELECT max(salary) FROM employee;

SELECT max(salary) AS Max, 
       min(salary) AS Min, 
       avg(salary) AS Avg 
FROM employee;

SELECT count(ssn) AS employee, count(salary) AS salary FROM employee;

SELECT sum(salary) FROM employee;

SELECT sum(salary * 12) AS 'Over All Salary' FROM employee;

SELECT avg(salary) AS AvgSalary FROM employee GROUP BY dno HAVING max(salary) > 1800;

SELECT dname, max(salary) 
FROM department d, employee e 
WHERE d.dno = e.dno 
GROUP BY d.dname 
HAVING avg(salary) > 1200 
ORDER BY dname;

SELECT count(salary) FROM employee; #230350 / 13

SELECT avg(salary) FROM employee; #17719.2308

CREATE VIEW emp_salary AS SELECT fname, ssn, salary FROM employee WHERE salary > 2000 WITH CHECK OPTION;

CREATE OR REPLACE VIEW emp_salary AS SELECT fname, ssn, salary FROM employee WHERE salary > 2000 WITH CHECK OPTION;

SELECT * FROM emp_salary;


SELECT * FROM employee;
UPDATE emp_salary SET salary = 500 WHERE ssn = 102672;
DROP VIEW emp_salary;

CREATE INDEX emp_salary ON employee(fname);

CREATE INDEX first_name ON employee(fname);
SHOW INDEX FROM employee;
SELECT fname FROM employee;
DROP INDEX emp_salary ON employee;