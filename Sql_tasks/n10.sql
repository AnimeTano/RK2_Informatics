SELECT AVG(grade) FROM grades
WHERE subject_id = (SELECT subject_id FROM subjects 
WHERE subject_name = 'Информатика'
);