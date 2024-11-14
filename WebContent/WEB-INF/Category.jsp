<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
<%@ page import="BEANS.category" %>
<%@ page import="DAO.CategoryDAO" %>
<%@ page import="java.io.IOException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <h2>Add Category</h2>
    <form action="AjouterCategory" method="post">
        Category: <input type="text" name="libelle"><br>
        <button type="submit">Add</button>
    </form>
    <h2>Categories</h2>
    <table class="table table-bordered">
      <thead class="thead-dark">
        <tr>
          <th>ID</th>
          <th>Libelle</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <% List<category> categories = (List<category>) request.getAttribute("categories"); %>
        <% for (category category : categories) { %>
        <tr>
          <td><%= category.getId() %></td>
          <td><%= category.getLibelle() %></td>
          <td>
          	<form action="UpdateCategory" method="get" style="display:inline;">
                        <input type="hidden" name="id" value="<%= category.getId() %>">
                        <button type="submit">Edit</button>
                    </form>
                    <form action="DeleteCategory" method="get" style="display:inline;">
                        <input type="hidden" name="id" value="<%= category.getId() %>">
                        <button type="submit">Delete</button>
                    </form>
          </td>
        </tr>
        <% } %>
      </tbody>
    </table>
</body>
</html>