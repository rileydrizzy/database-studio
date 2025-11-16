CREATE TABLE departments (
    DeptName VARCHAR(50),
    Building VARCHAR(50),
    Budget NUMERIC (11, 2),
    PRIMARY KEY(deptname)
);
--
INSERT INTO prerequisites(coursecode, preqid) VALUES ('BIO-301','BIO-101');
INSERT INTO prerequisites(coursecode, preqid)
VALUES ('BIO-301', 'BIO-101');
-- Script to write SQL
INSERT INTO pg_hba_file_rules(type, database, user_name, auth_method)
VALUES ('local', 'practice_db', 'lucas', 'reject')
INSERT INTO pg_hba_file_rules(type, database, user_name, auth_method)
VALUES('local', 'practice_db', 'teachers', 'reject')
SELECT line_number,
    type,
    database,
    user_name,
    address,
    auth_method
FROM pg_hba_file_rules;
CREATE SCHEMA test_schema AUTHORIZATION myuser;
insert into course(course_id, title, dept_name, credits)
values ('BIO-301', 'Genetics', 'Biology', 4);
INSERT INTO prerequisites(coursecode, preqid)
VALUES ()

 \ copy department(DeptName, Building, Budget)
FROM '/teamspace/studios/this_studio/database-studio/department2.csv' DELIMITER ',' CSV HEADER;