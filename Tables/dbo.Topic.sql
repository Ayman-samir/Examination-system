CREATE TABLE [dbo].[Topic] (
  [topic_id] [int] IDENTITY,
  [topic_name] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED ([topic_id])
)
ON [PRIMARY]
GO