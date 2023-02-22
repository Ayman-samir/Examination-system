SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[QuestionChoices]
AS
BEGIN
select q.que_body ,c.choice_char,c.choice_description  
from Question q 
inner join Choice c on q.que_id= c.que_id
END
GO