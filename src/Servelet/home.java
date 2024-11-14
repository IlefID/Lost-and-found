package Servelet;

import java.util.ArrayList;

import java.util.List;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CategoryDAO;
import DAO.ItemDAO;
import BEANS.category;
import BEANS.item;

/**
 * Servlet implementation class home
 */
@WebServlet("/home")
public class home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String searchTerm = request.getParameter("searchTerm");
	    String categoryLibelle = request.getParameter("categoryLibelle");
	    ItemDAO dao = new ItemDAO();
	    CategoryDAO categorydao = new CategoryDAO();
	    
	    List<item> searchResults = new ArrayList<>();
	    List<category> allCategories = categorydao.getAll(); // Récupère toutes les catégories pour les afficher
	    
	    if (searchTerm != null && !searchTerm.isEmpty()) {
	        searchResults = dao.searchItemsByName(searchTerm);
	    }else if (categoryLibelle != null && !categoryLibelle.isEmpty()) {
	        searchResults = dao.searchItemsByCategory(categoryLibelle);
	    } 
	    else {searchResults = dao.getAllItems();}
	    
	    
	    request.setAttribute("categories", allCategories); // Envoie la liste de catégories au JSP
	    request.setAttribute("items", searchResults);
	    request.getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int itemId = Integer.parseInt(request.getParameter("itemId"));
        boolean foundStatus = Boolean.parseBoolean(request.getParameter("found"));
        ItemDAO dao = new ItemDAO();
        dao.updateFoundStatus(itemId, foundStatus);	
        response.sendRedirect("home"); 
	}

}
