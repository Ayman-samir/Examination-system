SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[insert_department] @name VARCHAR(50),@description VARCHAR(50),@location VARCHAR(50),@manger_id INT
AS 

INSERT INTO Department 
VALUES(@name,@description,@location,@manger_id)
GO