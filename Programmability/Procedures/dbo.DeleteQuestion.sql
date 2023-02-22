SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[DeleteQuestion]
@ID int 
AS
BEGIN
	delete  FROM	Question  where que_id = @ID
	
END
GO