BEGIN;

INSERT INTO students (full_name, group_number) VALUES ('Ассата Борода', 101)
RETURNING student_id;

WITH new_student AS ( 
	SELECT student_id FROM students
	WHERE full_name = 'Ассата Борода'
)

INSERT INTO grades (student_id, subject_id, grade) SELECT
(SELECT student_id FROM new_student), subject_id, 3 FROM subjects;

COMMIT;