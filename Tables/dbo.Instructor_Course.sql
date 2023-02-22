CREATE TABLE [dbo].[Instructor_Course] (
  [ins_id] [int] NOT NULL,
  [course_id] [int] NOT NULL,
  CONSTRAINT [PK_InstractorCourses] PRIMARY KEY CLUSTERED ([ins_id], [course_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Instructor_Course]
  ADD CONSTRAINT [FK_InstracturCourses_Instructor] FOREIGN KEY ([ins_id]) REFERENCES [dbo].[Instructor] ([ins_id])
GO