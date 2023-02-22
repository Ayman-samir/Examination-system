SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO


-- To return all students data using Department number -- 

CREATE   PROC [dbo].[Show_Students_Of_Department]
@Department int 
as
begin
SELECT std_id, std_name,  std_address, user_std
FROM     Student
where std_dept = @Department
end
exec Show_Students_Of_Department 3
GO