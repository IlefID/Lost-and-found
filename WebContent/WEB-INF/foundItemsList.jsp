<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
<%@ page import="BEANS.item" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Liste des Items</h1>
	<p>Total number of found items: <%= request.getAttribute("foundItemsCount") %></p>
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>Nom</th>
                <th>Description</th>
                <th>Adresse</th>
                <th>Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<item> items = (List<item>) request.getAttribute("items");
                if (items != null) {
                    for (item item : items) { 
            %>
            <tr>
                <td><%= item.getNom() %></td>
                <td><%=  item.getDescription() %></td>
                <td><%= item.getLocation() %></td>
                <td><%=  item.getDate() %></td>
                <td>
                	<form action="DeleteItems" method="post">
                        <input type="hidden" name="itemId" value="<%= item.getId() %>"/>
                        <input type="submit" value="Delete"/>
                    </form>
                </td>
            </tr>
            <% 
                    }
                } 
            %>
        </tbody>
    </table>
</body>
</html>