package Servelet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEANS.personne;
import DAO.PersonneDAO;

/**
 * Servlet implementation class SignupPage
 */
@WebServlet("/SignupPage")
public class SignupPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PersonneDAO persdao=new PersonneDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
        this.getServletContext().getRequestDispatcher("/WEB-INF/signup.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nom=request.getParameter("nom");
		String prenom=request.getParameter("prenom");
		String adresse=request.getParameter("adresse");
		String telephone=request.getParameter("telephone");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String image=request.getParameter("file");
		
		
		persdao.AddPersonne(nom, prenom, adresse,telephone, image, email, password);
		response.sendRedirect(request.getContextPath() + "/login");
		
	}

}
