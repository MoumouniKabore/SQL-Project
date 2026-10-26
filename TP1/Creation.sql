-- Création de la base de données et des différents tables.

-- BASE DE DONNÉES
CREATE DATABASE tp1;


-- Table usine
CREATE TABLE usine (
	nu INT AUTO_INCREMENT PRIMARY KEY,
    nom_u VARCHAR(50),
    ville VARCHAR(50)
);


-- Table produit
CREATE TABLE produit (
    np INT AUTO_INCREMENT PRIMARY KEY,
    nom_p VARCHAR(50),
    couleur VARCHAR(50),
    poids DECIMAL(6, 3) UNSIGNED
);


-- Table fournisseur
CREATE TABLE fournisseur (
    nf INT AUTO_INCREMENT PRIMARY KEY,
    nom_f VARCHAR(50),
    statut VARCHAR(50),
    ville VARCHAR(50),
    email VARCHAR(50) UNIQUE
);


-- Table livraison
CREATE TABLE livraison (
    np INT,
    nu INT,
    nf INT,
    quantite INT UNSIGNED,
    CONSTRAINT fk_produit FOREIGN KEY (np) REFERENCES produit(np),
    CONSTRAINT fk_usine FOREIGN KEY (nu) REFERENCES usine(nu),
    CONSTRAINT fk_fournisseur FOREIGN KEY (nf) REFERENCES fournisseur(nf)
);
