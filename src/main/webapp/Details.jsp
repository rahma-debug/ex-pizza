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
     border:1px solid #000000;
   }
   
</style>
<body>
    
    <h2>Commande</h2>
    
    <table style="width:100%">
      <tr>
        <th>Pizzas</th>
        <th>Prix</th>
      </tr>
      <%@ page import="java.util.List" %>
      <%@ page import="java.util.ArrayList" %>
      <%@ page import= "pizza.Commande" %>
      <%@ page import= "pizza.Pizza" %>
  
      <% List <Commande> commandes = new ArrayList<>();
		commandes = (List<Commande>) application.getAttribute("commandes");
		ArrayList<Pizza> pizzas;
		String code = request.getParameter("id");
		if(code !=null){
		Commande com = commandes.get(Integer.parseInt(code));
		pizzas = com.getListPizza();
		%>
		<% int total= 0; %>
			
		
		<% for(Pizza pizza:pizzas){
			total = total + pizza.getPrix();%>
      <tr>
     
        <td><%= pizza.getNom() %>
        </td>
        <td><%= pizza.getPrix() %>€</td>
      </tr>
      <% } %>
    </table>
    <strong>Le prix total à payer : <%= total %>€</strong> <br>
    <% } %>
<form method ="GET" action="http://localhost:8080/ex-pizza/Commandes.jsp">
			<button>retour</button>
		</form>

</body>

</html>