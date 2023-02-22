SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[AllStudent]
AS
BEGIN
	select s.std_id ,s.std_name , s.std_address , d.dept_name ,d.dept_description
	from Student s inner join Department d on s.std_dept=d.dept_id 
END
GO