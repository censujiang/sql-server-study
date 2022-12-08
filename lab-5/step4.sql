USE 教务系统
GO

-- 为成绩表创建INSERT触发器
CREATE TRIGGER tr_Insert_Score
ON 成绩表
AFTER INSERT
AS
BEGIN
    -- 定义变量用于保存插入记录的学号
    DECLARE @StudentId int
    -- 使用SELECT语句查询插入记录的学号
    SELECT @StudentId = 学号 FROM INSERTED

    -- 检查该学号在学生表中是否存在
    IF NOT EXISTS (SELECT * FROM 学生表 WHERE 学号 = @StudentId)
    BEGIN
        -- 如果不存在，则不容许插入
        RAISERROR ('不能插入该记录，因为学生表中不存在学号为%d的学生', 16, 1, @StudentId)
        ROLLBACK TRANSACTION
    END
END
