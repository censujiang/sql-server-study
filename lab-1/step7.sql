USE 教务系统;
GO

ALTER DATABASE 教务系统
ADD FILE (
    NAME = DB2,
    FILENAME = 'E:\database\DB2.Ndf',
    SIZE = 20MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 20%
);
