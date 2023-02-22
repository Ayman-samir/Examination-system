SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
/* Insert Queries */

-- Insert User Procedure
CREATE PROC [dbo].[CreateUser] 
@username nvarchar(30),
@password nvarchar(30)
AS
BEGIN
	INSERT INTO Users (user_name,user_password)
	VALUES (@username,@password)
END

GO