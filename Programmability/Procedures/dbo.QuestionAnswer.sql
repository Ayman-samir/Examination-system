SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[QuestionAnswer]
AS
BEGIN
select q.que_body,q.que_ans , c.choice_description
from Question  q inner join Choice c on q.que_id  =c.que_id where q.que_ans=c.choice_char
END
GO