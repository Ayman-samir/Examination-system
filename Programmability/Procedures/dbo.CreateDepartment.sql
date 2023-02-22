SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Insert Department Procedure
CREATE PROC [dbo].[CreateDepartment]
@dept_name varchar(20),
@dept_desc varchar(50),
@dept_manager int
AS
BEGIN
	INSERT INTO Department(dept_name,dept_description,dept_manger)
	VALUES(@dept_name,@dept_desc,@dept_manager)
END


GO