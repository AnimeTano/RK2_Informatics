BEGIN;
UPDATE attendance SET status = FALSE 
WHERE student_id = 1 AND date_attended = '2024-03-01';
COMMIT;