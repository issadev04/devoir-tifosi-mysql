USE tifosi;

-- Création de la table ingredient
CREATE TABLE ingredient (
    id_ingredient INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_ingredient),
    UNIQUE (nom)
);
-- Création de la table focaccia
CREATE TABLE focaccia (
    id_focaccia INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id_focaccia),
    UNIQUE (nom)
);
-- Création de la table client
CREATE TABLE client (
    id_client INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    code_postal INT NOT NULL,
    PRIMARY KEY (id_client),
    UNIQUE (email)
);
-- Création de la table menu
CREATE TABLE menu (
    id_menu INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    id_focaccia INT NOT NULL,
    PRIMARY KEY (id_menu),
    UNIQUE (nom),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);
-- Création de la table marque
CREATE TABLE marque (
    id_marque INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_marque),
    UNIQUE (nom)
);
-- Création de la table boisson
CREATE TABLE boisson (
    id_boisson INT NOT NULL AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    id_marque INT NOT NULL,
    PRIMARY KEY (id_boisson),
    UNIQUE (nom),
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);
-- Création de la table comprend
CREATE TABLE comprend (
    id_ingredient INT NOT NULL,
    id_focaccia INT NOT NULL,
    quantite INT NOT NULL,
    PRIMARY KEY (id_ingredient, id_focaccia),
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);
-- Création de la table achete
CREATE TABLE achete (
    id_client INT NOT NULL,
    id_menu INT NOT NULL,
    date_achat DATE NOT NULL,
    PRIMARY KEY (id_client, id_menu, date_achat),
    FOREIGN KEY (id_client) REFERENCES client(id_client),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);
-- Création de la table contient
CREATE TABLE contient (
    id_menu INT NOT NULL,
    id_boisson INT NOT NULL,
    PRIMARY KEY (id_menu, id_boisson),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
);