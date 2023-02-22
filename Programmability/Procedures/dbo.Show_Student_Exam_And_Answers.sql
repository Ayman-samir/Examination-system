SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
 --- To return Exam questions with student answers ---

  Create    PROC [dbo].[Show_Student_Exam_And_Answers]
 @Examnumber int, @Student_id int
 as
 begin
SELECT Question.que_body, Student_Answer.stu_answer, Student_Answer.que_id, Student.std_name, Choice.choice_description
FROM     Student_Answer INNER JOIN
                  Question ON Student_Answer.que_id = Question.que_id INNER JOIN
                  Student ON Student_Answer.stu_id = Student.std_id INNER JOIN
                  Choice ON Question.que_id = Choice.que_id
				  where Student_Answer.exam_id=@Examnumber and Student_Answer.stu_id=@Student_id and Choice.choice_char=Student_Answer.stu_answer

 End

 exec Show_Student_Exam_And_Answers 1,1

 EXEC UpdateStudentAnswer 1,2

GO