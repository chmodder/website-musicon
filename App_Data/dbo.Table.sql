CREATE TABLE [dbo].[nyheder]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [overskrift] NVARCHAR(50) NOT NULL, 
    [manchet] NVARCHAR(500) NOT NULL, 
    [tekst] NTEXT NOT NULL, 
    [forfatter] NVARCHAR(50) NOT NULL, 
    [img] NVARCHAR(50) NOT NULL , 
    [oprettetDen] DATETIME NOT NULL DEFAULT GET_DATE()
)
