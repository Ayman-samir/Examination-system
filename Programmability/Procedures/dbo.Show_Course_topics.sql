SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

--- To return courses Topics ---
 Create    PROC [dbo].[Show_Course_topics]
@Courseid int
as 
begin
SELECT Topic.topic_id, Topic.topic_name, Course.course_name
FROM     Course_Topic INNER JOIN
                  Topic ON Course_Topic.topic_id = Topic.topic_id INNER JOIN
                  Course ON Course_Topic.course_id = Course.course_id
				  where Course.course_id=@Courseid
end

 exec Show_Course_topics 2

GO