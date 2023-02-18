CREATE TABLE [dbo].[Department] (
  [Id] [int] IDENTITY,
  [Name] [varchar](50) NOT NULL,
  [Description] [varchar](50) NULL,
  [Location] [varchar](50) NULL,
  [MangerId] [varchar](50) NULL,
  CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO