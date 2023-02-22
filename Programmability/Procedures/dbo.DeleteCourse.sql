SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[DeleteCourse]
@ID int 
AS
BEGIN
	delete  FROM  Course   where course_id = @ID
	
END
GO