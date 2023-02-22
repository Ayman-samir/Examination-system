SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[AllInstructor]
AS
BEGIN
	select i.ins_id ,i.ins_name  ,i.ins_address , d.dept_name ,d.dept_description
	from Instructor i inner join Department d on i.ins_dept=d.dept_id 
END
GO