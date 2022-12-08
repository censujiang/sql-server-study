USE 教务系统;
GO

CREATE TRIGGER 课程表_UpdateTrigger ON 课程表
AFTER UPDATE
AS
    IF UPDATE(课程号) OR UPDATE(课程名)
    BEGIN
        RAISERROR('不能修改课程号和课程名！', 16, 1);
        ROLLBACK TRANSACTION;
    END;
GO
