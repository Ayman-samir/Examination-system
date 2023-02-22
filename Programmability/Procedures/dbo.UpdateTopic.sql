SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Topic Procedure
CREATE PROC [dbo].[UpdateTopic]
@topic_id int,
@topic_name nvarchar(50)
AS
BEGIN
	UPDATE Topic
	SET topic_name = @topic_name
	WHERE topic_id = @topic_id
END


GO