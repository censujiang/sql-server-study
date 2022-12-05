USE 教务系统;
GO

ALTER DATABASE 教务系统 ADD FILE (
    NAME = 系统信息数据,
    FILENAME = 'E:\database\系统信息数据.mdf',
    SIZE = 20MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 20%
);

ALTER DATABASE 教务系统 ADD FILE (
    NAME = DB,
    FILENAME = 'E:\database\DB.ndf',
    SIZE = 20MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 20%
);