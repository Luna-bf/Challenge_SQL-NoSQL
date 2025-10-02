-- 1. Création de la base de données et de sa table (CREATE)
CREATE DATABASE boutique_livres_db;

CREATE TABLE livres;

-- 2. Insertion des données (INSERT)
INSERT INTO livres (titre, auteur, prix, annee_publication) VALUES
    ('Elle s\'appelait Sarah', 'Tatiana de Rosnay', 19.00, '2007'),
    ('La quatrième apprentie', 'Erin Hunter', 8.10, '2009'),
    ('Les Malheurs de Sophie', 'La Comtesse de Ségur', 14.50, '1858'),
    ('Croc-Blanc', 'Jack London', 4.95, '1906'),
    ('La prophétie du tatou', 'Zerocalcare', 21.00, '2020');


-- 3. Mise à jour (UPDATE)
UPDATE livres
SET
    titre = 'La Chronique Des Bridgerton - Tome 1 : Daphné et le duc',
    auteur = 'Julia Quinn',
    prix = 3.50,
    annee_publication = '2016'
WHERE
    titre = 'Les Malheurs de Sophie';


-- 4. Lecture (SELECT)

-- Écrivez et exécutez la requête SQL pour afficher tous les titres et les auteurs des livres dont le prix est supérieur à 20.00
SELECT titre, auteur
FROM livres
WHERE prix > 20.00;

-- Écrivez et exécutez la requête SQL pour trouver le nombre total de livres écrits par un auteur spécifique de votre choix.
SELECT COUNT(*) AS nombre_total_livres FROM livres WHERE auteur = 'Julia Quinn';
