# ex-pizza
L’objectif de ce travail est de développer une application pour commander en ligne des 
pizzas avec livraison à domicile. Cette application fournit deux interfaces principales : 
interface « Client » et interface « Administrateur ». 
## I. Partie1 - Interface Client :
L’interface « Client » offre la page « Menu.html » représentant le menu sous forme de cases 
à cocher.
En appuyant sur le bouton « Ajouter au panier », la servlet « Ajouter.java » sera invoquée si 
le client a sélectionné au moins un type de pizza. Si une pizza est sélectionnée, la servlet crée 
un bean « Pizza .java » stockant son nom et son prix. La servlet réaffiche ensuite la page 
« Menu.html » permettant de choisir d’autres types de pizzas. Pour des raisons de simplicité, 
on ne tient pas compte de la quantité associée à un même type de pizza donc même si un type 
est choisi plus qu’une fois il sera traité comme étant un nouveau type. 
Le bouton « Afficher ma commande» permet d’invoquer le JSP « Affiche.jsp » permettant 
d’afficher les pizzas choisies par le client actuel ainsi que le prix total de la commande.
Le lien « supprimer » permet d’invoquer la servlet « Supprimer.java » permettant 
d’éliminer la pizza correspondante de la liste à commander et réaffiche la même page mise à 
jour.
Le bouton « valider » permet d’afficher la page « Formulaire.html » demandant au client de 
saisir des informations personnelles. 
Suite à la validation, la servlet « Commander.java » est invoquée : un bean 
« Commande.java » sera créé stockant l’identifiant de la commande, le nom du client, son 
prénom, son adresse, sa liste des pizzas et le prix total. L’ensemble de toutes les commandes 
des clients doivent être stockés dans le contexte de l’application pour que l’administrateur 
puisse accéder à ces beans.
## II. Partie2 - Interface Administrateur :
L’interface « Administrateur » offre un lien « Commandes non traitées ». Ce lien permet 
d’invoquer une servlet « Commandes.java » permettant d’afficher la liste de toutes les 
commandes stockées. Pour chaque commande, on affichera le nom et le prénom du client, son 
adresse et le prix total comme un lien hypertexte. En cliquant sur ce lien la « servlet.jsp »
sera invoquée et la liste des pizzas de la commande correspondante sera affichée.
Donc le prix total de chaque commande sera affiché comme lien hypertexte permettant 
l’affichage des détails de la commande à savoir : la liste des pizzas et leurs prix unitaires. 
Un bouton « sauvegarder » permet d’invoquer la servlet « Sauvgarder.java » permettant de  supprimer les beans.
