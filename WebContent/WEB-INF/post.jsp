<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="BEANS.category"%>
    <%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<style>
:root{
	    --yellow:#fdf004;
	}
	html{
	    scroll-behavior: smooth;
	}
	*{
	    margin: 0;
	    padding: 0;
	    box-sizing: border-box;
	    font-family: 'Poppins', Arial, Helvetica, sans-serif;
	}
	
	body{
	    background-color: black;
	    display: flex;
	    justify-content: center
	}
		#postItem section{
	    margin-top: 70px;
	    width: 100vw;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
	}
	.form-container{
	    width:600px;
	    border: 2px solid white;
	    padding: 20px;
	    /* height: 40vw; */
	    /* background-color: red; */
	    color: white;
	    display: flex;
	    justify-content: center;
	    flex-direction: column;
	    align-items: center;
	    border-radius: 16px;
	   
	}
	.form-container h2{
	    text-align: start;
	    width: 500px;
	    font-size: 1.2rem;
	    font-weight: 500;
	    margin-bottom: 20px;
	    color: gray;
	}
	.form{
	    width: 500px;
	    display: flex;
	    flex-direction: column;
	}
	.input-container{
	position: relative;
	width: 500px;
	}
	.form input, .form select, .submitbtn{
	    margin-bottom: 20px;
	    height: 40px;
	    border-radius: 8px;
	    border: 2px solid gray;
	    outline: none;
	    width: 500px;
	    background-color: black;
	    color: white;
	    padding: 0 10px;
	    transition: .15s;
	}
	.form select option{
    background-color: black;
    color: white;
}
	.form textarea{
	    height: 60px;
	    width: 500px;
	    border-radius: 8px;
	    margin-bottom: 10px;
	    border: 2px solid gray;
	    outline: none;
	    background-color: black;
	    color: white;
	    padding: 5px 10px;
	}
	.form label{
	    position: absolute;
	    color:gray;
	    top: -10px;
	    left: 15px;
	    background-color: black;
	    padding: 0 4px;
	}
	.submitbtn{
	    background-color: var(--yellow);
	    font-size: 1rem;
	    font-weight: 600;
	    border: var(--yellow);
	    text-transform: uppercase;
	    letter-spacing: 1px;
	    color: black;
	    cursor: pointer;
	}
	.form input[type=file]{
	    height: 40px;
	    padding: 8px;
	
	}
	.form input:focus,.form select:focus,  .form textarea:focus{
	    border: 2px solid var(--yellow);
	}
	.input-container label:hover{
	    color: var(--yellow);
	}
	.submitbtn:hover{
	    background-color: #e4d913;
	}
	
    #lfh1{
    margin: 0px 0 50px 0;
    text-align: center;
   color: white;
   position: relative;
   display: block;
   margin-top:80px;
}
#lfh1::after{
    content: '';
    width: 100px;
    background-color:var(--yellow);
    height: 2px;
    position: absolute;
    top: 47px;
    left: 50%;
    transform: translatex(-50%);
    /* right: 50%; */
    /* transform: translateY(-50%); */
    border-radius: 6px;
    
}

		
	</style>
</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container mt-5">
<h1 id="lfh1" style="color: white;">Post Found Item</h1>
<div class="form-container">
		<h2>Please fill all the required fields</h2>
		<form action="post" class="form"  method="POST" >
			<div class="input-container">
				<label for="nom">Name:</label>
    			<input type="text" id="nom" name="nom" required>
			</div>
			<div class="input-container">
				<label for="nom">Email:</label>
    			<input type="email" id="email" name="email" required>
			</div>
			<div class="input-container">
				<label for="description">Description:</label>
    			<textarea id="description" name="description" required></textarea>
			</div>
			<div class="input-container">
				<label for="image">Image:</label>
    			<input type="file" id="image" name="image" accept="image/*">
			</div>
			<div class="input-container">
				<label for="category">Cat�gorie:</label>
				<select id="category" name="category">
       			<% List<category> categories = (List<category>) request.getAttribute("categories"); if(categories != null) {
        				for(category categorie : categories) { %>
            			<option value="<%= categorie.getId() %>"><%= categorie.getLibelle() %></option>
						<% } } else {
						for(category categorie : categories) { %>
        				<option value="<%= categorie.getId() %>"><%= categorie.getLibelle() %></option>
						<% } } %>
   				 </select>
			</div>
			<div class="input-container">
				<label for="location">Location:</label>
   				<input type="text" id="location" name="location" required>
			</div>
		
			<div class="input-container">
				<button type="submit" class="submitbtn"> Post</button>
			</div>
		</form>
		
</div>
</div>
<script src="resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>