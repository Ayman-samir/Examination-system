SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Insert Exam Procedure
CREATE PROC [dbo].[CreateExam]
@course_id int,
@exam_time int,
@full_mark int,
@exam_id int OUTPUT
AS
BEGIN
	INSERT INTO Exam (course_id,exam_time,full_mark)
	Values(@course_id,@exam_time,@full_mark)
	select @exam_id = SCOPE_IDENTITY()
END

GO