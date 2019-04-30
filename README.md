# README

Ceci est le projet "The Gossip project"
Base de lionel, baptiste et léo
Version lionel pour le bootstrap...

Pour tester notre site , tu dois suivre les étapes ci-dessous: 

1. Clone ce repo : git clone https://github.com/lioforest/sem05-the_gossip_project.git
2. Fais un petit bundle install
3. $ rails db:migrate
4. $ rails db:seed 
5. lancer le serveur  $: rails server 




Et c'est bon ! Tu peux commencer à regarder le projet en faisant :

puis lancer ton navigateur web avec l'adresse suivante : 
--------------------------------------------------------

http://localhost:3000/



pour l'adresse secrete, j'ai fait 2 versions 
--------------------------------------------

	- Version 1 : lié à la table des users :

		http://localhost:3000/welcome/id_voulu
		Remplace l'id_voulu  par un numéro (2 à 100), 
		qui correspond à l'id d'un des users de notre seed.
		C'est le même principe que vu pour facebook dans le cours.

	- Version 2 : avec le prénom saisi dans l'url 
		http://localhost:3000/bonjour/ton_prenom


Enfin, j'ai utilisé le boostrap suivant :
https://startbootstrap.com/templates/full-width-pics/


Enjoy !

