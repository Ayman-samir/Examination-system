SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[DeleteExam]
@ID int 
AS
BEGIN
	delete  FROM Exam  where exam_id = @ID
	
END
GO