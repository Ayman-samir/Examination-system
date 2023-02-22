SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[DeleteDepartment]
@ID int 
AS
BEGIN
	delete  FROM  Department   where dept_id = @ID
	
END
GO