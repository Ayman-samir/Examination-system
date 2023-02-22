SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROC [dbo].[GenerateExam] @course_name nvarchar(50), @tofcount int, @mcqcount int
AS 
BEGIN
	-- first: get course id from taking course name as a parameter
	DECLARE @crs_id int
	DECLARE @exam_id int
	SET @exam_id = 0
	SET @crs_id = 0
	SET @crs_id =  
	(select Top 1 course_id from Course
	where course_name = @course_name)

	-- Second: create exam and get exam id

	execute CreateExam @crs_id,60,24,@exam_id OUTPUT

	-- Generate MCQ questions


	insert into Exam_Question(que_id,exam_id)
	select top (@tofcount) que_id,@exam_id
	from Question
	where que_type = 'TF' and que_course=@crs_id
	order By NEWID()

	insert into Exam_Question(que_id,exam_id)
	select top (@mcqcount) que_id,@exam_id
	from Question
	where que_type = 'MCQ' and que_course=@crs_id
	order By NEWID()


	-- Fourth: Show Question and choices

	select Exam_Question.exam_id,que_body,choice_char,choice_description 
	from Question 
	join Exam_Question
	on Question.que_id = Exam_Question.que_id
	join Choice
	on Exam_Question.que_id = Choice.que_id
	where Exam_Question.exam_id = @exam_id
END
GO