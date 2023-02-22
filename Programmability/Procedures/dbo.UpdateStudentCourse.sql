SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[UpdateStudentCourse]
@student_id int,
@crs_id int,
@grade int
AS
BEGIN
 UPDATE Student_Course
 SET grade = @grade 
 WHERE stu_id = @student_id and course_id = @crs_id
END
GO