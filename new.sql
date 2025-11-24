CREATE TABLE test(Deptname VARCHAR(20) PRIMARY KEY, id INT);
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    Deptname VARCHAR(20),
    FOREIGN KEY (Deptname) REFERENCES test
);
CREATE TABLE course (
    course_code INT PRIMARY KEY,
    course_name VARCHAR(60),
    Deptname VARCHAR(20),
    FOREIGN KEY (Deptname) REFERENCES test
);
CREATE TABLE enroll (
    students_id INT,
    course_code INT,
    PRIMARY KEY (students_id, course_code),
    FOREIGN KEY (students_id) REFERENCES students(id),
    FOREIGN KEY (course_code) REFERENCES course(course_code)
);