USE 教务系统;
GO

CREATE PROCEDURE GetCourseScoreRange
    @课程名 NVARCHAR(50),
    @最高成绩 INT OUTPUT,
    @最低成绩 INT OUTPUT
AS
BEGIN
    SELECT @最高成绩 = MAX(成绩), @最低成绩 = MIN(成绩)
    FROM 成绩表
    WHERE 课程号 = (SELECT 课程号 FROM 课程表 WHERE 课程名 = @课程名)
END
GO

DECLARE @最高成绩 INT, @最低成绩 INT
EXEC GetCourseScoreRange @课程名 = '税法实务', @最高成绩 = @最高成绩 OUTPUT, @最低成绩 = @最低成绩 OUTPUT
SELECT @最高成绩 AS '最高成绩', @最低成绩 AS '最低成绩'