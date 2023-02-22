SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[StudentInfo] 
@stuid int 
AS
 begin
  select s.std_id,s.std_name,s.std_address ,d.dept_name ,d.dept_description from  Department d inner join   Student s  on d.dept_id=s.std_dept
   where s.user_std=@stuid
End
GO