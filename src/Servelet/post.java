package Servelet;


import java.io.IOException;


import java.util.Date;
import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ItemDAO;
import DAO.PersonneDAO;
import DAO.CategoryDAO;
import BEANS.category;
import BEANS.item;

/**
 * Servlet implementation class post
 */
@WebServlet("/post")
public class post extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public post() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CategoryDAO dao = new CategoryDAO();
        List<category> listCategories = dao.getAll();
        
        request.setAttribute("categories", listCategories);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/post.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 	String nom = request.getParameter("nom");
		 	String email = request.getParameter("email");
	        String description = request.getParameter("description");
	        String image = request.getParameter("image"); 
	        String location = request.getParameter("location");
	        boolean found = false; 
	        SimpleDateFormat formater = null;
	        Date aujourdhui = new Date();
	        formater = new SimpleDateFormat("yyyy-MM-dd");
	        String date=formater.format(aujourdhui);
	        PersonneDAO daoP = new PersonneDAO();
	        int personneId = daoP.getPersonneIdByEmail(email);
	        
	        int category = 0;
	        String categoryIdString = request.getParameter("category");
	        category = Integer.parseInt(categoryIdString);
	
	        item newItem = new item( nom, email, description, image, location,date , personneId, found, category);
	         ItemDAO dao = new ItemDAO();
	         dao.addItem(newItem);
	            // Redirection ou affichage d'un message succès
	           
	        this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
	        }
}
