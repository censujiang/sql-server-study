USE 教务系统;
GO

CREATE PROCEDURE GetStudentInfo
    @学号 nvarchar(50),
    @姓名 nvarchar(50) OUTPUT,
    @性别 nvarchar(50) OUTPUT,
    @所属院系 nvarchar(50) OUTPUT,
    @专业名称 nvarchar(50) OUTPUT
AS
BEGIN
    SELECT @姓名 = 姓名, @性别 = 性别, @所属院系 = 所属院系, @专业名称 = 专业名称
    FROM 学生表
    WHERE 学号 = @学号;
END
GO

-- 测试存储过程
DECLARE @学号 int, @姓名 nvarchar(64), @性别 nvarchar(32), @所属院系 nvarchar(64), @专业名称 nvarchar(64)
EXEC GetStudentInfo @学号 = 1903070541, @姓名 = @姓名 OUTPUT, @性别 = @性别 OUTPUT, @所属院系 = @所属院系 OUTPUT, @专业名称 = @专业名称 OUTPUT
SELECT @姓名, @性别, @所属院系, @专业名称