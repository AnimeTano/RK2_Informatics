WITH target AS (
    SELECT student_id, group_number FROM students 
    WHERE full_name = 'Иванов Иван Иванович'
),

group_members AS (
    SELECT s.student_id, s.full_name, ROW_NUMBER() OVER (ORDER BY s.student_id) as pos
    FROM students s
    WHERE s.group_number = (SELECT group_number FROM target)
),

target_pos AS (
    SELECT pos FROM group_members 
    WHERE student_id = (SELECT student_id FROM target)
)
SELECT student_id, full_name,
    CASE 
        WHEN pos < (SELECT pos FROM target_pos) THEN 'предыдущий'
        ELSE 'следующий'
    END as position
	
FROM group_members
WHERE pos BETWEEN 
    GREATEST((SELECT pos FROM target_pos) - 2, 1) 
    AND LEAST((SELECT pos FROM target_pos) + 3, (SELECT COUNT(*) FROM group_members))
  AND pos != (SELECT pos FROM target_pos)
ORDER BY pos
LIMIT 5;