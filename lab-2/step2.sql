USE 教务系统;
GO

CREATE TABLE 学生表 (
    学号 INT PRIMARY KEY,
    姓名 VARCHAR(50),
    性别 VARCHAR(10),
    电话 VARCHAR(20),
    EMAIL VARCHAR(100)
);

INSERT INTO 学生表 VALUES (201913001, '李红', '女', '66113456', 'lihong@163.com');
INSERT INTO 学生表 VALUES (201913002, '张勇', '男', '66111234', 'zhangy@21.cn.com');
INSERT INTO 学生表 VALUES (201913003, '刘芳', '女', '65678902', 'liufang@sina.com');
INSERT INTO 学生表 VALUES (201913004, '刘丽', '女', '62345678', 'liuli@163.com');
INSERT INTO 学生表 VALUES (201913005, '林冲', '男', '68765432', 'linchong@163.com');
