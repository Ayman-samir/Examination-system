SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Insert Choices Procedure
CREATE PROC [dbo].[CreateChoice]
@character char(1),
@desc nvarchar(100),
@que_id int
AS
BEGIN
	INSERT INTO Choice (choice_char,choice_description,que_id)
	VALUES (@character,@desc,@que_id)
END


GO