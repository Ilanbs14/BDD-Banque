-- Requêtes des clients --

-- Si David Lemoine veut voir les informations de sa carte bancaire--
SELECT 
	prenomClient || ' ' || nomClient AS Client, numeroCb, 
	cvvCb AS CVV, SUBSTR(dateExpCb, 6, 2) || '/' || SUBSTR(dateExpCb, 3, 2) AS 'Date Expiration'
FROM CARTE_BANCAIRE CB
INNER JOIN COMPTE C ON C.idCompte = CB.idCompte
INNER JOIN CLIENT CL ON CL.idCompte = C.idCompte
WHERE prenomClienT = 'David' AND nomClient = 'Lemoine';

-- Voir les avantages de la carte du client 12--
SELECT 
    recompenseTypeCb AS Récompense
FROM TYPE_CB TC
INNER JOIN CARTE_BANCAIRE CB ON CB.idTypeCb = TC.idTypeCb
INNER JOIN CLIENT CL ON CL.idCb = CB.idCb
WHERE IdClient = 12;

-- Si Camille Benoit veut voir l'adresse de son agence--
SELECT adresseAgence || ',' || codePostal || ' ' || nomVille AS 'Adresse de votre agence'
FROM AGENCE A
INNER JOIN COMPTE C ON C.idAgence = A.idAgence
INNER JOIN CLIENT CL ON CL.idCompte = C.idCompte
INNER JOIN VILLE V ON V.idVille = A.idVille
WHERE prenomClient = 'Camille' AND nomClient = 'Benoît';

-- Si le client d'id 2 veut consulter le solde sur son compte--
SELECT 
    nomClient || ' ' || prenomClient AS Client, 
    soldeCompte
FROM CLIENT CL
INNER JOIN COMPTE C ON CL.idCompte = C.idCompte
WHERE idClient = 2;

-- Si ce même client veut consulter son historique de transactions--
SELECT 
	dateTransaction || ' à ' || heureTransaction AS 'DATE/heure',
	montantTransaction || '€' AS MONTANT, nomTypeTransac AS TYPE,
	messageTransaction AS MESSAGE
FROM TRANSACTIONS T
INNER JOIN TYPE_TRANSACTION TT ON TT.idTypeTransac = T.idTypeTransac
INNER JOIN COMPTE C ON C.idCompte = T.idCompte
INNER JOIN CLIENT CL ON CL.idCompte = C.idCompte
WHERE idClient = 2
ORDER BY dateTransaction DESC, heureTransaction DESC;

-- Si le client d'id 5 a changé de numéro de téléphone, il peut effectuer le changement de cette façon --
UPDATE CLIENT
SET telClient = '0867547832'
WHERE nomClient = 'Bertrand' AND prenomClient = 'Emma';

-- Vérifier le plafond de la carte bancaire du client d'id 7 --
SELECT 
	nomTypeCb || ' de ' || prenomClient AS 'Carte Client', 
	debitMaxCb || '€' AS 'Plafond max' 
FROM CARTE_BANCAIRE CB
INNER JOIN CLIENT CL ON CL.idCb = CB.idCb
INNER JOIN TYPE_CB TC ON TC.idTypeCb = CB.idTypeCb
WHERE CL.idClient = 7;

-- Voir les agences qui existent dans la ville du client d'id 7--
SELECT
    nomVille || ' : ' || adresseAgence AS 'Agence',
    telAgence AS 'Téléphone'
FROM AGENCE A
INNER JOIN VILLE V ON A.idVille = V.idVille
WHERE V.nomVille = (SELECT nomVille FROM CLIENT CL
INNER JOIN VILLE VL ON CL.idVille = VL.idVille
WHERE idClient = 7);

-- Voir les transactions réalisés entre le 1 aout 2024 et le 7 janvier 2025 du client d'id 6--
SELECT dateTransaction, montantTransaction, nomTypeTransac, messageTransaction
FROM TRANSACTIONS T
INNER JOIN TYPE_TRANSACTION TT ON T.idTypeTransac = TT.idTypeTransac
WHERE idCompte = 6 AND dateTransaction BETWEEN '2024-08-01' AND '2025-01-07';

