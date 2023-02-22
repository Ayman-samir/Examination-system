SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Exam_Question Procedure
CREATE PROC [dbo].[UpdateExamQuestion]
@question_id int,
@exam_id int
AS
BEGIN
	UPDATE Exam_Question
	SET que_id = @question_id
	WHERE exam_id = @exam_id
END

GO