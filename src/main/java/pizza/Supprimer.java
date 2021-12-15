
package pizza;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Supprimer")
public class Supprimer extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List <Pizza> pizzas = new ArrayList<>();
		pizzas = (List<Pizza>)session.getAttribute("pizzas");
		pizzas.remove(Integer.parseInt(request.getParameter("id")));
		session.setAttribute("pizzas", pizzas);
		response.sendRedirect("http://localhost:8080/ex-pizza/Affiche.jsp");
	}

	

}