CREATE TABLE relation_tables.teachers
(
	teacher_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    manager_id INT
);

ALTER TABLE relation_tables.teachers
ADD INDEX int_teachers_manager_id (manager_id);
;

ALTER TABLE relation_tables.teachers
ADD CONSTRAINT fk_teachers_teachers_manager_id FOREIGN KEY (manager_id) REFERENCES teachers(teachers_id);

INSERT INTO relation_tables.teachers(teacher_id, name, manager_id)
VALUES
(101, 'John', null),
(102, 'Maya', 106),
(103, '	Silvia', 106),
(104, 'Ted', 105),
(105, 'Mark', 101),
(106, 'Greta', 101);

SELECT * FROM relation_tables.teachers;