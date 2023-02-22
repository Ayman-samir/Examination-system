SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[StudentCourse]
AS
BEGIN
select s.std_id,s.std_name ,o.course_name 
from Student s 
inner join Student_Course c on s.std_id=c.stu_id 
inner join Course o on c.course_id =o.course_id
END
GO