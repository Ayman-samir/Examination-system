CREATE TABLE [dbo].[Student] (
  [std_id] [int] IDENTITY,
  [std_name] [nvarchar](50) NULL,
  [std_address] [nvarchar](50) NULL,
  [std_dept] [int] NULL,
  [user_std] [int] NOT NULL,
  CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([std_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Student]
  ADD CONSTRAINT [FK_Student_User] FOREIGN KEY ([user_std]) REFERENCES [dbo].[Users] ([user_id])
GO

ALTER TABLE [dbo].[Student]
  ADD CONSTRAINT [FK_Students_Departments] FOREIGN KEY ([std_dept]) REFERENCES [dbo].[Department] ([dept_id])
GO