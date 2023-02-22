SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[DeleteStudent]
@ID int 
AS
BEGIN
	delete  FROM  Student   where std_id = @ID
	
END
GO