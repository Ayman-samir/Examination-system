SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create PROCEDURE [dbo].[GetUsers]
@Type VARCHAR(10)
AS
BEGIN
	SELECT * FROM  Users  where user_type = @Type
END
GO