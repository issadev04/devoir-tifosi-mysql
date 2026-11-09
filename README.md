# Tifosi – Base de données MySQL

## 1. Présentation du projet

Ce projet consiste à concevoir et mettre en place une base de données relationnelle MySQL pour le restaurant Tifosi, spécialisé dans la street-food italienne.

La base de données, nommée `tifosi`, permet de gérer les focaccias, les ingrédients, les boissons, les marques, les menus et les clients.

Elle est conçue à partir du modèle conceptuel fourni dans le cahier des charges et respecte les principes de conception d'une base de données relationnelle.

## 2. Objectifs du projet

Les objectifs de ce projet sont les suivants :

- Concevoir le schéma relationnel à partir du modèle conceptuel fourni.
- Créer et configurer la base de données MySQL.
- Créer un utilisateur dédié à l'administration de la base de données.
- Mettre en place les contraintes d'intégrité : champs obligatoires, clés primaires, clés étrangères, valeurs uniques et contrôles de cohérence.
- Alimenter la base avec les données fournies.
- Réaliser les 10 requêtes SQL demandées dans le cahier des charges.
- Vérifier le bon fonctionnement des requêtes.
- Comparer les résultats attendus et les résultats obtenus.

## 3. Technologies et outils utilisés

Les technologies et outils utilisés pour réaliser ce projet sont :

- MySQL Server 8.4
- MySQL Workbench
- SQL
- Git
- GitHub
- Visual Studio Code

## 4. Structure du projet

Le dépôt GitHub contient les fichiers suivants :

    devoir-tifosi-mysql/
    ├── data/
    │   ├── boisson.xlsx
    │   ├── focaccia.xlsx
    │   ├── ingredient.xlsx
    │   └── marque.xlsx
    ├── 01_creation_schema.sql
    ├── 02_peuplement_donnees.sql
    ├── 03_requetes_test.sql
    ├── .gitignore
    └── README.md

## 5. Scripts SQL

Le projet comporte trois scripts SQL correspondant aux livrables demandés dans le cahier des charges.

| Fichier                     | Description                                                                                                               |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `01_creation_schema.sql`    | Création de la base de données `tifosi`, du schéma relationnel et des neuf tables.                                        |
| `02_peuplement_donnees.sql` | Insertion des données fournies dans les tables.                                                                           |
| `03_requetes_test.sql`      | Regroupement des dix requêtes SQL de vérification, avec leurs objectifs, les résultats attendus et les résultats obtenus. |

### Contraintes d'intégrité

Le schéma relationnel intègre plusieurs contraintes destinées à garantir la cohérence des données :

- `PRIMARY KEY` : identification unique de chaque enregistrement.
- `FOREIGN KEY` : respect des relations entre les tables.
- `NOT NULL` : obligation de renseigner certains champs.
- `UNIQUE` : interdiction des valeurs en double sur les champs concernés.
- `CHECK` : contrôle des valeurs autorisées.

Les contraintes `CHECK` imposent notamment :

- Un prix strictement positif pour les focaccias et les menus.
- Une quantité strictement positive pour les ingrédients associés aux focaccias.

## 6. Sources des données

Les données nécessaires au peuplement de la base sont fournies sous forme de quatre fichiers Excel :

- `focaccia.xlsx`
- `ingredient.xlsx`
- `boisson.xlsx`
- `marque.xlsx`

Ces fichiers constituent les sources utilisées pour alimenter les tables correspondantes.

Le peuplement comprend :

- 25 ingrédients.
- 8 focaccias.
- 4 marques.
- 12 boissons.
- 70 associations entre les ingrédients et les focaccias.

## 7. Installation et exécution

### Prérequis

Pour installer et utiliser le projet, les éléments suivants sont nécessaires :

- MySQL Server 8.0.16 ou une version ultérieure.
- MySQL Workbench.
- Un compte MySQL disposant des privilèges nécessaires pour créer une base de données et gérer les utilisateurs.

MySQL Server 8.4.13 est utilisé pour le développement et les tests du projet.

### Configuration de l'utilisateur MySQL

Un utilisateur nommé `tifosi` est configuré pour administrer la base de données `tifosi`.

Ses privilèges ont été vérifiés dans MySQL Workbench. Il dispose de tous les privilèges nécessaires sur cette base.

La création de cet utilisateur et l'attribution de ses privilèges sont effectuées séparément de la création du schéma.

Le mot de passe est défini localement et ne doit pas être publié dans le dépôt GitHub.

### Ordre d'exécution des scripts

Ouvrir MySQL Workbench et exécuter les trois scripts dans l'ordre suivant :

1. `01_creation_schema.sql` : création de la base de données et des neuf tables.
2. `02_peuplement_donnees.sql` : insertion des données dans les tables.
3. `03_requetes_test.sql` : exécution des dix requêtes de vérification.

**Important :** les scripts de création et de peuplement sont destinés à une première installation. Ils ne doivent pas être exécutés une seconde fois sur une base déjà créée et alimentée sans procédure de réinitialisation adaptée.

## 8. Vérification de la base de données

Le projet comprend dix requêtes SQL permettant de vérifier le bon fonctionnement de la base de données et de répondre aux demandes du cahier des charges.

Les dix requêtes portent sur les opérations suivantes :

1. Afficher les noms des focaccias par ordre alphabétique croissant.
2. Afficher le nombre total d'ingrédients.
3. Calculer le prix moyen des focaccias.
4. Afficher les boissons avec leur marque, triées par nom de boisson.
5. Afficher les ingrédients de la Raclaccia.
6. Afficher chaque focaccia avec son nombre d'ingrédients.
7. Identifier la focaccia qui possède le plus grand nombre d'ingrédients.
8. Afficher les focaccias qui contiennent de l'ail.
9. Afficher les ingrédients qui ne sont utilisés dans aucune focaccia.
10. Afficher les focaccias qui ne contiennent pas de champignons.

Pour chaque requête, les éléments suivants sont indiqués dans le script `03_requetes_test.sql` :

- Le numéro et l'objectif de la requête.
- Le code SQL utilisé.
- Le résultat attendu.
- Le résultat obtenu.
- Un commentaire sur les éventuels écarts entre les résultats.

Les dix requêtes ont été exécutées avec succès dans MySQL Workbench.

## 9. Gestion du projet

Le projet est versionné avec Git et hébergé sur GitHub.

Le développement est organisé à l'aide de branches et de commits afin de conserver un historique des modifications.

Le suivi du projet s'appuie également sur les fonctionnalités de gestion de projet de GitHub :

- Issues : identification et suivi des tâches à réaliser.
- Branches : séparation des développements.
- Commits : enregistrement des modifications.
- Pull requests : vérification et intégration des modifications dans la branche principale.

Cette organisation permet de conserver un historique clair du développement et de faciliter le suivi du projet.

## 10. Auteur

Projet réalisé dans le cadre d'un exercice de formation en développement web.
