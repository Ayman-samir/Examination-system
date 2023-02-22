SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ExamAnswers]
@ex_id int ,@st_id int , @ans1 nchar(1), @ans2 nchar(1), @ans3 nchar(1), @ans4 nchar(1), @ans5 nchar(1),
 @ans6 nchar(1), @ans7 nchar(1), @ans8 nchar(1), @ans9 nchar(1), @ans10 nchar(1)
AS
BEGIN
declare @tableanswers table (id int identity (1,1) ,answer nchar(1))
insert into @tableanswers (answer) values (@ans1) , (@ans2) , (@ans3) ,(@ans4) ,(@ans5) ,(@ans6) ,(@ans7) , (@ans8) ,(@ans9) ,(@ans10) 
declare @tableque table ( id int IDENTITY( 1,1),   queid int ) 
insert into   @tableque  (queid)   select  que_id   from Exam_Question where exam_id = @ex_id 

declare c1 cursor 
for select q.queid, s.answer from @tableanswers  s inner join @tableque q on s.id=q.id
declare @q_id int , @ans nchar(1)
open c1 
fetch c1 into @q_id, @ans
while @@FETCH_STATUS =0
begin 
insert into Student_Answer (exam_id,stu_id  ,que_id ,stu_answer)
 values (@ex_id,@st_id,@q_id ,@ans)
fetch c1 into @q_id, @ans
 end
 close c1
 deallocate c1 
END
GO