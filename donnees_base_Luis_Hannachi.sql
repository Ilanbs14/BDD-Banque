/* Insertion des valeurs dans les tables */

-- VALEURS TYPE_COMPTE --
INSERT INTO TYPE_COMPTE (idTypeCompte, nomTypeCompte, tauxTypeCompte)
VALUES
(1, "Compte Courant", 0),
(2, "Livret A", 0.75),
(3, "Compte Épargne", 1.5),
(4, "Compte à Terme", 2.5),
(5, "Compte Joint", 0.5);

-- VALEURS TYPE_TRANSACTION --
INSERT INTO TYPE_TRANSACTION (idTypeTransac, nomTypeTransac)
VALUES
(1, "Dépôt"),
(2, "Retrait"),
(3, "Virement"),
(4, "Paiement par carte"),
(5, "Prélèvement automatique");

INSERT INTO VILLE (idVille, nomVille, codePostal)
VALUES
(1, 'Paris', '75001'),
(2, 'Orsay', '91400'),
(3, 'Arpajon', '91290'),
(4, 'Toulouse', '31000'),
(5, 'Lille', '59000'),
(6, 'Marseille', '13000'),
(7, 'Lyon', '69000'),
(8, 'Nice', '06000'),
(9, 'Bordeaux', '33000'),
(10, 'Nantes', '44000'),
(11, 'Strasbourg', '67000'),
(12, 'Rennes', '35000'),
(13, 'Grenoble', '38000'),
(14, 'Dijon', '21000'),
(15, 'Montpellier', '34000');

INSERT INTO TYPE_CB (idTypeCb, nomTypeCb, descriptionTypeCb, fraisTypeCb, recompenseTypeCb)
VALUES
(1, 'Carte Gold', 'Carte bancaire premium avec plafonds élevés', 200, '1% de cashback sur tous les achats'),
(2, 'Carte Platine', 'Carte bancaire de luxe avec services exclusifs', 500, '2% de cashback sur tous les achats et accès aux salons VIP'),
(3, 'Carte de Crédit', 'Carte de crédit avec paiements différés', 100, 'Aucun cashback, mais paiement différé avec taux compétitif');

-- VALEURS AGENCE --
INSERT INTO AGENCE (idAgence, nomAgence, adresseAgence, telAgence, idVille)
VALUES
(1, 'Agence Champs Élysées', '10 Avenue des Champs Élysées', '0145678901', 1), 
(2, 'Agence Saint-Michel', '25 Boulevard Saint-Michel', '0156789012', 2), 
(3, 'Agence Rue des Fleurs', '30 Rue des Fleurs', '0167890123', 3), 
(4, 'Agence Capitole', '15 Place du Capitole', '0178901234', 4), 
(5, 'Agence Rue Nationale', '5 Rue Nationale', '0189012345', 5),
(6, 'Agence Rivoli', '40 Rue de Rivoli', '0145789632', 1),
(7, 'Agence Avenue de Paris', '12 Avenue de Paris', '0156978456', 2),
(8, 'Agence République', '8 Place de la République', '0178945632', 3),
(9, 'Agence Allée des Peupliers', '22 Allée des Peupliers', '0189567321', 4),
(10, 'Agence Hôtel de Ville', '33 Rue de l’Hôtel de Ville', '0168745632', 5);


