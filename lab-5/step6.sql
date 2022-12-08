USE 教务系统
GO

CREATE TRIGGER tr_DeleteCourse
ON 课程表
FOR DELETE
AS
BEGIN
    --查找被删除的课程的课程号
    DECLARE @CourseId INT
    SELECT @CourseId = 课程号
    FROM DELETED

    --在成绩表中根据课程号删除相关记录
    DELETE FROM 成绩表
    WHERE 课程号 = @CourseId
END
