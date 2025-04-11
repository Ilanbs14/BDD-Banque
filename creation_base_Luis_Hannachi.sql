-- Creation des tables --
CREATE TABLE VILLE (
    idVille INT PRIMARY KEY,
    nomVille TEXT(100) NOT NULL,
    codePostal TEXT(10) NOT NULL
);

CREATE TABLE AGENCE (
    idAgence INT PRIMARY KEY,
    nomAgence TEXT(100) NOT NULL,
    adresseAgence TEXT(255) NOT NULL,
    telAgence TEXT(15) NOT NULL,
    idVille INT,
    FOREIGN KEY(idVille) REFERENCES VILLE(idVille)
);

CREATE TABLE TYPE_CB (
    idTypeCb INT PRIMARY KEY,
    nomTypeCb TEXT(25) NOT NULL,
    descriptionTypeCb TEXT(100) NOT NULL,
    fraisTypeCb INT NOT NULL,
    recompenseTypeCb TEXT
);

CREATE TABLE TYPE_COMPTE (
    idTypeCompte INT PRIMARY KEY,
    nomTypeCompte TEXT(100) NOT NULL,
    tauxTypeCompte DECIMAL(5,2) NOT NULL
);

CREATE TABLE TYPE_TRANSACTION (
    idTypeTransac INT PRIMARY KEY,
    nomTypeTransac TEXT(100) NOT NULL
);

CREATE TABLE COMPTE (
    idCompte INT PRIMARY KEY,
    dateOuvCompte DATE NOT NULL,
    soldeCompte DECIMAL(15,2) NOT NULL,
    soldeMaxCompte DECIMAL(15,2) NOT NULL,
    ibanCompte TEXT(34) NOT NULL,
    ribCompte TEXT(24) NOT NULL,
    idTypeCompte INT,
    idAgence INT,
    FOREIGN KEY (idTypeCompte) REFERENCES TYPE_COMPTE(idTypeCompte),
    FOREIGN KEY (idAgence) REFERENCES AGENCE(idAgence)
);

CREATE TABLE CARTE_BANCAIRE (
    idCb INT PRIMARY KEY,
    numeroCb TEXT(16) NOT NULL,
    cvvCb CHAR(3) NOT NULL,
    debitMaxCb DECIMAL(10,2) NOT NULL,
    dateDelivCb DATE NOT NULL,
    dateExpCb DATE NOT NULL,
    sansContactCb BOOLEAN NOT NULL,
    distanceCb BOOLEAN NOT NULL,
    etrangerCb BOOLEAN NOT NULL,
    idCompte INT,
    idTypeCb INT,
    FOREIGN KEY (idCompte) REFERENCES COMPTE(idCompte),
    FOREIGN KEY (idTypeCb) REFERENCES TYPE_CB(idTypeCb)
);

CREATE TABLE CLIENT (
    idClient INT PRIMARY KEY,
    prenomClient TEXT(100) NOT NULL,
    nomClient TEXT(100) NOT NULL,
    dateNaissClient DATE NOT NULL,
    adresseClient TEXT(255) NOT NULL,
    telClient TEXT(15) NOT NULL,
    mailClient TEXT(100) NOT NULL,
    dateArrClient DATE NOT NULL,
    idCompte INT,
    idCb INT,
    idVille INT,
    FOREIGN KEY (idCompte) REFERENCES COMPTE(idCompte),
    FOREIGN KEY (idCb) REFERENCES CARTE_BANCAIRE(idCb),
    FOREIGN KEY (idVille) REFERENCES VILLE(idVille)
);

CREATE TABLE TRANSACTIONS (
    idTransaction INT PRIMARY KEY,
    montantTransaction DECIMAL(15,2) NOT NULL,
    dateTransaction DATE NOT NULL,
    heureTransaction TIME NOT NULL,
    messageTransaction TEXT,
    idTypeTransac INT,
    idCompte INT,
    FOREIGN KEY (idTypeTransac) REFERENCES TYPE_TRANSACTION(idTypeTransac),
    FOREIGN KEY (idCompte) REFERENCES COMPTE(idCompte)
);