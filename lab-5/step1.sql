USE 教务系统;
GO

CREATE TRIGGER tr_Course_Insert ON 课程表
FOR INSERT
AS
    PRINT '插入成功！'

INSERT INTO 课程表 (课程号, 课程名, 授课教师, 学时, 学分)
VALUES ('9999', '税法实务2', '张三', 32, 4)