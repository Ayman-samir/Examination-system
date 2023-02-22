SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Insert Topic Procedure
CREATE PROC [dbo].[CreateTopic]
@topic_name nvarchar(50)
AS
BEGIN
	INSERT INTO Topic (topic_name)
	VALUES (@topic_name)
END

GO