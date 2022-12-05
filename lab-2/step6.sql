USE 教务系统;
GO

-- 向学生表中插入一行数据
INSERT INTO 学生表 (学号, 姓名, 性别, 电话, EMAIL)
VALUES (202255666, '江江', '武装直升机', 66666666, 'test@test.com');

-- 向成绩表中插入一行数据
INSERT INTO 成绩表 (学号, 课程名, 成绩)
VALUES (202255666, 'Vue', 99);
