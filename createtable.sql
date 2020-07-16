create table StudentInfo (
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
);


create table CourseInfo (
	CourseID INT,
	Title VARCHAR(200),
	Hours INT,
	FacultyID INT,
	DeptID INT,
	CourseType VARCHAR(50),
	PRIMARY KEY(CourseID)
);


create table schedule (
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
);

