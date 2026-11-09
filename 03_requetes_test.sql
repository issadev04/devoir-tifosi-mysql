USE tifosi;

-- =====================================================
-- REQUÊTE 1
-- Objectif : afficher les noms des focaccias
-- par ordre alphabétique.
-- =====================================================

SELECT nom
FROM focaccia
ORDER BY nom ASC;

-- Résultat attendu : 8 focaccias affichées par ordre alphabétique.
-- Résultat obtenu : 8 focaccias affichées par ordre alphabétique.


-- =====================================================
-- REQUÊTE 2
-- Objectif : compter le nombre total d'ingrédients.
-- =====================================================

SELECT COUNT(*) AS nombre_ingredients
FROM ingredient;

-- Résultat attendu : 25 ingrédients.
-- Résultat obtenu : 25 ingrédients enregistrés dans la base.


-- =====================================================
-- REQUÊTE 3
-- Objectif : calculer le prix moyen des focaccias.
-- =====================================================

SELECT AVG(prix) AS prix_moyen
FROM focaccia;

-- Résultat attendu : environ 10,38 €.
-- Résultat obtenu : 10,375 €, soit 10,38 € arrondi à deux décimales.


-- =====================================================
-- REQUÊTE 4
-- Objectif : afficher chaque boisson avec sa marque,
-- par ordre alphabétique du nom des boissons.
-- =====================================================

SELECT boisson.nom AS boisson,
       marque.nom AS marque
FROM boisson
INNER JOIN marque
    ON boisson.id_marque = marque.id_marque
ORDER BY boisson.nom ASC;

-- Résultat attendu : 12 boissons avec leur marque.
-- Résultat obtenu : 12 boissons affichées avec leur marque,
-- par ordre alphabétique.


-- =====================================================
-- REQUÊTE 5
-- Objectif : afficher les ingrédients de la focaccia Raclaccia.
-- =====================================================

SELECT focaccia.nom AS focaccia,
       ingredient.nom AS ingredient
FROM focaccia
INNER JOIN comprend
    ON focaccia.id_focaccia = comprend.id_focaccia
INNER JOIN ingredient
    ON comprend.id_ingredient = ingredient.id_ingredient
WHERE focaccia.nom = 'Raclaccia';

-- Résultat attendu : 7 ingrédients pour la Raclaccia.
-- Résultat obtenu : 7 ingrédients affichés pour la Raclaccia.


-- =====================================================
-- REQUÊTE 6
-- Objectif : afficher chaque focaccia avec son nombre d'ingrédients.
-- =====================================================

SELECT focaccia.nom AS focaccia,
       COUNT(comprend.id_ingredient) AS nombre_ingredients
FROM focaccia
INNER JOIN comprend
    ON focaccia.id_focaccia = comprend.id_focaccia
GROUP BY focaccia.id_focaccia, focaccia.nom
ORDER BY focaccia.nom ASC;

-- Résultat attendu : 8 focaccias avec leur nombre d'ingrédients.
-- Résultat obtenu :
-- Américaine : 8, Emmentalaccia : 7, Gorgonzollaccia : 8,
-- Hawaienne : 9, Mozaccia : 10, Paysanne : 12,
-- Raclaccia : 7, Tradizione : 9.


-- =====================================================
-- REQUÊTE 7
-- Objectif : trouver la focaccia qui contient
-- le plus grand nombre d'ingrédients.
-- =====================================================

SELECT focaccia.nom AS focaccia,
       COUNT(comprend.id_ingredient) AS nombre_ingredients
FROM focaccia
INNER JOIN comprend
    ON focaccia.id_focaccia = comprend.id_focaccia
GROUP BY focaccia.id_focaccia, focaccia.nom
ORDER BY nombre_ingredients DESC
LIMIT 1;

-- Résultat attendu : Paysanne, avec 12 ingrédients.
-- Résultat obtenu : Paysanne, avec 12 ingrédients.


-- =====================================================
-- REQUÊTE 8
-- Objectif : afficher les focaccias contenant de l'ail.
-- =====================================================

SELECT focaccia.nom AS focaccia
FROM focaccia
INNER JOIN comprend
    ON focaccia.id_focaccia = comprend.id_focaccia
INNER JOIN ingredient
    ON comprend.id_ingredient = ingredient.id_ingredient
WHERE ingredient.nom = 'Ail';

-- Résultat attendu : 4 focaccias.
-- Résultat obtenu : 4 focaccias contenant de l'ail :
-- Mozaccia, Gorgonzollaccia, Raclaccia et Paysanne.


-- =====================================================
-- REQUÊTE 9
-- Objectif : afficher les ingrédients qui ne sont utilisés
-- dans aucune focaccia.
-- =====================================================

SELECT ingredient.nom AS ingredient
FROM ingredient
WHERE NOT EXISTS (
    SELECT 1
    FROM comprend
    WHERE comprend.id_ingredient = ingredient.id_ingredient
);

-- Résultat attendu : 2 ingrédients inutilisés.
-- Résultat obtenu : Salami et Tomate cerise.
-- Ces deux ingrédients ne sont utilisés dans aucune focaccia.


-- =====================================================
-- REQUÊTE 10
-- Objectif : afficher les focaccias qui ne contiennent
-- pas de champignons.
-- =====================================================

SELECT focaccia.nom AS focaccia
FROM focaccia
WHERE NOT EXISTS (
    SELECT 1
    FROM comprend
    INNER JOIN ingredient
        ON comprend.id_ingredient = ingredient.id_ingredient
    WHERE comprend.id_focaccia = focaccia.id_focaccia
      AND ingredient.nom = 'Champignon'
);

-- Résultat attendu : 2 focaccias.
-- Résultat obtenu : Américaine et Hawaienne.
-- Ces deux focaccias ne contiennent pas de champignons.