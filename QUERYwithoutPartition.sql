    SELECT DISTINCT CourseID, Title
    FROM StudentInfo, courseinfo
    WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND Stno > 20160001

SELECT DISTINCT courseinfo.CourseID, Section 
FROM courseinfo JOIN schedule ON courseinfo.CourseID = schedule.CourseID
WHERE  SecDays = 'MONDAY' OR SecDays= 'WEDNESDAY'
AND SecTime > '15:30';

    
    SELECT  DISTINCT Fname, Mname, Lname
    FROM StudentInfo, schedule
    WHERE StudentInfo.FacultyID = schedule.FacultyID AND SecTime > '08:00';


SELECT courseinfo.CourseID,Title
FROM courseinfo JOIN schedule ON courseinfo.CourseID = schedule.CourseID 
WHERE (SecDays ='MONDAY' OR SecDays='WEDNESDAY')
AND MaxCapacity = ActualNumber
   
    SELECT *
	FROM StudentInfo
	WHERE Stno IS NULL;

SELECT *
FROM StudentInfo
WHERE FacultyID is NULL


SELECT  Stno, Fname, Mname, Lname, Title
FROM StudentInfo, courseinfo
WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND CourseType = 'MASTER'


    SELECT  Stno, Fname, Mname, Lname, Title
	FROM StudentInfo, courseinfo
	WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND Title = 'LAB'
    

SELECT DISTINCT Title
FROM StudentInfo, courseinfo
WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND Stno BETWEEN 20140001 AND 20159999;
    
    

    SELECT DISTINCT Title
    FROM courseinfo MINUS
    SELECT DISTINCT Title 
    FROM StudentInfo, courseinfo
    WHERE StudentInfo.FacultyID = courseinfo.FacultyID AND Stno < 20149999 

