CREATE VIEW student_avg_grades AS 
SELECT s.student_id, s.full_name, s.group_number, ROUND(AVG(g.grade)::numeric, 2) as average_grade
FROM students s

LEFT JOIN grades g ON s.student_id = g.student_id
GROUP BY s.student_id, s.full_name, s.group_number;