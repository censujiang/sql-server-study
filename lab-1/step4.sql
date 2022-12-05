USE 教务系统;
GO

ALTER DATABASE 教务系统
ADD LOG FILE (
    NAME = LOG_1,
    FILENAME = 'E:\database\LOG_1.ldf',
    SIZE = 10MB,
    MAXSIZE = 60MB,
    FILEGROWTH = 10%
);

ALTER DATABASE 教务系统
ADD LOG FILE (
    NAME = LOG_2,
    FILENAME = 'E:\database\LOG_2.ldf',
    SIZE = 10MB,
    MAXSIZE = 60MB,
    FILEGROWTH = 10%
);
