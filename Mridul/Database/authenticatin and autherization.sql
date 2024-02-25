CREATE TABLE EmployeeLoginHashed(
[UserId] [int] IDENTITY(1,1) NOT NULL,
    [Username] [varchar](50) NOT NULL,
    [Password] [varchar](100) NOT NULL

)
ALTER TABLE EmployeeLoginHashed
ADD UserGuid uniqueidentifier NULL

SELECT * FROM EmployeeLoginHashed
