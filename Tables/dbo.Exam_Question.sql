CREATE TABLE [dbo].[Exam_Question] (
  [que_id] [int] NOT NULL,
  [exam_id] [int] NOT NULL,
  CONSTRAINT [PK_ExamQuestions] PRIMARY KEY CLUSTERED ([que_id], [exam_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Exam_Question]
  ADD CONSTRAINT [FK_ExamQuestions_Exam] FOREIGN KEY ([exam_id]) REFERENCES [dbo].[Exam] ([exam_id])
GO