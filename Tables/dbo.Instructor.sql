CREATE TABLE [dbo].[Instructor] (
  [Id] [int] NOT NULL,
  [Name] [varchar](50) NULL,
  [Salary] [int] NULL,
  [Email] [varchar](50) NULL,
  [Dept_Id] [int] NULL,
  CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO