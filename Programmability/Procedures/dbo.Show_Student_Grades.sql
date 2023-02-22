SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
--- To return all student grades using student id ---

Create    PROC [dbo].[Show_Student_Grades]
@Stdid int
as 
begin
SELECT Student_Course.grade, Student_Course.course_id, Student.std_name, Course.course_name
FROM     Student_Course INNER JOIN
                  Student ON Student_Course.stu_id = Student.std_id INNER JOIN
                  Course ON Student_Course.course_id = Course.course_id
where std_id=@Stdid
end

exec Show_Student_Grades 5

GO