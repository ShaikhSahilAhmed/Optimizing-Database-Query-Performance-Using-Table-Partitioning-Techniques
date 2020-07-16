create table StudentInfo_P (
	Stno INT,
	AdminYear INT,
	Fname VARCHAR(50),
	Mname VARCHAR(50),
	Lname VARCHAR(50),
	FacultyID INT,
	St_Address VARCHAR(50),
	Gender VARCHAR(50),
	StStatus VARCHAR(50),
	DoB DATE,
	PRIMARY KEY(Stno)
    )
PARTITION BY HASH(Stno) 
PARTITIONS 4;

insert into StudentInfo_P select * from studentinfo;

commit;

BEGIN
DBMS_STATS.gather_table_stats('HR','StudentInfo_P');
END;
/

DROP TABLE STUDENTINFO_P;

create table schedule_P (
	CourseID  INT,
	Section INT,
	Year VARCHAR(50),
	Term INT,
	FacultyID INT,
	Room INT,
	MaxCapacity INT,
	ActualNumber INT,
	SecDays VARCHAR(50),
	SecDaysGroup INT,
	SecTime VARCHAR(50),
	InstructorID INT,
	PRIMARY KEY(CourseID)
)
PARTITION BY HASH(SecDaysGroup) 
PARTITIONS 3;

insert into schedule_P select * from schedule;

BEGIN
DBMS_STATS.gather_table_stats('HR','schedule_P');
END;
/

DROP TABLE schedule_P;


select COURSEID FROM schedule_P where SecDays = 'MONDAY';