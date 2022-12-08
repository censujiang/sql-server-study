USE 教务系统
GO

CREATE TRIGGER tr_DeleteStudent
ON 学生表
FOR DELETE
AS
BEGIN
    DECLARE @学号 int

    SELECT @学号 = 学号
    FROM deleted

    DELETE FROM 成绩表
    WHERE 学号 = @学号
END
