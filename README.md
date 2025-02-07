Base de données de Board Games

Ce script est une base de données board-games avec l'objectif de gérer des jeux de société en ligne. Cette base contient plusieurs tables permettant des comptes des utilisateurs, leurs achats et leurs jetons virtuels .



La base de données est structurée de la façon suivante :

1. token_pack

Stocke les packs de jetons disponibles pour l'achat.

id (INT) : Identifiant unique du pack de jetons.
token_numbers (VARCHAR) : Nombre de jetons dans le pack.

2. account

Stocke les informations des comptes utilisateurs.
id (INT) : Identifiant unique du compte.
avatar (VARCHAR) : URL de l'avatar de l'utilisateur.
pseudo (VARCHAR) : Nom d'utilisateur.
birth_date (DATE) : Date de naissance de l'utilisateur.
country (VARCHAR) : Pays de résidence.
chat_restriction (BOOLEAN) : Restriction du chat activée/désactivée.
freemium (BOOLEAN) : Indique si l'utilisateur utilise un compte gratuit ou premium.
currency (VARCHAR) : Devise utilisée par l'utilisateur.

3. login

Stocke les informations d'authentification des utilisateurs.

id (INT) : Identifiant unique.
email (VARCHAR) : Email de connexion.
password (VARCHAR) : Mot de passe (hashé).
token (VARCHAR) : Jeton d'authentification.
account_id (INT) : Clé étrangère référant à account(id).

4. token

Stocke les informations sur les jetons virtuels.
id (INT) : Identifiant unique du jeton.
token (VARCHAR) : Type ou nom du jeton.
token_value (INT) : Valeur du jeton.

5. purchase

Stocke les transactions d'achat effectuées par les utilisateurs.

id (INT) : Identifiant unique de l'achat.
purchase_amount (INT) : Montant total de l'achat.
purchase_date (DATE) : Date de l'achat.
purchase_list (VARCHAR) : Liste des articles achetés.
purchase_info (VARCHAR) : Informations supplémentaires sur l'achat.
purchase_type (VARCHAR) : Type d'achat.
account_id (INT) : Clé étrangère référant à account(id).
token_pack_id (INT) : Clé étrangère référant à token_pack(id).

6. token_account

Stocke l'association entre les comptes et les jetons possédés.
id (INT) : Identifiant unique.
account_id (INT) : Clé étrangère référant à account(id).
token_id (INT) : Clé étrangère référant à token(id).

7. token_pack_token

Stocke l'association entre les packs de jetons et les types de jetons qu'ils contiennent.
id (INT) : Identifiant unique.
token_pack_id (INT) : Clé étrangère référant à token_pack(id).
token_id (INT) : Clé étrangère référant à token(id).

