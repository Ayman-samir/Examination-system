SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[AllCoursesTopic]
AS
BEGIN
	select c.course_id ,c.course_name  ,o.topic_name
	from Course c 
	inner join Course_Topic t on c.course_id= t.course_id 
	inner join Topic o on o.topic_id=t.topic_id
END
GO