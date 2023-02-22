CREATE TABLE [dbo].[Users] (
  [user_id] [int] IDENTITY,
  [user_name] [nvarchar](30) NOT NULL,
  [user_password] [nvarchar](30) NOT NULL,
  [user_type] [nchar](1) NOT NULL,
  CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([user_id])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[UserStudentInstructor]
ON [Users]
After Insert
AS

	INSERT INTO Student (user_std)
	select user_id from inserted where user_type = 'S'

	INSERT INTO Instructor(user_ins)
	select user_id from inserted where user_type = 'I'

GO