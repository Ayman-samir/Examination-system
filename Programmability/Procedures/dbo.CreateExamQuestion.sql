SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Insert ExamQuestion Procedure
CREATE PROC [dbo].[CreateExamQuestion]
@exam_id int,
@question_id int
AS
BEGIN
	INSERT INTO Exam_Question
	VALUES (@exam_id,@question_id)
END


GO