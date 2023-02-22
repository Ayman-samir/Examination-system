SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Instructor Procedure
CREATE PROC [dbo].[UpdateInstructor]
@ins_id int,
@ins_name nvarchar(30),
@ins_add nvarchar(100),
@ins_dept int
AS
BEGIN
	UPDATE Instructor
	SET ins_name = @ins_name,
	ins_address = @ins_add,
	ins_dept = @ins_dept
	WHERE ins_id = @ins_id
END

GO