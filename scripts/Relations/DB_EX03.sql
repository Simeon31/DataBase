CREATE TABLE relation_tables.students
(
	student_id INT PRIMARY KEY,
    student_name VARCHAR(255)
);

CREATE TABLE relation_tables.exams
(
	exam_id INT PRIMARY KEY,
    exam_title VARCHAR(50)
);

CREATE TABLE relation_tables.students_exams
(
	student_id INT,
    exam_id INT,
    CONSTRAINT pk_students_exams PRIMARY KEY(student_id, exam_id),
    CONSTRAINT fk_students_exams_students FOREIGN KEY(student_id) REFERENCES students(student_id),
    CONSTRAINT fk_students_exams_exams FOREIGN KEY(exam_id) REFERENCES exams(exam_id)
);

INSERT INTO relation_tables.students(student_id, student_name)
VALUES
	(1, 'Mia'),
    (2, 'Toni'),
    (3, 'Ron');

INSERT INTO relation_tables.exams(exam_id, exam_title)
VALUES
	(101, 'Spring MVC'),
    (102, 'Neo4g'),
    (103, 'Oracle 11g');
    
INSERT INTO relation_tables.students_exams(student_id, exam_id)
VALUES
	(1, 101),
    (1, 102),
    (2, 101),
    (3, 103),
    (2, 102),
    (2, 103);
    
SELECT * FROM relation_tables.students;
SELECT * FROM relation_tables.exams;
SELECT * FROM relation_tables.students_exams;