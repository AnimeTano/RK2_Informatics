INSERT INTO grades (student_id, subject_id, grade)
SELECT s.student_id, sub.subject_id,
	CASE 
		WHEN sub.subject_id = 1 THEN
		CASE s.student_id
			WHEN 1 THEN 5
			WHEN 2 THEN 4
			WHEN 3 THEN 3
			WHEN 4 THEN 2 
			WHEN 5 THEN 4
			WHEN 6 THEN 3
		END

		WHEN sub.subject_id = 2 THEN
		CASE s.student_id
			WHEN 1 THEN 4
			WHEN 2 THEN 2
			WHEN 3 THEN 5
			WHEN 4 THEN 5
			WHEN 5 THEN 4
			WHEN 6 THEN 2
		END

		WHEN sub.subject_id = 3 THEN
		CASE s.student_id
			WHEN 1 THEN 3
			WHEN 2 THEN 5
			WHEN 3 THEN 4
			WHEN 4 THEN 5
			WHEN 5 THEN 2
			WHEN 6 THEN 4
		END
	END
FROM students s
CROSS JOIN subjects sub;