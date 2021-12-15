<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, th, td {
 border:1px solid black;}
</style>
<body>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import= "pizza.Commande" %>
<% ArrayList<Commande> listCommande; %>
<table>
<tr>
<th>Nom</th>
<th>Prenom</th>
<th>Adresse</th>
<th>Prix total</th>
</tr>
<% listCommande = (ArrayList<Commande>) application.getAttribute("commandes"); %>
<% for(Commande comm:listCommande) {%>
<tr>
<td><%= comm.getNom() %></td>
<td> <%= comm.getPrenom()%></td>
<td><%= comm.getAdresse()%></td>
<td><a href ="http://localhost:8080/ex-pizza/Details.jsp?id=<%= listCommande.indexOf(comm)%>"><%= comm.getPrixTotal()%></a></td>
</tr>
<% } %>
</table>
<form method ="GET" action="http://localhost:8080/ex-pizza/Sauvgarder">
			<button>Sauvegarder</button>
		</form>

</body>
</html>