-- VALEURS COMPTE --
INSERT INTO COMPTE (idCompte, dateOuvCompte, soldeCompte, soldeMaxCompte, ibanCompte, ribCompte, idTypeCompte, idAgence)
VALUES
(1, '2014-01-01', 5243.10, 10000.00, 'FR7612345678901234567890123', '1234567890123456789012', 1, 1), 
(2, '2015-03-15', 15030.00, 30000.00, 'FR7612345678902234567890123', '1234567890123456789023', 2, 2), 
(3, '2016-06-20', 2500.09, 5000.00, 'FR7612345678903234567890123', '1234567890123456789034', 3, 4), 
(4, '2017-09-10', 8910.13, 15000.00, 'FR7612345678904234567890123', '1234567890123456789045', 1, 2), 
(5, '2018-12-01', 100.00, 5000.00, 'FR7612345678905234567890123', '1234567890123456789056', 2, 3), 
(6, '2019-07-19', 12252.00, 12000.00, 'FR7612345678906234567890123', '1234567890123456789067', 3, 5), 
(7, '2020-11-22', 3000.00, 10000.00, 'FR7612345678907234567890123', '1234567890123456789078', 1, 6), 
(8, '2021-03-05', 200.00, 5000.00, 'FR7612345678908234567890123', '1234567890123456789089', 2, 7), 
(9, '2022-05-12', 500.00, 1000.00, 'FR7612345678909234567890123', '1234567890123456789090', 1, 3), 
(10, '2023-08-30', 250.00, 1000.00, 'FR7612345678910234567890123', '1234567890123456789101', 2, 5),
(11, '2023-09-10', 7000.00, 20000.00, 'FR7612345678911234567890123', '1234567890123456789112', 1, 8), 
(12, '2023-10-15', 300.00, 5000.00, 'FR7612345678912234567890123', '1234567890123456789123', 2, 9), 
(13, '2023-11-05', 10005.00, 25000.00, 'FR7612345678913234567890123', '1234567890123456789134', 3, 10), 
(14, '2023-12-01', 1500.00, 10000.00, 'FR7612345678914234567890123', '1234567890123456789145', 1, 1), 
(15, '2023-12-08', 200.00, 3000.00, 'FR7612345678915234567890123', '1234567890123456789156', 2, 7),
(16, '2024-01-10', -150.00, 2000.00, 'FR7612345678916234567890123', '1234567890123456789167', 1, 1), 
(17, '2024-02-05', 1200.00, 5000.00, 'FR7612345678917234567890123', '1234567890123456789178', 2, 2),
(18, '2024-03-15', -50.46, 3000.00, 'FR7612345678918234567890123', '1234567890123456789189', 3, 3),
(19, '2024-04-25', 252.00, 1000.00, 'FR7612345678919234567890123', '1234567890123456789190', 2, 4),
(20, '2024-05-30', 5670.99, 10000.00, 'FR7612345678920234567890123', '1234567890123456789201', 1, 5);

