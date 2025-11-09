
CREATE TABLE departments (
    DeptName VARCHAR(50),
    Building VARCHAR(50),
    Budget NUMERIC (11, 2),
    PRIMARY KEY(deptname)
);




--
INSERT INTO prerequisites(coursecode, preqid) VALUES ('BIO-301','BIO-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('BIO-301','BIO-101');


insert into course(course_id, title, dept_name, credits)
values ('BIO-301', 'Genetics', 'Biology', 4);

INSERT INTO prerequisites(coursecode, preqid) VALUES ()
