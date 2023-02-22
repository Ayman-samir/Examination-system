CREATE TABLE [dbo].[Exam] (
  [exam_id] [int] IDENTITY,
  [exam_time] [int] NULL,
  [full_mark] [int] NULL,
  [course_id] [int] NOT NULL,
  CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED ([exam_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Exam]
  ADD CONSTRAINT [FK_Exam_Course] FOREIGN KEY ([course_id]) REFERENCES [dbo].[Course] ([course_id])
GO