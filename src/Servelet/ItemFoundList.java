package Servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEANS.item;
import DAO.ItemDAO;

/**
 * Servlet implementation class ItemFoundList
 */
@WebServlet("/ItemFoundList")
public class ItemFoundList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ItemDAO itemdao=new ItemDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemFoundList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		List<item> items=itemdao.getFoundItems();
		int foundItemsCount = itemdao.countFoundItems();
	    request.setAttribute("items", items);
        request.setAttribute("foundItemsCount", foundItemsCount);
	    request.getRequestDispatcher("/WEB-INF/foundItemsList.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
