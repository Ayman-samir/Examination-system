SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_courses] @id INT,@name VARCHAR(50),@duration VARCHAR(50),@description VARCHAR(50),@successRate VARCHAR(50),@inst_id int,@topic_id INT
AS
BEGIN try
   INSERT INTO Courses
   VALUES(@id,@name,@duration,@description,@successRate,@inst_id,@topic_id)
END TRY

BEGIN CATCH
  SELECT ERROR_MESSAGE(),ERROR_LINE()
END CATCH
GO