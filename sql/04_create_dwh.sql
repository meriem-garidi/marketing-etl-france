CREATE DATABASE Marketing_Commerces_DWH;
GO

USE Marketing_Commerces_DWH;
GO

CREATE TABLE dbo.DWH_Commerces_Commune (
    id_dwh INT IDENTITY(1,1) PRIMARY KEY,

    code_departement INT,
    code_commune INT,
    nom_commune NVARCHAR(255),
    population_2010 INT,

    total_commerces INT,
    segment_commercial NVARCHAR(50),

    date_integration DATETIME DEFAULT GETDATE()
);
GO