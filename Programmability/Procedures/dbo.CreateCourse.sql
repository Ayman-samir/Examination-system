SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Insert Course Procedure
CREATE PROC [dbo].[CreateCourse]
@course_name nvarchar(50)
AS
BEGIN
	INSERT INTO Course (course_name)
	VALUES (@course_name)
END

GO