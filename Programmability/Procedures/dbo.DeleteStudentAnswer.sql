SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[DeleteStudentAnswer]
@ID int 
AS
BEGIN
	update  Student_Answer  set stu_answer =NULL   where que_id = @ID
	
END
GO