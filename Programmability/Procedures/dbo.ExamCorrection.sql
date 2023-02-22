SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[ExamCorrection]
@stID int, @examID int
as
	begin
		declare @courseID int = (select course_id from Exam where exam_id = @examID)
		declare @grade int = (select SUM(q.que_grade) 
					 from Question q inner join Student_Answer sa
					 on q.que_id = sa.que_id
						and q.que_ans = sa.stu_answer
						and sa.exam_id = @examID)
		execute updateStudentCourse @stID, @courseID, @grade 
	end
GO