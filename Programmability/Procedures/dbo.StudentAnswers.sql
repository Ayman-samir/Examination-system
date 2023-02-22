SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[StudentAnswers]
AS
BEGIN
select s.std_id ,s.std_name ,e.exam_id ,c.course_name ,q.que_body ,a.stu_answer
from Student s
inner join Student_Answer a on s.std_id=a.stu_id 
inner join Question q on q.que_id =a.que_id 
inner join Exam_Question eq on eq.que_id =q.que_id 
inner join Exam e on e.exam_id =eq.exam_id 
inner join Course c on e.course_id =c.course_id
END
GO