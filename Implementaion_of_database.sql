create database P1;
show databases;
use P1;
CREATE TABLE Students (
    StudentID VARCHAR(20) PRIMARY KEY,
    StudentName VARCHAR(100),
    Major VARCHAR(50)
);
CREATE TABLE Courses (
    CourseID VARCHAR(20) PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT
);
CREATE TABLE Enrollments (
    StudentID VARCHAR(20),
    CourseID VARCHAR(20),
    EnrollmentDate DATE,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    InstructorName VARCHAR(100),
    Phone BIGINT
);
CREATE TABLE Course_Instructors (
    CourseID VARCHAR(20),
    InstructorID INT,
    PRIMARY KEY (CourseID, InstructorID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID)
);



