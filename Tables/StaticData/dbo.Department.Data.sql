SET IDENTITY_INSERT dbo.Department ON
GO
INSERT dbo.Department(dept_id, dept_name, dept_description, dept_manger) VALUES (1, N'AI', N'Artificial Intelligence', NULL);
INSERT dbo.Department(dept_id, dept_name, dept_description, dept_manger) VALUES (2, N'OS', N'Open Source', 11);
INSERT dbo.Department(dept_id, dept_name, dept_description, dept_manger) VALUES (3, N'PD', N'Professional Web Development & BI', 5);
INSERT dbo.Department(dept_id, dept_name, dept_description, dept_manger) VALUES (4, N'Cross', N'Cross Platform Applications', NULL);
GO
SET IDENTITY_INSERT dbo.Department OFF
GO