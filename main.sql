
-- create student table 
CREATE TABLE STUDENT (
  Enrollment_Number varchar(15) PRIMARY KEY,
  Name varchar(50) NOT NULL,
  Branch varchar(50) NOT NULL,
  Batch int NOT NULL,
  Date_of_Birth date NOT NULL
);

-- create student details table 
CREATE TABLE STUDENT_DETAILS (
  Enrollment_Number varchar(15) PRIMARY KEY,
  Email_Id  varchar(50) NOT NULL,
  Fathers_Name varchar(50),
  Mothers_Name varchar(50),
  Adress varchar(100),
  Contact_Number varchar(11) NOT NULL,
  Gender char
);

-- create table faculty 
CREATE TABLE FACULTY(
  Faculty_Code varchar(10) PRIMARY KEY,
  Name varchar(50) NOT NULL,
  Date_of_Birth date NOT NULL,
  Email_Id  varchar(50) NOT NULL,
  Contact_Number varchar(11) NOT NULL 
);

-- create table assignments
CREATE TABLE ASSIGNMENTS(
  Assignment_Code varchar(10) PRIMARY KEY,
  Enrollment_Number varchar(15) NOT NULL,
  Faculty_Code varchar(10) NOT NULL,
  Subject_Code varchar(10) NOT NULL,
  Semester int NOT NULL,
  Assignment_Type varchar(15),
  Total_Marks int NOT NULL,
  Due_Date date,
  Marks_Obtained int,
)

-- create table subject
CREATE TABLE SUBJECT(
  Subject_Code varchar(10) PRIMARY KEY,
  Subject_Name varchar(50) NOT NULL,
  Branch varchar(50) NOT NULL,
  Semester int NOT NULL,
  Credit_Score NOT NULL
)

-- create table subject units
CREATE TABLE SUBJECT_UNITS(
  Unit_Code varchar(10) PRIMARY KEY,
  Unit_Name varchar(50) NOT NULL
)

-- create table Learning resources
CREATE TABLE LEARNING_RESOURCES(
  Unit_Code varchar(10) PRIMARY KEY,
  Resource varchar(50) NOT NULL,
  Faculty_Code varchar(10) NOT NULL,
  Comments varchar(100)
)

-- Create table results 
CREATE TABLE RESULTS(
 Enrollment_Number varchar(15) PRIMARY KEY,
 Subject_Code varchar(10) NOT NULL,
 Faculty_Code varchar(10) NOT NULL,
 Marks_Obtained int,
 Maximum_Marks int NOT NULL,
 Branch varchar(50) NOT NULL,
 Semester int NOT NULL
)

