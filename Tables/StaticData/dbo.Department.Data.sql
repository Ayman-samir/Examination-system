INSERT dbo.Department(Id, Name, Description, Location, MangerId) VALUES (1, 'os', 'open source', 'Mansoura', '1');

SET IDENTITY_INSERT [dbo].[Department] ON
GO
INSERT dbo.Department(Id, Name, Description, Location, MangerId) VALUES (2, 'pd', 'profissional', 'Mansoura', '2');
INSERT dbo.Department(Id, Name, Description, Location, MangerId) VALUES (4, 'Ai', 'Artificial intiligance', 'Mansoura', '5');
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO