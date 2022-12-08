USE 教务系统;
GO

CREATE PROCEDURE InsertCourse
    @课程号 INT,
    @课程名 NVARCHAR(50),
    @授课教师 NVARCHAR(50),
    @开课学期 INT,
    @学时 INT,
    @学分 INT
AS
BEGIN
    INSERT INTO 课程表 (课程号, 课程名, 授课教师, 开课学期, 学时, 学分)
    VALUES (@课程号, @课程名, @授课教师, @开课学期, @学时, @学分);
END;
GO

EXEC InsertCourse 3, '线性代数', '刘教授', 2, 5, 2;
