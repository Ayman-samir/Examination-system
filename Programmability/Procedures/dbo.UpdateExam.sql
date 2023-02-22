SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Exam Procedure
CREATE PROC [dbo].[UpdateExam]
@exam_id int,
@exam_fullmark int,
@exam_time int
AS
BEGIN
	UPDATE Exam
	SET exam_time = @exam_time,
	full_mark = @exam_fullmark
	WHERE exam_id = @exam_id
END


GO