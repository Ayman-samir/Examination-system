CREATE TABLE [dbo].[Student_Course] (
  [stu_id] [int] NOT NULL,
  [course_id] [int] NOT NULL,
  [grade] [int] NULL,
  CONSTRAINT [PK_StudentCourses] PRIMARY KEY CLUSTERED ([stu_id], [course_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student_Course]
  ADD CONSTRAINT [FK_StudentCourses_Courses] FOREIGN KEY ([course_id]) REFERENCES [dbo].[Course] ([course_id])
GO

ALTER TABLE [dbo].[Student_Course]
  ADD CONSTRAINT [FK_StudentCourses_Students] FOREIGN KEY ([stu_id]) REFERENCES [dbo].[Student] ([std_id])
GO