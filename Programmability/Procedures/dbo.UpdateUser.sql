SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[UpdateUser] 
@user_id int ,
@user_name nvarchar(30),
@user_pass nvarchar(30),
@user_type nchar(1)
AS
BEGIN
	UPDATE Users
	SET user_name = @user_name, 
	user_password = @user_pass,
	user_type = @user_type
	WHERE user_id = @user_id
END
GO