select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%Query1%';
      
    SELECT DISTINCT CourseID, Title
    FROM StudentInfo, courseinfo
    WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND Stno > 20160001 /*Query1*/
        
    SELECT DISTINCT CourseID, Title
    FROM StudentInfo_P, courseinfo
    WHERE StudentInfo_P.FacultyID = courseinfo.FacultyID AND Stno > 20160001/*Query1*/
    
select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%query2%';

SELECT DISTINCT courseinfo.CourseID, Section 
FROM courseinfo JOIN schedule ON courseinfo.CourseID = schedule.CourseID
WHERE  SecDays = 'MONDAY' OR SecDays= 'WEDNESDAY'
AND SecTime > '15:30'/*query2*/

SELECT DISTINCT courseinfo.CourseID, Section 
FROM courseinfo JOIN schedule_P ON courseinfo.CourseID = schedule_P.CourseID
WHERE  SecDays = 'MONDAY' OR SecDays= 'WEDNESDAY'
AND SecTime > '15:30'/*query2*/


select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%query3%';

    SELECT  DISTINCT Fname, Mname, Lname
    FROM StudentInfo, schedule
    WHERE StudentInfo.FacultyID = schedule.FacultyID AND SecTime > '08:00'/*query3*/
    
    SELECT  DISTINCT Fname, Mname, Lname
    FROM StudentInfo_P, schedule_P
    WHERE StudentInfo_P.FacultyID = schedule_P.FacultyID AND SecTime > '08:00'/*query3*/
    
    
select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%query4%';

SELECT courseinfo.CourseID,Title
FROM courseinfo JOIN schedule ON courseinfo.CourseID = schedule.CourseID 
WHERE (SecDays ='MONDAY' OR SecDays='WEDNESDAY')
AND MaxCapacity = ActualNumber/*query4*/


SELECT courseinfo.CourseID,Title
FROM courseinfo JOIN schedule_P ON courseinfo.CourseID = schedule_P.CourseID 
WHERE (SecDays ='MONDAY' OR SecDays='WEDNESDAY')
AND MaxCapacity = ActualNumber/*query4*/


select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%query5%';

    SELECT *
	FROM StudentInfo
	WHERE Stno IS NULL/*query5*/
    
    SELECT *
	FROM StudentInfo_P
	WHERE Stno IS NULL/*query5*/


select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%query6%';

SELECT *
FROM StudentInfo
WHERE FacultyID is NULL/*query6*/

SELECT *
FROM StudentInfo_P
WHERE FacultyID is NULL/*query6*/


select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%query7%';

SELECT  Stno, Fname, Mname, Lname, Title
FROM StudentInfo, courseinfo
WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND CourseType = 'MASTER'/*query7*/

SELECT  Stno, Fname, Mname, Lname, Title
FROM StudentInfo_P, courseinfo
WHERE StudentInfo_P.FacultyID = courseinfo.FacultyID AND CourseType = 'MASTER'/*query7*/


select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%query8%';

    SELECT  Stno, Fname, Mname, Lname, Title
	FROM StudentInfo, courseinfo
	WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND Title = 'LAB'/*query8*/
    
    SELECT  Stno, Fname, Mname, Lname, Title
	FROM StudentInfo_P, courseinfo
	WHERE StudentInfo_P.FacultyID = courseinfo.FacultyID AND Title = 'LAB'/*query8*/
    
    
select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%query9%';

SELECT DISTINCT Title
FROM StudentInfo, courseinfo
WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND Stno BETWEEN 20140001 AND 20159999/*query9*/

SELECT DISTINCT Title
FROM StudentInfo_P, courseinfo
WHERE StudentInfo_P.FacultyID = courseinfo.FacultyID AND Stno BETWEEN 20140001 AND 20159999/*query9*/


select elapsed_time, CPU_TIME, SQL_TEXT from v$sql where SQL_TEXT like '%query10%';

    SELECT DISTINCT Title
    FROM courseinfo MINUS
    SELECT DISTINCT Title 
    FROM StudentInfo, courseinfo
    WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND Stno < 20149999/*query10*/
    
        SELECT DISTINCT Title
    FROM courseinfo MINUS
    SELECT DISTINCT Title 
    FROM StudentInfo_P, courseinfo
    WHERE StudentInfo_P.FacultyID = courseinfo.FacultyID AND Stno < 20149999 /*query10*/