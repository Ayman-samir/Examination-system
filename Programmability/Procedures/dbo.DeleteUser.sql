SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
  create PROCEDURE [dbo].[DeleteUser]
@ID int 
AS
BEGIN
	delete  FROM  Users  where user_id = @ID
	
END
GO