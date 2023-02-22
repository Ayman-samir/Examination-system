SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

--- To return Exam questions and choices ---
 Create    PROC [dbo].[Show_Exam_Questions_And_Choices]
 @Examnumber int
 as
 begin
SELECT Choice.choice_char, Choice.choice_description, Question.que_body
FROM     Exam INNER JOIN
                  Exam_Question ON Exam.exam_id = Exam_Question.exam_id INNER JOIN
                  Choice ON Exam_Question.que_id = Choice.que_id INNER JOIN
                  Question ON Choice.que_id = Question.que_id
				  where Exam.exam_id=@Examnumber

 End

 exec Show_Exam_Questions_And_Choices 1
GO