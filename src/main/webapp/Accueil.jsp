<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<style type="text/css"> 

 
 #navbar ul { 
	margin: 0; 
	padding: 5px; 
	list-style-type: none; 
	text-align: center; 
	background-color: #000; 
	} 
 
#navbar ul li {  
	display: inline; 
	} 
 
#navbar ul li a { 
	text-decoration: none; 
	padding: .2em 1em; 
	color: #fff; 
	background-color: #000; 
	} 
 
#navbar ul li a:hover { 
	color: #000; 
	background-color: #fff; 
	} 

</style> 
</head> 
<body> 
<div id="navbar"> 
  <ul> 
	<li><a href="http://localhost:8080/ex-pizza/Menu.html">interface Client  </a></li> 
	<li><a href="http://localhost:8080/ex-pizza/Commandes.jsp">interface administrateur</a></li> 
	
  </ul> 
</div> 
<div>
<h2>Introduction</h2>
<h3> Notre site web est une application pour commander en ligne des pizzas avec livraison à domicile.</h3>
<p> Cette application fournit deux interfaces principales :interface « Client » et interface « Administrateur ». <p>
<p>L’interface « Client » offre la page « Menu.html » représentant le menu sous forme de cases à cocher</p>
<p>L’interface « Administrateur » offre un lien « Commandes non traitées ». Ce lien permet 
d’invoquer une servlet « Commandes.java » permettant d’afficher la liste de toutes les 
commandes stockées</p>
</div>

</body> 
</html>