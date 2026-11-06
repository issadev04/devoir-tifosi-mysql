# Tifosi – Base de données MySQL

## 1. Présentation du projet

Ce projet consiste à concevoir et mettre en place une base de données relationnelle MySQL pour le restaurant Tifosi, spécialisé dans la street-food italienne.

La base de données, nommée `tifosi`, permet de gérer les focaccias, les ingrédients, les boissons et les marques.

## 2. Objectifs du projet

- Concevoir le schéma relationnel à partir du modèle conceptuel fourni.
- Créer et configurer la base de données MySQL.
- Créer un utilisateur dédié à l'administration de la base de données.
- Mettre en place les contraintes d'intégrité : champs obligatoires, clés primaires, clés étrangères et valeurs uniques.
- Alimenter la base avec les données fournies.
- Réaliser les 10 requêtes SQL demandées dans le cahier des charges.
- Comparer les résultats attendus et les résultats obtenus.

## 3. Technologies et outils utilisés

- MySQL Server
- MySQL Workbench
- SQL
- Git
- GitHub
- Visual Studio Code

## 4. Structure du projet

La structure cible du projet est la suivante :

    devoir-tifosi-mysql/
    │
    ├── 01_creation_schema.sql
    ├── 02_peuplement_donnees.sql
    ├── 03_requetes_test.sql
    ├── .gitignore
    └── README.md

## 5. Scripts SQL

Le projet comporte trois scripts SQL correspondant aux livrables demandés :

| Fichier | Description |
|---|---|
| `01_creation_schema.sql` | Création du schéma de la base de données et de ses tables. |
| `02_peuplement_donnees.sql` | Insertion des données de test dans les tables. |
| `03_requetes_test.sql` | Regroupement des 10 requêtes de vérification et présentation de leurs résultats. |

## 6. Sources des données

Les données de test sont fournies sous forme de quatre fichiers Excel :

- `focaccia.xlsx`
- `ingredient.xlsx`
- `boisson.xlsx`
- `marque.xlsx`

Ces fichiers servent de sources pour alimenter la base de données.

## 7. Vérification de la base de données

Le projet comprend 10 requêtes SQL permettant de vérifier le bon fonctionnement de la base de données :

1. Afficher la liste des noms des focaccias par ordre alphabétique croissant.
2. Afficher le nombre total d'ingrédients.
3. Afficher le prix moyen des focaccias.
4. Afficher la liste des boissons avec leur marque, triée par nom de boisson.
5. Afficher la liste des ingrédients pour une Raclaccia.
6. Afficher le nom et le nombre d'ingrédients pour chaque focaccia.
7. Afficher le nom de la focaccia qui possède le plus d'ingrédients.
8. Afficher la liste des focaccias qui contiennent de l'ail.
9. Afficher la liste des ingrédients inutilisés.
10. Afficher la liste des focaccias qui ne contiennent pas de champignons.

Pour chaque requête, les éléments suivants seront indiqués :

- Le numéro et le but de la requête.
- Le code SQL.
- Le résultat attendu.
- Le résultat obtenu.
- Un commentaire sur les éventuels écarts entre les résultats.

## 8. Gestion du projet

Le projet est versionné avec Git et hébergé sur GitHub.

Les modifications sont organisées à l'aide de branches et de commits afin de conserver un historique du développement.

## 9. Auteur

Projet réalisé dans le cadre d'un exercice de formation en développement web.