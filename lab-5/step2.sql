USE 教务系统
Go

CREATE TRIGGER UpdateCourseId
ON 课程表
AFTER UPDATE
AS
BEGIN
    UPDATE 成绩表
    SET 成绩表.课程号 = 课程表.课程号
    FROM 课程表
    WHERE 课程表.课程号 = 成绩表.课程号
END