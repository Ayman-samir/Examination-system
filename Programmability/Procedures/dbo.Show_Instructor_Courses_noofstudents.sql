SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

--- To return courses teached by instructor and number of students he teach per course using instructor id ---

 Create    PROC [dbo].[Show_Instructor_Courses_noofstudents]
@Instid int
as 
begin
SELECT Course.course_name, COUNT(Student_Course.stu_id) AS no_of_students, Instructor.ins_name
FROM     Instructor_Course INNER JOIN
                  Course ON Instructor_Course.course_id = Course.course_id INNER JOIN
                  Student_Course ON Course.course_id = Student_Course.course_id INNER JOIN
                  Instructor ON Instructor_Course.ins_id = Instructor.ins_id
				  where Instructor.ins_id=@Instid
				  group by course_name,ins_name
end

 exec Show_Instructor_Courses_noofstudents 2

GO