SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[UpdateStudent] 
@student_id int, 
@student_name nvarchar(50),
@student_addr nvarchar(50), 
@std_dept int
AS
BEGIN
	UPDATE Student 
	SET std_name = @student_name,
	std_address = @student_addr,
	std_dept = @std_dept
	WHERE std_id = @student_id
END

GO