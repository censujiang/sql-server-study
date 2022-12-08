USE 教务系统;
GO

-- 创建存储过程
CREATE PROCEDURE GetCourseSelection 
@课程名 nvarchar(50), 
@选课人数 int OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @课程号 int;

    SELECT @课程号 = 课程号
    FROM 课程表
    WHERE 课程名 = @课程名;

    SELECT @选课人数 = COUNT(DISTINCT 学号)
    FROM 成绩表
    WHERE 课程号 = @课程号;
END


-- 测试存储过程
DECLARE @选课人数 int
EXEC GetCourseSelection @课程名 = 'ASP.NET应用程序设计', @选课人数 = @选课人数 OUTPUT
SELECT @选课人数