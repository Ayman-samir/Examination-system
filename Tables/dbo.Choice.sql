CREATE TABLE [dbo].[Choice] (
  [choice_id] [int] NOT NULL,
  [choice_char] [char](1) NOT NULL,
  [choice_description] [nvarchar](100) NOT NULL,
  [que_id] [int] NOT NULL,
  CONSTRAINT [PK_Choices] PRIMARY KEY CLUSTERED ([choice_id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Choice]
  ADD CONSTRAINT [FK_Choice_Question1] FOREIGN KEY ([que_id]) REFERENCES [dbo].[Question] ([que_id])
GO