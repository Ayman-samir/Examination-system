CREATE TABLE [dbo].[Course] (
  [course_id] [int] IDENTITY,
  [course_name] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED ([course_id])
)
ON [PRIMARY]
GO