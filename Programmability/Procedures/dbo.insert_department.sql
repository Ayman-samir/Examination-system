SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[insert_department] @name VARCHAR(50),@description VARCHAR(50),@location VARCHAR(50),@manger_id INT
AS 
BEGIN TRY
	INSERT INTO Department 
	VALUES(@name,@description,@location,@manger_id)
END TRY
BEGIN CATCH
SELECT 'this table is not found'
END CATCH
GO