SET IDENTITY_INSERT dbo.Exam ON
GO
INSERT dbo.Exam(exam_id, exam_time, full_mark, course_id) VALUES (1, 60, 24, 1);
INSERT dbo.Exam(exam_id, exam_time, full_mark, course_id) VALUES (2, 60, 24, 2);
INSERT dbo.Exam(exam_id, exam_time, full_mark, course_id) VALUES (3, 60, 24, 2);
INSERT dbo.Exam(exam_id, exam_time, full_mark, course_id) VALUES (4, 60, 24, 2);
GO
SET IDENTITY_INSERT dbo.Exam OFF
GO