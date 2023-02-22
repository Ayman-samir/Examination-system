CREATE TABLE [dbo].[Instructor] (
  [ins_id] [int] IDENTITY,
  [ins_name] [nvarchar](30) NULL,
  [ins_address] [nvarchar](100) NULL,
  [ins_dept] [int] NULL,
  [user_ins] [int] NOT NULL,
  CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED ([ins_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Instructor]
  ADD CONSTRAINT [FK_User_Instructor] FOREIGN KEY ([user_ins]) REFERENCES [dbo].[Users] ([user_id])
GO