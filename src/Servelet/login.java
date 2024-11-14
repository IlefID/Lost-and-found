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
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;
    PersonneDAO persdao=new PersonneDAO();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        System.out.println("Username: " + username);
        System.out.println("Password: " + password);

        if (username != null && password != null) {
            if (username.equals("admin") && password.equals("123")) {
                response.sendRedirect(request.getContextPath() + "/AdminDashborad");
            } else {
            	personne user = persdao.getPersonneByEmail(username, password);
            	if(user !=null) {
            		request.getSession().setAttribute("user", user);
                    response.sendRedirect(request.getContextPath() + "/home");
            	}
            	else {
                    response.sendRedirect(request.getContextPath() + "/SignupPage");
            	}
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/login");
        }
    }
}
