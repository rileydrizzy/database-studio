insert into classroom (building, roomnumber, capacity) values ('Packard', '101', 500);
insert into classroom (building, roomnumber, capacity) values ('Painter', '514', 10);
insert into classroom (building, roomnumber, capacity) values ('Taylor', '3128', 70);
insert into classroom (building, roomnumber, capacity) values ('Watson', '100', 30);
insert into classroom (building, roomnumber, capacity) values ('Watson', '120', 50);

insert into department(deptname, building, budget) values ('Biology', 'Watson', 90000);
insert into department(deptname, building, budget) values ('Comp. Sci.', 'Taylor', 100000);
insert into department(deptname, building, budget) values ('Elec. Eng.', 'Taylor', 85000);
insert into department(deptname, building, budget) values ('Finance', 'Painter', 120000);
insert into department(deptname, building, budget) values ('History', 'Painter', 50000);
insert into department(deptname, building, budget) values ('Music', 'Packard', 80000);
insert into department(deptname, building, budget) values ('Physics', 'Watson', 70000);

insert into instructor(id, name, deptname, salary) values ('10101', 'Srinivasan', 'Comp. Sci.', 65000);
insert into instructor(id, name, deptname, salary) values ('12121', 'Wu', 'Finance', 90000);
insert into instructor(id, name, deptname, salary) values ('15151', 'Mozart', 'Music', 40000);
insert into instructor(id, name, deptname, salary) values ('22222', 'Einstein', 'Physics', 95000);
insert into instructor(id, name, deptname, salary) values ('32343', 'El Said', 'History', 60000);
insert into instructor(id, name, deptname, salary) values ('33456', 'Gold', 'Physics', 87000);
insert into instructor(id, name, deptname, salary) values ('45565', 'Katz', 'Comp. Sci.', 75000);
insert into instructor(id, name, deptname, salary) values ('58583', 'Califieri', 'History', 62000);
insert into instructor(id, name, deptname, salary) values ('76543', 'Singh', 'Finance', 80000);
insert into instructor(id, name, deptname, salary) values ('76766', 'Crick', 'Biology', 72000);
insert into instructor(id, name, deptname, salary) values ('83821', 'Brandt', 'Comp. Sci.', 92000);
insert into instructor(id, name, deptname, salary) values ('98345', 'Kim', 'Elec. Eng.', 80000);

insert into student(id, name, deptname, dob) values ('00128', 'Zhang', 'Comp. Sci.', '2002-03-15');
insert into student(id, name, deptname, dob) values ('12345', 'Shankar', 'Comp. Sci.', '2004-09-11');
insert into student(id, name, deptname, dob) values ('19991', 'Brandt', 'History', '2005-09-10');
insert into student(id, name, deptname, dob) values ('23121', 'Chavez', 'Finance', '2006-03-11');
insert into student(id, name, deptname, dob) values ('44553', 'Peltier', 'Physics', '2004-10-07');
insert into student(id, name, deptname, dob) values ('45678', 'Levy', 'Physics', '2006-10-09');
insert into student(id, name, deptname, dob) values ('54321', 'Williams', 'Comp. Sci.', '2004-11-23');
insert into student(id, name, deptname, dob) values ('55739', 'Sanchez', 'Music', '2003-10-14');
insert into student(id, name, deptname, dob) values ('70557', 'Snow', 'Physics', '2007-05-20');
insert into student(id, name, deptname, dob) values ('76543', 'Brown', 'Comp. Sci.', '2005-12-25');
insert into student(id, name, deptname, dob) values ('76653', 'Aoi', 'Elec. Eng.', '2006-08-10');
insert into student(id, name, deptname, dob) values ('98765', 'Bourikas', 'Elec. Eng.', '2006-01-01');
insert into student(id, name, deptname, dob) values ('98988', 'Tanaka', 'Biology', '2005-02-24');

