CREATE TABLE [dbo].[Course_Topic] (
  [course_id] [int] NOT NULL,
  [topic_id] [int] NOT NULL,
  CONSTRAINT [PK_CoursesTopic] PRIMARY KEY CLUSTERED ([course_id], [topic_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Course_Topic]
  ADD CONSTRAINT [FK_CoursesTopic_Courses] FOREIGN KEY ([course_id]) REFERENCES [dbo].[Course] ([course_id])
GO

ALTER TABLE [dbo].[Course_Topic]
  ADD CONSTRAINT [FK_CoursesTopic_Topic] FOREIGN KEY ([topic_id]) REFERENCES [dbo].[Topic] ([topic_id])
GO