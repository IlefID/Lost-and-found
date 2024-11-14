package Servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CategoryDAO;
import BEANS.category;


/**
 * Servlet implementation class AjouterCategory
 */
@WebServlet("/AjouterCategory")
public class AjouterCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CategoryDAO categoryDAO = new CategoryDAO();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AjouterCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<category> categories = categoryDAO.getAll();
        request.setAttribute("categories", categories);
        this.getServletContext().getRequestDispatcher("/WEB-INF/Category.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String libelle = request.getParameter("libelle");
        CategoryDAO categoryDAO = new CategoryDAO();
        categoryDAO.addCategory(libelle);
        response.sendRedirect(request.getContextPath() + "/Category");
	}

}
