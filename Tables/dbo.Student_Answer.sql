CREATE TABLE [dbo].[Student_Answer] (
  [stu_id] [int] NOT NULL,
  [que_id] [int] NOT NULL,
  [exam_id] [int] NOT NULL,
  [stu_answer] [nvarchar](100) NULL,
  CONSTRAINT [PK_StudentAnswer] PRIMARY KEY CLUSTERED ([stu_id], [que_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student_Answer]
  ADD CONSTRAINT [FK_StudentAnswer_Exam] FOREIGN KEY ([exam_id]) REFERENCES [dbo].[Exam] ([exam_id])
GO

ALTER TABLE [dbo].[Student_Answer]
  ADD CONSTRAINT [FK_StudentAnswer_Question] FOREIGN KEY ([que_id]) REFERENCES [dbo].[Question] ([que_id])
GO

ALTER TABLE [dbo].[Student_Answer]
  ADD CONSTRAINT [FK_StudentAnswer_StudentAnswer] FOREIGN KEY ([stu_id]) REFERENCES [dbo].[Student] ([std_id])
GO