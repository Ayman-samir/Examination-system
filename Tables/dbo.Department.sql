CREATE TABLE [dbo].[Department] (
  [Id] [int] NULL,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](50) NULL,
  [Location] [varchar](50) NULL,
  [MangerId] [varchar](50) NULL,
  CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([Name])
)
ON [PRIMARY]
GO