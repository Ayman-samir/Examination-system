SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Department Procedure
CREATE PROC [dbo].[UpdateDepartment] 
@dept_id int, 
@dept_name nvarchar(20),
@dept_desc nvarchar(50),
@dept_man int
AS
BEGIN
	UPDATE Department
	SET dept_name = @dept_name, 
	dept_description = @dept_desc,
	dept_manger = @dept_man
	WHERE dept_id = @dept_id
END

GO