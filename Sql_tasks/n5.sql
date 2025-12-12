CREATE INDEX idx_grades_student ON grades(student_id);
CREATE INDEX idx_students_group ON students(group_number);

ALTER TABLE notes ADD COLUMN search_vector tsvector;
UPDATE notes SET search_vector = to_tsvector('russian', note_text);
CREATE INDEX idx_notes_search ON notes USING GIN(search_vector);