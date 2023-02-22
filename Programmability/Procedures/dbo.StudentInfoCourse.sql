SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[StudentInfoCourse] 
@stuid int 
AS
 begin
 select   c.course_name,c.course_id,sc.grade  from   Student s  
 inner join  Student_Course sc on s.std_id=sc.stu_id
 inner join Course c on sc.course_id=c.course_id 
 where s.user_std=@stuid

 End
GO