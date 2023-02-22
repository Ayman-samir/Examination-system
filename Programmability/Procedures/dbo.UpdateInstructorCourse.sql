SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Instructor_Course Procedure
CREATE PROC [dbo].[UpdateInstructorCourse]
@ins_id int,
@course_id int
AS
BEGIN
 UPDATE Instructor_Course
 SET course_id = @course_id
 WHERE ins_id = @ins_id
END

GO