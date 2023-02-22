SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Create InstructorCourse Procedure
CREATE PROC [dbo].[CreateInstructorCourse]
@ins_id int,
@course_id int
AS
BEGIN
	INSERT INTO Instructor_Course
	VALUES (@ins_id,@course_id)
END
GO