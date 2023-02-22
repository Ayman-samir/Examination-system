SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Course Procedure
CREATE PROC [dbo].[UpdateCourse] 
@course_id int,
@course_name nvarchar(50)
AS
BEGIN
	UPDATE Course
	SET course_name = @course_name
	WHERE course_id = @course_id
END

GO