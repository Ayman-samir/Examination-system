SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[AllQuestions]
AS
BEGIN
select  q.que_id ,q.que_body ,q.que_grade,q.que_ans ,c.course_name  
from Question q inner join Course c on q.que_course =c.course_id
END
GO