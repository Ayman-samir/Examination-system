SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[delete_department] @id INT 
AS
	IF EXISTS(SELECT * FROM department WHERE id=@id)
	BEGIN
		--update Instructor set dept_id=NULL where dept_id=@id
		--update Student set dept_id=NULL where dept_id=@id
		DELETE FROM Department WHERE id=@id
	END

	ELSE
		SELECT 'there is no department with this id'
GO