CREATE TABLE [dbo].[Student] (
  [Id] [int] NOT NULL,
  [FName] [varchar](50) NULL,
  [LName] [varchar](50) NULL,
  [City] [varchar](50) NULL,
  [Street] [varchar](50) NULL,
  [Building] [int] NULL,
  [DOB] [varchar](50) NULL,
  [Email] [varchar](50) NULL,
  [Dept_Id] [int] NULL,
  CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO