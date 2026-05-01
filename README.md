# Analyse marketing des commerces en France

## Contexte

Ce projet consiste à construire un pipeline ETL complet afin d’analyser l’implantation commerciale des communes françaises à partir d’un dataset open data.

## Objectifs

- Mettre en place un pipeline ETL (Extract, Transform, Load)
- Nettoyer et structurer les données
- Créer une segmentation marketing des communes
- Visualiser les résultats dans Power BI

## Technologies

- SQL Server (SSMS)
- SSIS
- Power BI
- SQL

## Architecture

CSV → RAW → STAGING → DWH → Power BI

## Segmentation marketing

Les communes sont segmentées selon leur niveau d’activité commerciale :

- Faible : moins de 30 commerces
- Moyenne : entre 30 et 100 commerces
- Forte : plus de 100 commerces

## Résultats

- 1300 communes analysées
- Segmentation équilibrée
- Identification des zones à fort potentiel commercial

## Dashboard

![Dashboard](documentation/dashboard_preview.png)

## Compétences démontrées

- ETL avec SSIS
- Modélisation SQL (RAW / STG / DWH)
- Transformation de données
- Analyse métier
- Data visualisation avec Power BI

## Dataset

Les données utilisées proviennent de l’open data français :

- Source : INSEE – Base Permanente des Équipements
- Plateforme : https://www.data.gouv.fr

Ce dataset fournit des informations détaillées sur les commerces par commune en France (supermarchés, boulangeries, stations-service, etc.).
