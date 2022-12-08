USE 教务系统;
GO

CREATE PROCEDURE UpdateCourse
    @课程号 INT
AS
BEGIN
    UPDATE 成绩表
    SET 成绩 = 60
    WHERE 课程号 = @课程号
      AND 成绩 > 55
      AND 成绩 < 60;
END;
GO

EXEC UpdateCourse 1006;
