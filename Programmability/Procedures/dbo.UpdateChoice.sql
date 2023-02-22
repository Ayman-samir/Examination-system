SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- Update Choice Procedure
CREATE PROC [dbo].[UpdateChoice] 
@choice_id int, 
@choice_des nvarchar(100)
AS
BEGIN
	UPDATE Choice 
	SET choice_description = @choice_des
	WHERE choice_id = @choice_id
END

GO