insert into mentoring(instructorid, studentid) values ('58583', '19991');
insert into mentoring(instructorid, studentid) values ('58583', '55739');
insert into mentoring(instructorid, studentid) values ('76766', '98988');
insert into mentoring(instructorid, studentid) values ('76766', '44553');
insert into mentoring(instructorid, studentid) values ('76766', '45678');
insert into mentoring(instructorid, studentid) values ('45565', '00128');
insert into mentoring(instructorid, studentid) values ('45565', '12345');
insert into mentoring(instructorid, studentid) values ('22222', '70557');
insert into mentoring(instructorid, studentid) values ('33456', '45678');
insert into mentoring(instructorid, studentid) values ('33456', '70557');
insert into mentoring(instructorid, studentid) values ('76543', '23121');
insert into mentoring(instructorid, studentid) values ('98345', '76653');
insert into mentoring(instructorid, studentid) values ('98345', '98765');
insert into mentoring(instructorid, studentid) values ('15151', '55739');

insert into course(coursecode, title, deptname, credits) values ('BIO-101', 'Intro. to Biology', 'Biology', 4);
insert into course(coursecode, title, deptname, credits) values ('BIO-301', 'Genetics', 'Biology', 4);
insert into course(coursecode, title, deptname, credits) values ('BIO-399', 'Computational Biology', 'Biology', 3);
insert into course(coursecode, title, deptname, credits) values ('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', 4);
insert into course(coursecode, title, deptname, credits) values ('CS-190', 'Game Design', 'Comp. Sci.', 4);
insert into course(coursecode, title, deptname, credits) values ('CS-315', 'Robotics', 'Comp. Sci.', 3);
insert into course(coursecode, title, deptname, credits) values ('CS-319', 'Image Processing', 'Comp. Sci.', 3);
insert into course(coursecode, title, deptname, credits) values ('CS-347', 'Database Concepts', 'Comp. Sci.', 3);
insert into course(coursecode, title, deptname, credits) values ('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', 3);
insert into course(coursecode, title, deptname, credits) values ('FIN-201', 'Investment Banking', 'Finance', 3);
insert into course(coursecode, title, deptname, credits) values ('HIS-351', 'World History', 'History', 3);
insert into course(coursecode, title, deptname, credits) values ('MU-199', 'Music Video Production', 'Music', 3);
insert into course(coursecode, title, deptname, credits) values ('PHY-101', 'Physical Principles', 'Physics', 4);

insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('BIO-101', '1', 'Summer', 2017, 'Painter', '514');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('BIO-301', '1', 'Summer', 2018, 'Painter', '514');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('CS-101', '1', 'Fall', 2017, 'Packard', '101');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('CS-101', '1', 'Spring', 2018, 'Packard', '101');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('CS-190', '1', 'Spring', 2017, 'Taylor', '3128');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('CS-190', '2', 'Spring', 2017, 'Taylor', '3128');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('CS-315', '1', 'Spring', 2018, 'Watson', '120');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('CS-319', '1', 'Spring', 2018, 'Watson', '100');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('CS-319', '2', 'Spring', 2018, 'Taylor', '3128');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('CS-347', '1', 'Fall', 2017, 'Taylor', '3128');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('EE-181', '1', 'Spring', 2017, 'Taylor', '3128');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('FIN-201', '1', 'Spring', 2018, 'Packard', '101');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('HIS-351', '1', 'Spring', 2018, 'Painter', '514');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('MU-199', '1', 'Spring', 2018, 'Packard', '101');
insert into section(coursecode, sectionid, semester, year, building, roomnumber) values ('PHY-101', '1', 'Fall', 2017, 'Watson', '100');

insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('10101', 'CS-101', '1', 'Fall', 2017);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('10101', 'CS-315', '1', 'Spring', 2018);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('10101', 'CS-347', '1', 'Fall', 2017);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('12121', 'FIN-201', '1', 'Spring', 2018);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('15151', 'MU-199', '1', 'Spring', 2018);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('22222', 'PHY-101', '1', 'Fall', 2017);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('32343', 'HIS-351', '1', 'Spring', 2018);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('45565', 'CS-101', '1', 'Spring', 2018);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('45565', 'CS-319', '1', 'Spring', 2018);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('76766', 'BIO-101', '1', 'Summer', 2017);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('76766', 'BIO-301', '1', 'Summer', 2018);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('83821', 'CS-190', '1', 'Spring', 2017);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('83821', 'CS-190', '2', 'Spring', 2017);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('83821', 'CS-319', '2', 'Spring', 2018);
insert into teaches(instructorid, coursecode, sectionid, semester, year) values ('98345', 'EE-181', '1', 'Spring', 2017);

insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('00128', 'CS-101', '1', 'Fall', 2017, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('00128', 'CS-347', '1', 'Fall', 2017, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('12345', 'CS-101', '1', 'Fall', 2017, 'C');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('12345', 'CS-190', '2', 'Spring', 2017, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('12345', 'CS-315', '1', 'Spring', 2018, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('12345', 'CS-347', '1', 'Fall', 2017, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('19991', 'HIS-351', '1', 'Spring', 2018, 'B');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('23121', 'FIN-201', '1', 'Spring', 2018, 'D');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('44553', 'PHY-101', '1', 'Fall', 2017, 'B');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('45678', 'CS-101', '1', 'Fall', 2017, 'F');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('45678', 'CS-101', '1', 'Spring', 2018, 'B');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('45678', 'CS-319', '1', 'Spring', 2018, 'B');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('54321', 'CS-101', '1', 'Fall', 2017, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('54321', 'CS-190', '2', 'Spring', 2017, 'B');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('55739', 'MU-199', '1', 'Spring', 2018, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('76543', 'CS-101', '1', 'Fall', 2017, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('76543', 'CS-319', '2', 'Spring', 2018, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('76653', 'EE-181', '1', 'Spring', 2017, 'C');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('98765', 'CS-101', '1', 'Fall', 2017, 'D');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('98765', 'CS-315', '1', 'Spring', 2018, 'B');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('98988', 'BIO-101', '1', 'Summer', 2017, 'A');
insert into takes(studentid, coursecode, sectionid, semester, year, grade) values ('98988', 'BIO-301', '1', 'Summer', 2018, null);

-- Assignment Part 1: Make sure you complete the table creation exercise (1.5 marks).
-- Assignment Part 2: Run this script to load data into the various tables (1.5 marks).
-- Assignment Part 3: Insert at least 15 entries into the prerequisites table (5 marks).
			  -- Present your insert statements for Part 3 (textual, not a screenshot)
			  -- This may cause the expansion of the course table (if you want)
-- Assignment Part 4: Screenshot your table contents (for all ten tables) (2 marks).


-- DAT 605 Assignment 1

-- Adding the Data Science department
INSERT INTO department(deptname, building, budget) values ('Data Science', 'Watson', 1500000);

-- Adding courses
INSERT INTO course(coursecode, title, deptname, credits) VALUES ('PHY-402', 'Statistical Mechanics', 'Physics', 4);
INSERT INTO course(coursecode, title, deptname, credits) VALUES ('STA-101', 'Statistical Methods', 'Finance', 3);
INSERT INTO course(coursecode, title, deptname, credits) VALUES ('CS-102', 'Introduction to Algorithm', 'Comp. Sci.', 3);
INSERT INTO course(coursecode, title, deptname, credits) VALUES ('DAT-601', 'Fundamental to Data Science', 'Data Science', 4);
INSERT INTO course(coursecode, title, deptname, credits) VALUES ('DAT-604', 'Machine Learning', 'Data Science', 4);
INSERT INTO course(coursecode, title, deptname, credits) VALUES ('DAT-608', 'Big Data Technologies', 'Data Science', 4);
INSERT INTO course(coursecode, title, deptname, credits) VALUES ('DAT-613', 'Programming for Data Science', 'Data Science', 4);
INSERT INTO course(coursecode, title, deptname, credits) VALUES ('DAT-620', 'Blockchain, Web and Mobile Technologies', 'Data Science', 4);

-- Adding prerequisites for courses
INSERT INTO prerequisites(coursecode, preqid) VALUES ('FIN-201','STA-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('PHY-402','PHY-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('BIO-301','BIO-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('BIO-399','BIO-101'), ('BIO-399','CS-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('CS-190','CS-101'), ('CS-190','CS-319'), ('CS-190','CS-347');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('CS-315','CS-101'), ('CS-315','EE-181');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('CS-319','CS-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('CS-347','CS-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('CS-102','CS-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('DAT-601', 'CS-101'), ('DAT-601', 'STA-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('DAT-604', 'DAT-601'), ('DAT-601', 'CS-102');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('DAT-608', 'CS-347');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('MU-199','CS-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('DAT-613','CS-101');
INSERT INTO prerequisites(coursecode, preqid) VALUES ('DAT-620','CS-101'), ('DAT-620','CS-102'), ('DAT-620','CS-347');

