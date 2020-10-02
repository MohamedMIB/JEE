# JEE - CreditSimulator
# author: ISMAIL BEN BRAHIM EL MOKHTAR Mohamed
projects in JEE

Ceci est un mini-projet d'un crédit simulateur on utilisant SOAP (web service) pour que le projet marche sur votre machine
vous devez importer les deux dossier dans des projet séparer.
Dans eclipse:
1-importer le Projet: CreditSimulatorWS       #(c'est la partie web service du projet)
2-importer le Projet: CreditSimulatorClient   #(c'est la partie consomateur du service web)

Pour bénificier de la partie Base de donnée du projet il faut: 
3-importer la base de donnée CreditDB.sql     #(dans votre moteur de base donnée Mysql)

Dans le projet CreditSimulatorWS en vas vers > Java Resources > src > (Le package) com.mohamed.model > (Ouvrir le fichier) SingleConnection.java

4-Modifier dans le fichier SingleConnection.java  (La ligne 12):
#connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/CreditDB", "root" , "Mohamed123");

connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/<#Le nom de votre BD#>", <# Nom d'utilisateur de la BD #> , <#Mot de passe de la BD#>);

#####################
contacter moi: ismailmohamed2310@gmail.com
amazing project ever
