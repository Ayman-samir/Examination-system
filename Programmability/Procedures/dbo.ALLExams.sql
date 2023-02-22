SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[ALLExams]
AS
BEGIN
select e.exam_id ,c.course_name ,e.full_mark
from Exam e inner join Course c on e.exam_id =c.course_id
END
GO