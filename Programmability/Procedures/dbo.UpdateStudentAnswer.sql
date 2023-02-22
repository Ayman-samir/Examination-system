SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Student_Answer Procedure
CREATE PROC [dbo].[UpdateStudentAnswer]
@student_id int,
@student_ans int
AS
BEGIN
 UPDATE Student_Answer
 SET stu_answer = @student_ans
 WHERE stu_id = @student_id
END


GO