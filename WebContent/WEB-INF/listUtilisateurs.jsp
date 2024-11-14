<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="BEANS.personne" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liste des utilisateurs</title>
</head>
<body>
    <a href="AdminDashborad" class="btn btn-primary">Back</a>
    <h1>Liste des utilisateurs</h1>
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>Nom</th>
                <th>Prenom</th>
                <th>Adresse</th>
                <th>Telephone</th>
                <th>Email</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<personne> users = (List<personne>) request.getAttribute("users");
                if (users != null) {
                    for (personne user : users) { 
            %>
            <tr>
                <td><%= user.getNom() %></td>
                <td><%= user.getPrenom() %></td>
                <td><%= user.getAdresse() %></td>
                <td><%= user.getTel() %></td>
                <td><%= user.getEmail() %></td>
                <td><img src="<%= user.getImage() %>" width="50px" height="50px"></td>
            </tr>
            <% 
                    }
                } 
            %>
        </tbody>
    </table>
    <br>
    <p>Le nombre des utilisateurs ${ nbusers }</p>
</body>
</html>
