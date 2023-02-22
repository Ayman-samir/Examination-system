SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[InstructorCourse]
AS
BEGIN
select i.ins_id,i.ins_name ,o.course_name 
from Instructor  i
inner join Instructor_Course c on i.ins_id = c.ins_id
inner join Course o on c.course_id =o.course_id
END
GO