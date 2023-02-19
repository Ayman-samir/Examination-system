SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[department_select] @id INT =-1,@name VARCHAR(50) =' '
AS

	IF @id=-1 AND @name !=' '
		BEGIN
			if EXISTS(SELECT Name FROM Department WHERE name=@name)
			SELECT * FROM department WHERE name=@name
			else select 'department not found' 
        End
	
	else if @id!=-1 and @name=' '
	BEGIN
		IF EXISTS (SELECT id FROM department WHERE id=@id)
		SELECT * FROM department WHERE id=@id
		ELSE select'department not fount'
	END

	ELSE 
	SELECT * FROM Department 
GO