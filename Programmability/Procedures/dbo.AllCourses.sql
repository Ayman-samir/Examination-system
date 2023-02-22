SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[AllCourses]
AS
BEGIN
	select c.course_id ,c.course_name  
	from Course c 
END
GO