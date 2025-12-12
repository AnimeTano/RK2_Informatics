CREATE TABLE students (
	student_id SERIAL PRIMARY KEY,
	full_name VARCHAR(100) NOT NULL,
	group_number INT
);


CREATE TABLE subjects (
	subject_id SERIAL PRIMARY KEY,
	subject_name VARCHAR(100) NOT NULL
);

CREATE TABLE grades (
	grade_id SERIAL PRIMARY KEY,
	student_id INT REFERENCES students(student_id),
	subject_id INT REFERENCES subjects(subject_id),
	grade INT
);

CREATE TABLE attendance (
	attendance_id SERIAL PRIMARY KEY,
	student_id INT REFERENCES students(student_id),
	date_attended DATE,
	status BOOLEAN NOT NULL
);

CREATE TABLE notes (
	note_id SERIAL PRIMARY KEY,
	student_id INT REFERENCES students(student_id),
	note_text TEXT
);

INSERT INTO students (full_name, group_number) VALUES
('Иванов Иван Иванович', 101),
('Петров Петр Петрович', 101),
('Сидоров Алексей Владимирович', 101),
('Кузнецова Мария Сергеевна', 101),
('Смирнов Дмитрий Алексеевич', 101),
('Васильева Анна Игоревна', 101);

INSERT INTO subjects (subject_name) VALUES
('Математический анализ'),
('Аналитическая геометрия'),
('Информатика');