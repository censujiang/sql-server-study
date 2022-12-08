USE 教务系统;
GO

CREATE PROCEDURE GetStudentAge
    @姓名 nvarchar(50),
    @年龄 int OUTPUT
AS
BEGIN
    SET @年龄 = (SELECT DATEDIFF(YEAR, 出生日期, GETDATE()) FROM 学生表 WHERE 姓名 = @姓名)
END
GO


DECLARE @年龄 int
EXEC GetStudentAge @姓名 = '杨世杰', @年龄 = @年龄 OUTPUT
SELECT @年龄


