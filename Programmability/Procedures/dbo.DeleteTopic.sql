SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[DeleteTopic]
@ID int 
AS
BEGIN
	delete  FROM  Topic  where topic_id = @ID
	
END
GO