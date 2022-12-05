USE 教务系统;
GO

-- 在学生表中添加主键约束
ALTER TABLE 学生表 ADD PRIMARY KEY (学号);

-- 在学生表中添加非空约束
ALTER TABLE 学生表 ALTER COLUMN 姓名 VARCHAR(50) NOT NULL ;

-- 在学生表中添加唯一约束
ALTER TABLE 学生表 ADD UNIQUE (EMAIL);

-- 在学生表中添加默认值约束
ALTER TABLE 学生表 ADD DEFAULT '男' FOR 性别;

-- 在成绩表中添加主键约束
ALTER TABLE 成绩表 ADD PRIMARY KEY (学号, 课程名);

-- 在成绩表中添加外键约束
ALTER TABLE 成绩表 ADD FOREIGN KEY (学号) REFERENCES 学生表 (学号);

-- 在成绩表中添加非空约束
ALTER TABLE 成绩表 ALTER COLUMN 课程名 VARCHAR(50) NOT NULL;

-- 在成绩表中添加检查约束
ALTER TABLE 成绩表 ADD CHECK (成绩 BETWEEN 0 AND 100);
