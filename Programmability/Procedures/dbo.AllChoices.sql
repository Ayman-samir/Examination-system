SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
--11///////////////
create PROCEDURE [dbo].[AllChoices]
AS
BEGIN
select * from Choice
END
GO