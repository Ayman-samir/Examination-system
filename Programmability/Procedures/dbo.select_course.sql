SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
 CREATE proc [dbo].[select_course] @id INT =-1
 AS
  IF @id !=-1

     BEGIN
		IF EXISTS (SELECT * FROM Courses WHERE id=@id)
		SELECT *FROM Courses WHERE id=@id
		ELSE SELECT 'this course is not found'
	 END

  ELSE
        SELECT * FROM courses
   
GO