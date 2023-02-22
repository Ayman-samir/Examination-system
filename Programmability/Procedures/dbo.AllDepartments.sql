SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[AllDepartments]
as
begin
select d.dept_id ,d.dept_name ,d.dept_description ,i.ins_name as dept_manger  
from Department d inner join Instructor i on d.dept_manger =i.ins_id
end
GO