SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create   proc [dbo].[selectStudentsWithGrades] @courseID int
as
	begin
		select sc.stu_id, s.std_name, sc.grade
		from   Student_Course sc, Student s
		where sc.course_id = @courseID
			  and sc.stu_id = s.std_id
			  and sc.grade IS NOT NULL
	end
GO