Tévin DERVAUX

# Ex 1

#### Essayez de lancer l’application (ou de la visualiser dans la preview), XCode devrait vous afficher une erreur. Que manque-t-il ? Et pourquoi ?  

Il maque un id.

# Ex 2

#### Expliquez le changement que j’ai effectué par rapport à l’exemple précédent.

Un foreach qui parcoure la liste a été ajouté et un bouton d'ajout a également été ajouté.

#### Pourquoi utiliser un ForEach ? Quel est son rôle ? Et pourquoi séparer le bouton du ForEach ?

Dans cette nouvelle version la liste est parcourue constamment pour être toujours à jour. Le bouton ne change jamais donc il n'est pas nécessaire de le recharger à chaque fois.

# Ex 3

#### Testez ce code, fonctionne-t-il ? Pourquoi ?

Le code ne fonctionne pas car append est mutable et self est immutable.

#### Expliquez pourquoi maintenant cela fonctionne ?

Car le state indique que le tableau est "single source of truth"