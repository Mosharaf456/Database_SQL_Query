 ##Subquery use
##from one table max value find  compare to others or not...
SELECT MAX(EmpID) FROM mdb2.emp_test where EmpID > (select  max(EmpID) from mdb2.emp);

SELECT MAX(EmpID) FROM mdb2.emp where EmpID > (select  max(EmpID) from mdb2.emp_test);
### from different multiple 2 tables max value find ........
SELECT MAX(EmpID) FROM
    (
    SELECT EmpID FROM  mdb2.emp
    UNION ALL
    SELECT EmpID FROM  mdb2.emp_test
    ) as subQuery ;

####for nth max like 1st(n=1) max offset must n-1 ,,
#### 1-1=0
SELECT * FROM
    (
    SELECT EmpID FROM  mdb2.emp
    UNION ALL
    SELECT EmpID FROM  mdb2.emp_test
    ) as subQ order by EmpID desc LIMIT 1 OFFSET 0;
    
    
####for nth min like 1st(n=1) max offset must n-1 ,,
#### 1-1=0
SELECT * FROM
    (
    SELECT EmpID FROM  mdb2.emp
    UNION ALL
    SELECT EmpID FROM  mdb2.emp_test
    ) as subQ order by EmpID asc LIMIT 1 OFFSET 0;
    
##another one from different  3 tables
SELECT MAX(EmpID) as MaxID,MIN(EmpID)as MinID
FROM
    (
    SELECT EmpID FROM  mdb2.emp
    UNION ALL
    SELECT EmpID FROM  mdb2.emp_test
    UNION ALL
    SELECT DeptID FROM  mdb2.dept
    ) foo ;
    
###Second largest number find
Select MAX(EmpID) from mdb2.emp where EmpID <(Select MAX(EmpID) from mdb2.emp) ;

###Another easy way nth largest value find
### To achieve the Nth MAX value then must give the OFFSET as (N - 1).
###3rd max 3-1= offset 2
select * from mdb2.emp order by EmpID desc LIMIT 1 OFFSET 2;
###2nd max find
select * from mdb2.emp order by EmpID desc LIMIT 1 OFFSET 1;
##second small
select * from mdb2.emp order by EmpID asc LIMIT 1 OFFSET 1;
##3rd small
select * from mdb2.emp order by EmpID asc LIMIT 1 OFFSET 2;

