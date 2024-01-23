CREATE TABLE relation_tables.manufacturers
(
	manufacturer_id INT PRIMARY KEY AUTO_INCREMENT,
    manufacturer_name VARCHAR(50),
    established_date DATE
);

CREATE TABLE relation_tables.models
(
	model_id INT PRIMARY KEY NOT NULL,
    model_name VARCHAR(50),
    manufacturer_id INT,
	CONSTRAINT fk_models_manufacturers FOREIGN KEY(manufacturer_id) REFERENCES manufacturers(manufacturer_id)
);

INSERT INTO relation_tables.manufacturers(manufacturer_id, manufacturer_name, established_date)
VALUES
(1, 'BMW', '19160301'),
(2, 'Tesla', '20030101'),
(3, 'Lada', '19660501');

INSERT INTO relation_tables.models(model_id, model_name, manufacturer_id)
VALUES
(101, 'X1', 1),
(102, 'i6', 1),
(103, 'Model S', 2),
(104, 'Model X', 2), 
(105, 'Model 3', 2),
(106, 'Nova', 3);


SELECT * FROM relation_tables.manufacturers;
SELECT * FROM relation_tables.models;