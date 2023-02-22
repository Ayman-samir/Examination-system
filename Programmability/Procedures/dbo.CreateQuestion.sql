SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[CreateQuestion] 
@body nvarchar(200),
@type nvarchar(20),
@ans nchar(1),
@grade int,
@course int
AS
BEGIN
	INSERT INTO Question(que_body,que_type,que_ans,que_grade,que_course)
	VALUES (@body,@type,@ans,@grade,@course)
END


GO