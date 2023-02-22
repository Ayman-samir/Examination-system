SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[CreateStudentCourse]
@student_id int,
@course_id int
AS
BEGIN
	INSERT INTO Student_Course (stu_id,course_id)
	VALUES(@student_id,@course_id)
END
GO