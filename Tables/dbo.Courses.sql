CREATE TABLE [dbo].[Courses] (
  [Id] [int] NOT NULL,
  [Name] [varchar](50) NULL,
  [Duration] [varchar](50) NULL,
  [Description] [varchar](50) NULL,
  [SuccessRate] [varchar](50) NULL,
  [Instructor_Id] [int] NULL,
  [Topic_Id] [int] NULL,
  CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO