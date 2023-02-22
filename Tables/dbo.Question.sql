CREATE TABLE [dbo].[Question] (
  [que_id] [int] IDENTITY,
  [que_body] [nvarchar](200) NOT NULL,
  [que_type] [nvarchar](20) NOT NULL,
  [que_ans] [nchar](1) NULL,
  [que_grade] [int] NULL,
  [que_course] [int] NOT NULL,
  CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED ([que_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Question]
  ADD CONSTRAINT [FK_Question_Courses] FOREIGN KEY ([que_course]) REFERENCES [dbo].[Course] ([course_id]) ON DELETE CASCADE
GO