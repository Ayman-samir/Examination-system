SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[ExamQuestion]
AS
BEGIN
select e.exam_id  ,c.course_name , q.que_body 
from Question q 
inner join Exam_Question eq on q.que_id=eq.que_id
inner join Exam e on e.exam_id=eq.exam_id
inner join Course c on e.course_id=c.course_id
End
GO