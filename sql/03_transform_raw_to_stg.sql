USE Marketing_Commerces_STG;
GO

INSERT INTO dbo.STG_Commerces_Commune (
    code_departement,
    code_commune,
    nom_commune,
    population_2010,

    hypermarche,
    supermarche,
    grande_surface_de_bricolage,
    superette,
    epicerie,
    boulangerie,
    boucherie_charcuterie,
    produits_surgeles,
    poissonnerie,
    librairie_papeterie_journaux,
    magasin_de_vetements,
    magasin_d_equipements_du_foyer,
    magasin_de_chaussures,
    magasin_d_electromenager_audio_video,
    magasin_de_meubles,
    magasin_articles_sports_loisirs,
    magasin_revetements_murs_sols,
    droguerie_quincaillerie_bricolage,
    parfumerie,
    horlogerie_bijouterie,
    fleuriste,
    magasin_optique,
    station_service,

    total_commerces
)
SELECT
    departement AS code_departement,
    departement_commune AS code_commune,
    libelle_de_commune AS nom_commune,
    population_2010,

    ISNULL(hypermarche,0),
    ISNULL(supermarche,0),
    ISNULL(grande_surface_de_bricolage,0),
    ISNULL(superette,0),
    ISNULL(epicerie,0),
    ISNULL(boulangerie,0),
    ISNULL(boucherie_charcuterie,0),
    ISNULL(produits_surgeles,0),
    ISNULL(poissonnerie,0),
    ISNULL(librairie_papeterie_journaux,0),
    ISNULL(magasin_de_vetements,0),
    ISNULL(magasin_d_equipements_du_foyer,0),
    ISNULL(magasin_de_chaussures,0),
    ISNULL(magasin_d_electromenager_et_de_mat_audio_video,0),
    ISNULL(magasin_de_meubles,0),
    ISNULL(magasin_d_articles_de_sports_et_de_loisirs,0),
    ISNULL(magasin_de_revetements_murs_et_sols,0),
    ISNULL(droguerie_quincaillerie_bricolage,0),
    ISNULL(parfumerie,0),
    ISNULL(horlogerie_bijouterie,0),
    ISNULL(fleuriste,0),
    ISNULL(magasin_d_optique,0),
    ISNULL(station_service,0),

    (
        ISNULL(hypermarche,0) +
        ISNULL(supermarche,0) +
        ISNULL(grande_surface_de_bricolage,0) +
        ISNULL(superette,0) +
        ISNULL(epicerie,0) +
        ISNULL(boulangerie,0) +
        ISNULL(boucherie_charcuterie,0) +
        ISNULL(produits_surgeles,0) +
        ISNULL(poissonnerie,0) +
        ISNULL(librairie_papeterie_journaux,0) +
        ISNULL(magasin_de_vetements,0) +
        ISNULL(magasin_d_equipements_du_foyer,0) +
        ISNULL(magasin_de_chaussures,0) +
        ISNULL(magasin_d_electromenager_et_de_mat_audio_video,0) +
        ISNULL(magasin_de_meubles,0) +
        ISNULL(magasin_d_articles_de_sports_et_de_loisirs,0) +
        ISNULL(magasin_de_revetements_murs_et_sols,0) +
        ISNULL(droguerie_quincaillerie_bricolage,0) +
        ISNULL(parfumerie,0) +
        ISNULL(horlogerie_bijouterie,0) +
        ISNULL(fleuriste,0) +
        ISNULL(magasin_d_optique,0) +
        ISNULL(station_service,0)
    ) AS total_commerces

FROM Marketing_Commerces_RAW.dbo.RAW_Commerces_Commune;
GO