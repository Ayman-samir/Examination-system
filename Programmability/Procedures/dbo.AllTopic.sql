SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[AllTopic]
AS
BEGIN
	select t.topic_id ,t.topic_name
	from  Topic t 
END
GO