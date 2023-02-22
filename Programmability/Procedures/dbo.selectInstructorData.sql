SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create   proc [dbo].[selectInstructorData] @userID int
as
	begin
		select i.ins_name, i.ins_id, i.ins_address,d.dept_name, d.dept_description, ic.course_id, c.course_name
        from  Department d inner join  Instructor i  
		on d.dept_id=i.ins_dept
		inner join Instructor_Course ic
		on i.ins_id = ic.ins_id
		inner join Course c
		on c.course_id = ic.course_id
        where i.user_ins= @userID
	end
GO