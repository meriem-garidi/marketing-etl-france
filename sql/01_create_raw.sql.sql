CREATE DATABASE Marketing_Commerces_RAW;
GO

USE Marketing_Commerces_RAW;
GO

CREATE TABLE dbo.RAW_Commerces_Commune (
    id_raw INT IDENTITY(1,1) PRIMARY KEY,

    departement INT NULL,
    departement_commune INT NULL,
    libelle_de_commune NVARCHAR(255) NULL,
    arrondissement INT NULL,
    canton_ville INT NULL,
    zone_d_emploi INT NULL,
    unite_urbaine INT NULL,
    population_2010 INT NULL,

    hypermarche INT NULL,
    supermarche INT NULL,
    grande_surface_de_bricolage INT NULL,
    superette INT NULL,
    epicerie INT NULL,
    boulangerie INT NULL,
    boucherie_charcuterie INT NULL,
    produits_surgeles INT NULL,
    poissonnerie INT NULL,
    librairie_papeterie_journaux INT NULL,
    magasin_de_vetements INT NULL,
    magasin_d_equipements_du_foyer INT NULL,
    magasin_de_chaussures INT NULL,
    magasin_d_electromenager_et_de_mat_audio_video INT NULL,
    magasin_de_meubles INT NULL,
    magasin_d_articles_de_sports_et_de_loisirs INT NULL,
    magasin_de_revetements_murs_et_sols INT NULL,
    droguerie_quincaillerie_bricolage INT NULL,
    parfumerie INT NULL,
    horlogerie_bijouterie INT NULL,
    fleuriste INT NULL,
    magasin_d_optique INT NULL,
    station_service INT NULL,

    geo_point_2d NVARCHAR(255) NULL,
    geo_shape NVARCHAR(MAX) NULL,

    date_chargement DATETIME DEFAULT GETDATE()
);
GO