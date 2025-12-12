INSERT INTO attendance (student_id, date_attended, status)
SELECT s.student_id, '2025-12-12'::date as date_attended,
	CASE
		WHEN s.student_id % 6 = 0 THEN FALSE
		ELSE TRUE
	END
FROM students s

UNION ALL
SELECT s.student_id, '2025-12-15'::date as date_attended,
	CASE
		WHEN s.student_id % 6 = 1 THEN TRUE
		ELSE TRUE
	END
FROM students s;