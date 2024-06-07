# Projet-vin

lien GitHub : 

https://github.com/TorayLaTortue/StockOvin

## Installation de la Base de Données

1. Créez une connexion avec une base de données appelée `StockOvin`.
2. Ouvrez un script SQL dans DBeaver.
3. Chargez le script `.sql` existant qui se trouve dans le GitHub (Ctrl + Maj + Alt + O) (`Table.sql`) ou copiez-collez le contenu dedans.
4. Lancez le script SQL en entier (Alt + X).

## Essai de Route

Accédez à l'interface Swagger pour tester les routes :

[Swagger UI](http://localhost:8080/swagger-ui/index.html#/)

Pour utiliser une route, assurez-vous de mettre les bons paramètres (l'id doit exister dans la BDD et le rôle dans le code ).

Pour ajouter un rôle : (https://github.com/TorayLaTortue/StockOvin/blob/role-route/src/main/java/com/example/StockOvin/Entities/RoleEntity.java)
Pour ajouter un Id il faut créer une nouvelle entité dans le swagger
## Essaie page web (En cours) : 

http://127.0.0.1:5500/home.html