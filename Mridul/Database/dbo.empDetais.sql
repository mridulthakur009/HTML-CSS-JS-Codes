CREATE TABLE [dbo].[empDetais] (
    [empNo]   INT            NOT NULL,
    [Name]    NVARCHAR (50)  NULL,
    [Email]   NVARCHAR (50)  NULL,
    [Address] NVARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([empNo] ASC)
);

