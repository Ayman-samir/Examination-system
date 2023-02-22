SET IDENTITY_INSERT dbo.Course ON
GO
INSERT dbo.Course(course_id, course_name) VALUES (1, N'JS');
INSERT dbo.Course(course_id, course_name) VALUES (2, N'SQL');
GO
SET IDENTITY_INSERT dbo.Course OFF
GO