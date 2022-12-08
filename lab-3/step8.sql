USE 教务系统;

SELECT *
FROM 学生表
WHERE 姓名 LIKE '陈%'
AND LEN(姓名) = 2;
