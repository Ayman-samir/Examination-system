SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[department_update] @id INT,@name VARCHAR(50)=' ',@description VARCHAR(50)=' ',@location VARCHAR(50)=' ' ,@manger_id INT=-1
AS
IF EXISTS(SELECT * FROM Department WHERE id=@id)
BEGIN
		IF @name !=' ' 
			UPDATE Department
			SET name=@name
			WHERE id=@id

		 IF @description !=' '
			UPDATE Department
			SET description=@description
			WHERE id=@id

		 IF @location !=' '
			UPDATE Department
			SET location=@location
			WHERE id=@id

		 IF @manger_id !=-1
			UPDATE Department
			SET mangerid=@manger_id
			WHERE id=@id
    
END 

ELSE
		SELECT 'there is no department with this id'
GO