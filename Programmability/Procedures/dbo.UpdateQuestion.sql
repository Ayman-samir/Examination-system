SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Question Procedure
CREATE PROC [dbo].[UpdateQuestion] 
@question_id int,
@question_body nvarchar(200),
@question_ans nchar(1),
@question_grade  int
AS
BEGIN
	UPDATE Question
	SET	que_body = @question_body, 
	que_ans = @question_ans,
	que_grade = @question_grade
	WHERE que_id = @question_id
END


GO