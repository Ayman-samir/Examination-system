SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
--Insert CourseTopic Procedure
CREATE PROC [dbo].[CreateCourseTopic] 
@topic_id int,
@course_id int
AS
BEGIN
	INSERT INTO Course_Topic
	Values(@course_id,@topic_id)
END

GO