-- VALEURS TRANSACTIONS --
INSERT INTO TRANSACTIONS (idTransaction, montantTransaction, dateTransaction, heureTransaction, messageTransaction, idTypeTransac, idCompte)
VALUES
(1, 50.00, '2024-01-01', '08:30:00', 'Dépôt en espèces', 1, 1),
(2, 30.00, '2024-01-02', '09:00:00', 'Retrait au distributeur', 2, 1),
(3, 100.00, '2024-01-03', '10:00:00', 'Paiement Amazon', 4, 2),
(4, 500.00, '2024-01-04', '11:00:00', 'Prélèvement loyer', 5, 2),
(5, 70.00, '2024-01-05', '12:00:00', 'Remboursement à Lucas', 3, 3),
(6, 200.00, '2024-01-06', '13:00:00', 'Virement salaire', 3, 3),
(7, 25.00, '2024-01-07', '14:00:00', 'Paiement restaurant', 4, 4),
(8, 10.00, '2024-01-08', '15:00:00', 'Retrait café', 2, 4),
(9, 60.00, '2024-01-09', '16:00:00', 'Dépôt au guichet', 1, 5),
(10, 80.00, '2024-01-10', '17:00:00', 'Paiement Netflix', 5, 5),
(11, 150.00, '2024-01-11', '18:00:00', 'Retrait au guichet', 2, 6),
(12, 300.00, '2024-01-12', '19:00:00', 'Paiement EDF', 5, 6),
(13, 450.00, '2024-01-13', '20:00:00', 'Virement héritage', 3, 7),
(14, 20.00, '2024-01-14', '21:00:00', 'Paiement fast-food', 4, 7),
(15, 120.00, '2024-01-15', '22:00:00', 'Achat livres', 4, 8),
(16, 600.00, '2024-01-16', '08:00:00', 'Prélèvement mutuelle', 5, 8),
(17, 400.00, '2024-01-17', '09:30:00', 'Dépôt', 1, 9),
(18, 35.00, '2024-01-18', '10:15:00', 'Paiement Uber', 4, 9),
(19, 90.00, '2024-01-19', '11:45:00', 'Retrait parking', 2, 9),
(20, 700.00, '2024-01-20', '12:30:00', 'Paiement garage', 4, 9),
(21, 85.00, '2024-01-21', '13:00:00', 'Paiement boulangerie', 4, 1),
(22, 15.00, '2024-01-22', '14:00:00', 'Retrait distributeur', 2, 2),
(23, 220.00, '2024-01-23', '15:00:00', 'Paiement école', 5, 2),
(24, 75.00, '2024-01-24', '16:00:00', 'Restaurant familial', 4, 3),
(25, 300.00, '2024-01-25', '17:00:00', 'Dépôt guichet', 1, 3),
(26, 90.00, '2024-01-26', '18:00:00', 'Paiement essence', 4, 4),
(27, 150.00, '2024-01-27', '19:00:00', 'Virement fournisseur', 3, 4),
(28, 1200.00, '2024-01-28', '20:00:00', 'Paiement crédit auto', 5, 5),
(29, 10.00, '2024-01-29', '21:00:00', 'Retrait distributeur', 2, 5),
(30, 600.00, '2024-01-30', '08:30:00', 'Paiement assurance', 5, 6),
(31, 250.00, '2024-01-31', '09:00:00', 'Virement épargne', 3, 6),
(32, 45.00, '2024-02-01', '10:30:00', 'Achat vêtements', 4, 7),
(33, 5.00, '2024-02-02', '11:15:00', 'Retrait distributeur', 2, 7),
(34, 500.00, '2024-02-03', '12:00:00', 'Virement loyer', 5, 8),
(35, 20.00, '2024-02-04', '12:45:00', 'Paiement péage', 4, 8),
(36, 70.00, '2024-02-05', '13:00:00', 'Dépôt guichet', 1, 9),
(37, 15.00, '2024-02-06', '14:00:00', 'Retrait distributeur', 2, 9),
(38, 120.00, '2024-02-07', '15:00:00', 'Paiement opticien', 5, 9),
(39, 200.00, '2024-02-08', '16:30:00', 'Virement salaire', 3, 9),
(40, 35.00, '2024-02-09', '17:15:00', 'Paiement Amazon', 4, 1),
(41, 250.00, '2024-02-10', '18:00:00', 'Paiement garage', 5, 2),
(42, 15.00, '2024-02-11', '18:30:00', 'Retrait distributeur', 2, 3),
(43, 600.00, '2024-02-12', '19:00:00', 'Virement familial', 3, 4),
(44, 75.00, '2024-02-13', '20:00:00', 'Paiement Carrefour', 4, 5),
(45, 300.00, '2024-02-14', '21:00:00', 'Dépôt guichet', 1, 6),
(46, 50.00, '2024-02-15', '10:00:00', 'Paiement pressing', 4, 7),
(47, 100.00, '2024-02-16', '11:30:00', 'Paiement restaurant', 4, 8),
(48, 200.00, '2024-03-01', '10:00:00', 'Virement épargne', 3, 9),
(49, 30.00, '2024-03-05', '11:00:00', 'Retrait distributeur', 2, 1),
(50, 75.00, '2024-03-10', '12:00:00', 'Paiement salle de sport', 4, 2),
(51, 300.00, '2024-03-15', '13:30:00', 'Dépôt guichet', 1, 3),
(52, 90.00, '2024-04-02', '10:00:00', 'Paiement essence', 4, 4),
(53, 150.00, '2024-04-08', '11:00:00', 'Virement remboursement', 3, 5),
(54, 45.00, '2024-04-15', '12:30:00', 'Achat livres', 4, 6),
(55, 60.00, '2024-05-05', '10:30:00', 'Paiement factures', 5, 7),
(56, 25.00, '2024-05-10', '11:15:00', 'Retrait distributeur', 2, 8),
(57, 200.00, '2024-06-01', '10:00:00', 'Virement familial', 3, 9),
(58, 50.00, '2024-06-10', '11:30:00', 'Paiement livraison', 4, 1),
(59, 75.00, '2024-06-20', '12:15:00', 'Dépôt guichet', 1, 2),
(60, 300.00, '2024-07-04', '09:00:00', 'Paiement EDF', 5, 3),
(61, 45.00, '2024-07-18', '10:30:00', 'Achat vêtements', 4, 4),
(62, 25.00, '2024-08-01', '08:30:00', 'Paiement Netflix', 5, 5),
(63, 15.00, '2024-08-10', '09:45:00', 'Retrait distributeur', 2, 6),
(64, 600.00, '2024-09-05', '11:30:00', 'Paiement assurance', 5, 7),
(65, 250.00, '2024-09-15', '14:00:00', 'Virement familial', 3, 8),
(66, 30.00, '2024-10-02', '09:00:00', 'Retrait distributeur', 2, 9),
(67, 100.00, '2024-10-18', '10:30:00', 'Paiement fast-food', 4, 1),
(68, 80.00, '2024-11-01', '08:30:00', 'Paiement Internet', 5, 2),
(69, 90.00, '2024-11-25', '11:45:00', 'Paiement essence', 4, 3),
(70, 50.00, '2024-12-05', '10:30:00', 'Paiement péage', 4, 4),
(71, 200.00, '2024-12-10', '12:00:00', 'Dépôt guichet', 1, 5),
(72, 35.00, '2025-01-01', '10:00:00', 'Paiement Uber', 4, 6),
(73, 150.00, '2025-01-05', '11:30:00', 'Paiement EDF', 5, 7);


