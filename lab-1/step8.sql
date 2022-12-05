USE 教务系统;
GO

ALTER DATABASE 教务系统
MODIFY FILE (
    NAME = DB,
    NEWNAME = DB1,
    FILENAME = 'E:\database\DB1.Ndf'
);
