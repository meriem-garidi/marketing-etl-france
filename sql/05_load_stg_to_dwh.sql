USE Marketing_Commerces_DWH;
GO

INSERT INTO dbo.DWH_Commerces_Commune (
    code_departement,
    code_commune,
    nom_commune,
    population_2010,
    total_commerces,
    segment_commercial
)
SELECT
    code_departement,
    code_commune,
    nom_commune,
    population_2010,
    total_commerces,
    CASE 
        WHEN total_commerces < 30 THEN 'Faible'
        WHEN total_commerces BETWEEN 30 AND 100 THEN 'Moyenne'
        ELSE 'Forte'
    END AS segment_commercial
FROM Marketing_Commerces_STG.dbo.STG_Commerces_Commune;
GO