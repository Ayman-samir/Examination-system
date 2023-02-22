SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Course_Topic Procedure
CREATE PROC [dbo].[UpdateCourseTopic]
@course_id int,
@topic_id int
AS
BEGIN
	UPDATE Course_Topic
	SET topic_id = @topic_id
	WHERE course_id = @course_id
END

GO