-- Si le client d'id 9 veut voir les options de sa carte --
SELECT 	
	nomTypeCb || ' de ' || prenomClient AS 'Carte Client', 
	CASE
		WHEN sansContactCb = true THEN 'Activé'
		ELSE 'désactivé'
	END AS 'Sans contact',
	CASE
		WHEN distanceCb = true THEN 'Activé'
		ELSE 'désactivé'
	END AS 'Paiement à distance',
	CASE
		WHEN etrangerCb = true THEN 'Activé'
		ELSE 'désactivé'
	END AS 'Paiement à l''étranger'
FROM CARTE_BANCAIRE CB
INNER JOIN COMPTE C ON C.idCompte = CB.idCompte
INNER JOIN CLIENT CL ON CL.idCompte = C.idCompte
INNER JOIN TYPE_CB TC ON TC.idTypeCb = CB.idTypeCb
WHERE idClient = 9;



-- Requêtes des employés --

-- Si l'employé veut voir le numéro de téléphone de la cliente d'id 1--
SELECT 
    nomClient AS Nom, 
    prenomClient AS Prenom, 
    telClient AS 'Numéro de téléphone'
FROM CLIENT 
WHERE idClient = 1;

-- Voir les clients qui n'ont pas de carte bancire--
SELECT 
    idClient AS Identifiant, 
    nomClient AS Nom,
    prenomClient AS Prénom
FROM CLIENT
WHERE idCb IS NULL;

-- Voir les clients ayant un solde négatif--
SELECT
    nomClient || ' ' || prenomClient AS 'Nom complet',
    soldeCompte || '€' AS 'Découvert'
FROM CLIENT CL
INNER JOIN COMPTE C ON CL.idCompte = C.idCompte
WHERE soldeCompte < 0;

-- Voir la liste des clients sans acune transac pendant 6mois (avec leur mails)--
SELECT
    nomClient || ' ' || prenomClient AS 'Nom complet',
    mailClient AS 'Email'
FROM CLIENT CL
LEFT JOIN TRANSACTIONS T ON CL.idCompte = T.idCompte
AND T.dateTransaction >= DATE('now', '-6 months')
WHERE T.idTransaction IS NULL;

-- voir les cartes bancaires expirees --
SELECT
    numeroCb AS 'Numéro de carte',
    dateExpCb AS 'Date d''expiration',
    nomClient || ' ' || prenomClient AS 'Propriétaire'
FROM CARTE_BANCAIRE CB
INNER JOIN COMPTE C ON CB.idCompte = C.idCompte
INNER JOIN CLIENT CL ON CL.idCompte = C.idCompte
WHERE dateExpCb < DATE('now');

-- Voir la somme des transactions de david par type de transaction --
SELECT
    nomTypeTransac AS 'Type de transaction',
    SUM(montantTransaction) || '€' AS 'Montant total'
FROM TRANSACTIONS T
INNER JOIN TYPE_TRANSACTION TT ON T.idTypeTransac = TT.idTypeTransac
INNER JOIN COMPTE C ON T.idCompte = C.idCompte
INNER JOIN CLIENT CL ON CL.idCompte = C.idCompte
WHERE nomClient = 'Lemoine' AND prenomClient = 'David'
GROUP BY nomTypeTransac;

-- Voir le premier client à s'être inscrit--
SELECT
    nomClient || ' ' || prenomClient AS 'Client',
    dateArrClient AS 'Date d''inscription'
FROM CLIENT
ORDER BY dateArrClient ASC
LIMIT 1;

-- Voir les transactions importantes dont le montant est entre 250 et 500 euros--
SELECT
    dateTransaction || ' à ' || heureTransaction AS 'Date/Heure',
    montantTransaction || '€' AS 'Montant',
    messageTransaction AS 'Description'
FROM TRANSACTIONS
WHERE montantTransaction BETWEEN 250 AND 500;

-- Voir les clients qui ont dépassé leur solde maximal'
SELECT 
    nomClient || prenomClient AS Client, 
    soldeCompte || '€' AS Solde, 
    soldeMaxCompte || '€' AS 'Solde Max', 
    (SoldeCompte-soldeMaxCompte) || '€' AS 'Dépassement'
FROM COMPTE C
INNER JOIN CLIENT CL ON CL.idCompte = C.idCompte
WHERE soldeCompte > soldeMaxCompte;

-- Voir les clients ayant ouvert un compte dans l'agence Saint-michel --
SELECT CL.idClient, prenomClient, nomClient
FROM CLIENT CL
INNER JOIN COMPTE C ON CL.idCompte = C.idCompte
INNER JOIN AGENCE A ON A.idAgence = C.idAgence
WHERE a.nomAgence = 'Agence Saint-Michel';