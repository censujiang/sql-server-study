USE 教务系统;

SELECT *
FROM 学生表
WHERE LEFT(RIGHT(学号, 7), 1) = '6' OR LEFT(RIGHT(学号, 7), 1) = '9';