-- VALEURS CARTE BANCAIRE --
INSERT INTO CARTE_BANCAIRE (idCb, numeroCb, cvvCb, debitMaxCb, dateDelivCb, dateExpCb, sansContactCb, distanceCb, etrangerCb, idCompte, idTypeCb)
VALUES
(1, '1234567890123456', '123', 5000.00, '2022-01-01', '2026-01-01', TRUE, TRUE, TRUE, 1, 1), 
(2, '2345678901234567', '234', 3000.00, '2020-06-15', '2025-06-15', TRUE, TRUE, FALSE, 2, 2), 
(3, '3456789012345678', '345', 2000.00, '2021-03-20', '2026-03-20', FALSE, FALSE, FALSE, 3, 3), 
(4, '4567890123456789', '456', 1000.00, '2023-07-01', '2028-07-01', TRUE, TRUE, TRUE, 4, 1), 
(5, '5678901234567890', '567', 4000.00, '2019-10-05', '2024-10-05', FALSE, FALSE, TRUE, 5, 2), 
(6, '6789012345678901', '678', 2500.00, '2022-05-12', '2027-05-12', TRUE, TRUE, TRUE, 6, 3), 
(7, '7890123456789012', '789', 3500.00, '2021-12-01', '2026-12-01', TRUE, TRUE, FALSE, 8, 1), 
(8, '8901234567890123', '890', 4500.00, '2023-04-22', '2028-04-22', FALSE, FALSE, TRUE, 9, 2),
(9, '9012345678901234', '901', 6000.00, '2023-01-15', '2028-01-15', TRUE, TRUE, TRUE, 7, 1), 
(10, '0123456789012345', '012', 5000.00, '2022-09-10', '2027-09-10', FALSE, FALSE, FALSE, 10, 3), 
(11, '1234567890123401', '013', 4500.00, '2021-07-05', '2026-07-05', TRUE, TRUE, TRUE, 11, 1), 
(12, '2345678901234502', '014', 3500.00, '2023-11-20', '2028-11-20', TRUE, TRUE, FALSE, 12, 2), 
(13, '3456789012345603', '015', 4000.00, '2023-02-01', '2028-02-01', FALSE, FALSE, TRUE, 13, 3),
(14, '4567890123456701', '016', 3000.00, '2024-01-10', '2029-01-10', TRUE, 1, FALSE, 16, 1), 
(15, '5678901234567802', '017', 2000.00, '2024-02-05', '2029-02-05', FALSE, 0, TRUE, 17, 2), 
(16, '6789012345678903', '018', 5000.00, '2024-03-15', '2029-03-15', TRUE, 1, TRUE, 18, 3), 
(17, '7890123456789004', '019', 4000.00, '2024-04-25', '2029-04-25', TRUE, 1, FALSE, 19, 1), 
(18, '8901234567890105', '020', 6000.00, '2024-05-30', '2029-05-30', FALSE, 0, TRUE, 20, 2);

-- VALEURS CLIENT --
INSERT INTO CLIENT (idClient, prenomClient, nomClient, dateNaissClient, adresseClient, telClient, mailClient, dateArrClient, idCompte, idCb, idVille)
VALUES
(1, 'Alice', 'Martin', '1985-02-14', '12 Rue de Paris', '0612345678', 'alice.martin@gmail.com', '2014-02-10', 1, 1, 1),
(2, 'Benoît', 'Dupont', '1990-08-25', '25 Avenue des Champs', '0698765432', 'benoit.dupont@gmail.com', '2014-04-17', 2, 2, 1),
(3, 'Céline', 'Durand', '1995-05-10', '30 Boulevard Haussmann', '0676543210', 'celine.durand@gmail.com', '2013-05-04', 3, 3, 1),
(4, 'David', 'Lemoine', '1988-12-01', '5 Place de la République', '0654321987', 'david.lemoine@gmail.com', '2022-10-05', 4, 4, 1),
(5, 'Emma', 'Bertrand', '2000-06-18', '10 Rue des Rosiers', '0611223344', 'emma.bertrand@gmail.com', '1990-08-01', 5, 5, 1),
(6, 'Fabien', 'Garnier', '1975-03-12', '17 Rue Lafayette', '0645678912', 'fabien.garnier@gmail.com', '2010-07-15', 2, 2, 1),
(7, 'Isabelle', 'Petit', '1992-11-07', '8 Rue de Rivoli', '0667788990', 'isabelle.petit@gmail.com', '2015-01-01', 3, 3, 1),
(8, 'Lucas', 'Carpentier', '1987-09-22', '15 Avenue Foch', '0677990011', 'lucas.carpentier@gmail.com', '2016-05-20', 1, 1, 1),
(9, 'Chloé', 'Rousseau', '1993-07-19', '21 Rue Montmartre', '0655667788', 'chloe.rousseau@gmail.com', '2018-03-14', 4, 4, 1),
(10, 'Antoine', 'Blanc', '2001-01-30', '2 Rue Oberkampf', '0622334455', 'antoine.blanc@gmail.com', '2023-04-22', NULL, NULL, 1),
(11, 'Paul', 'Lopez', '1990-03-15', '45 Avenue Victor Hugo', '0633445566', 'paul.lopez@gmail.com', '2020-06-18', 6, 6, 2), 
(12, 'Sophie', 'Morel', '1987-07-23', '12 Rue de l’Église', '0644556677', 'sophie.morel@gmail.com', '2019-09-25', 7, 7, 3), 
(13, 'Thomas', 'Rey', '1995-11-10', '9 Rue des Lilas', '0655667788', 'thomas.rey@gmail.com', '2021-11-13', 8, 8, 4), 
(14, 'Camille', 'Benoît', '2002-05-18', '21 Boulevard Carnot', '0666778899', 'camille.benoit@gmail.com', '2023-03-02', 9, 9, 5), 
(15, 'Jules', 'Lemoine', '1998-10-27', '5 Rue de Verdun', '0677889900', 'jules.lemoine@gmail.com', '2022-07-19', 10, 10, 2), 
(16, 'Claire', 'Dubois', '1978-12-31', '8 Place de la Liberté', '0688990011', 'claire.dubois@gmail.com', '2008-01-10', NULL, NULL, 3), 
(17, 'Hugo', 'Barbier', '1983-04-12', '33 Rue Jean Jaurès', '0699001122', 'hugo.barbier@gmail.com', '2017-05-07', 11, 11, 4), 
(18, 'Louise', 'Gauthier', '1999-01-05', '17 Avenue Jean Moulin', '0611223344', 'louise.gauthier@gmail.com', '2020-10-10', 12, 12, 5), 
(19, 'Victor', 'Renaud', '1992-06-25', '14 Rue du Commerce', '0622334455', 'victor.renaud@gmail.com', '2018-06-15', 13, 13, 2), 
(20, 'Elodie', 'Perret', '1989-09-19', '22 Rue des Fleurs', '0633445566', 'elodie.perret@gmail.com', '2019-08-22', NULL, NULL, 3),
(21, 'Adrien', 'Leclerc', '1985-05-20', '10 Rue des Acacias', '0623456789', 'adrien.leclerc@gmail.com', '2024-01-15', 16, NULL, 1), 
(22, 'Marion', 'Moreau', '1990-08-12', '25 Avenue des Tilleuls', '0634567890', 'marion.moreau@gmail.com', '2024-02-05', 17, NULL, 2),
(23, 'Alexandre', 'Perrin', '1982-11-30', '12 Place de la Liberté', '0645678901', 'alexandre.perrin@gmail.com', '2024-03-20', 18, 18, 3), 
(24, 'Nathalie', 'Durieux', '1975-06-18', '8 Allée des Cyprès', '0656789012', 'nathalie.durieux@gmail.com', '2024-04-10', 19, NULL, 4), 
(25, 'Mathieu', 'Chevalier', '2000-09-15', '15 Rue des Écoles', '0667890123', 'mathieu.chevalier@gmail.com', '2024-05-25', 20, NULL, 5);