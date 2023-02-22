CREATE TABLE [dbo].[Department] (
  [dept_id] [int] IDENTITY,
  [dept_name] [nvarchar](20) NOT NULL,
  [dept_description] [nvarchar](50) NULL,
  [dept_manger] [int] NULL,
  CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED ([dept_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Department]
  ADD CONSTRAINT [FK_Department_Instructor] FOREIGN KEY ([dept_manger]) REFERENCES [dbo].[Instructor] ([ins_id])
GO