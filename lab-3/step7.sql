USE 教务系统;

SELECT *
FROM 学生表
WHERE NOT (MONTH(出生日期) = 11 OR MONTH(出生日期) = 12 OR MONTH(出生日期) = 1 OR MONTH(出生日期) = 2)
AND YEAR(出生日期) = 2001;
