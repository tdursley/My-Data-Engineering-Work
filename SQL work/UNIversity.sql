-- Students Table
CREATE TABLE Students (
    Student_ID SERIAL PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Date_of_Birth DATE,
    Email VARCHAR(150),
    Phone VARCHAR(15)
);

-- Courses Table
CREATE TABLE Courses (
    Course_ID SERIAL PRIMARY KEY,
    Course_Name VARCHAR(100),
    Credits INT
);

-- Professors Table
CREATE TABLE Professors (
    Professor_ID SERIAL PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Email VARCHAR(150),
    Phone VARCHAR(15)
);

-- Modules Table
CREATE TABLE Modules (
    Module_ID SERIAL PRIMARY KEY,
    Module_Name VARCHAR(100),
    Course_ID INT REFERENCES Courses(Course_ID),
    Professor_ID INT REFERENCES Professors(Professor_ID)
);

-- Assignments Table
CREATE TABLE Assignments (
    Assignment_ID SERIAL PRIMARY KEY,
    Assignment_Title VARCHAR(100),
    Module_ID INT REFERENCES Modules(Module_ID),
    Due_Date DATE
);

-- Grades Table
CREATE TABLE Grades (
    Grade_ID SERIAL PRIMARY KEY,
    Assignment_ID INT REFERENCES Assignments(Assignment_ID),
    Student_ID INT REFERENCES Students(Student_ID),
    Grade VARCHAR(2)
);