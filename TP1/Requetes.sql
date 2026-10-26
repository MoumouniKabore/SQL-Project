-- ********************* REPONSE *********************


-- -- 1
-- SELECT *
-- FROM usine


-- -- 2
-- SELECT nu as numero_usine, nom_u as nom_usine
-- FROM usine
-- WHERE ville = 'Sochaux'


-- -- 3
-- SELECT nf as numero_fournisseur
-- FROM livraison
-- WHERE nu = 1 AND np = 3


-- -- 4
-- SELECT np as numero_produit, nom_p as nom_produit
-- FROM produit
-- WHERE couleur IS NULL


-- -- 5
-- SELECT DISTINCT nom_u as nom_usine
-- FROM usine
-- ORDER BY nom_usine


-- -- 6
-- SELECT nu as numero_usine
-- FROM usine
-- WHERE nom_u LIKE 'C%'


-- -- 7
-- SELECT np as numero_produit
-- FROM produit
-- WHERE nom_p LIKE '%s%' OR nom_p LIKE '%S%'


-- -- 8
-- SELECT f.nom_f as nom_fournisseur
-- FROM fournisseur as f
-- INNER JOIN livraison as l
-- ON f.nf = l.nf
-- WHERE l.nu = 1 AND l.np = 3


-- -- 9
-- SELECT nom_p as nom_produit, couleur
-- FROM produit as p
-- INNER JOIN livraison as l
-- ON p.np = l.np
-- WHERE l.nf = 2


-- -- 10
-- SELECT l.nf as numero_fournisseur
-- FROM livraison as l
-- INNER JOIN produit as p
-- ON l.np = p.np
-- WHERE l.nu = 1 AND p.couleur = 'Rouge'


-- -- 11
-- SELECT f.nom_f as nom_fournisseur
-- FROM fournisseur as f
-- INNER JOIN livraison as l
-- ON f.nf = l.nf
-- INNER JOIN produit as p
-- ON l.np = p.np
-- INNER JOIN usine as u
-- ON l.nu = u.nu
-- WHERE (u.ville = 'Sochaux' OR u.ville = 'Paris') AND p.couleur = 'Rouge'


-- -- 12
-- SELECT l.np as numero_produit
-- FROM livraison as l
-- INNER JOIN usine as u
-- ON l.nu = u.nu
-- INNER JOIN fournisseur as f
-- ON l.nf = f.nf
-- WHERE u.ville = f.ville


-- -- 13
-- SELECT DISTINCT u.nu as numero_usine
-- FROM usine as u
-- INNER JOIN livraison as l
-- ON u.nu = l.nu
-- INNER JOIN fournisseur as f
-- ON l.nf = f.nf
-- WHERE u.ville <> f.ville


-- -- 14
-- SELECT DISTINCT nf as numero_fournisseur
-- FROM livraison
-- WHERE nu = 1 AND nf in (
--     SELECT nf
--     FROM livraison
--     WHERE nu = 2    
-- )


-- -- 15!
-- SELECT DISTINCT nu
-- FROM livraison
-- WHERE np in (
--     SELECT np
--     FROM livraison
--     WHERE nf = 3
-- )


-- -- 16!
-- SELECT nu
-- FROM livraison
-- WHERE nu NOT IN (
--     SELECT nu
--     FROM livraison
--     WHERE nf <> 3
-- )


-- -- 17!
-- SELECT DISTINCT nu
-- FROM livraison
-- WHERE nu NOT IN (
--     SELECT l.nu as numero_usine
--     FROM livraison as l
--     INNER JOIN produit as p
--     ON l.np = p.np
--     INNER JOIN fournisseur as f
--     ON l.nf = f.nf
--     WHERE p.couleur = 'Rouge' AND f.ville = 'Paris'
-- )
