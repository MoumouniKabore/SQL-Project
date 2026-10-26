-- Insertion des données dans la table 'usine'
INSERT INTO usine (nom_u, ville) 
VALUES 
    ('Citroen', 'Paris'),
    ('Peugeot', 'Sochaux'),
    ('Citroen', 'Sochaux'),
    ('Renault', 'Paris'),
    ('Toyota', 'Lyon');


-- Insertion des données dans la table 'produit'
INSERT INTO produit (nom_p, couleur, poids)
VALUES 
    ('Plaquette', 'Noir', 0.257),
    ('Siège', 'Rouge', 15.230),
    ('Siège', 'Vert', 15.230),
    ('Pare-brise', NULL, 11.900),
    ('Rétroviseur', 'Vert', 1.020);


-- Insertion des données dans la table 'fournisseur'
INSERT INTO fournisseur (nom_f, statut, ville, email)
VALUES 
    ('Monroe', 'Producteur', 'Lyon', 'monroe@gmail.com'),
    ('Au bon siège', 'Sous-traitant', 'Limoges', 'au_bon_siege@gmail.com'),
    ('Saint Gobain', 'Producteur', 'Paris', 'saint_gobain@gmail.com');


-- Insertion des données dans la table 'livraison'
INSERT INTO livraison (np, nu, nf, quantite)
VALUES 
    (3, 1, 2, 60),
    (1, 2, 3, 2500),
    (1, 3, 3, 3000),
    (2, 2, 3, 120),
    (3, 1, 1, 49),
    (3, 2, 1, 45),
    (3, 3, 1, 78),
    (2, 4, 2, 52),
    (2, 1, 1, 250);
