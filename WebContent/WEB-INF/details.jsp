<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="BEANS.item"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#detailspage section{
    margin-top: 70px;
    /* min-height: 90vh; */
    display: flex;
    justify-content: center;

}
.details-card{
    margin-top: 10px;
    color: white;
    border: 2px solid white;
    width: 470px;
    padding: 20px;
    border-radius: 10px;
}
.details-card .img-container{
   
    overflow: hidden;
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
}
.details-card .img-container img{
     width: 400px;
    object-fit: cover;
    border-radius: 10px;
}
.details-card h1{
    text-align: center;
    margin: 12px 0;
}
.details-card .action-container{
    display: flex;
    width: 100%;
    justify-content: center;
    /* background-color: red; */
    /* align-items: center; */
    margin: 12px 0;
}
.details-card .action-container a{
    padding: 8px 20px;
    /* width: 100px;
    height: 35px; */
    background-color: yellow;
    margin: 0 10px;
    color: black;
    display: flex;
    align-items: center;
    gap: 5px ;
    border-radius: 8px;
}
.details-container{
    display: flex;
    /* flex-direction: column; */
justify-content: flex-start;
gap: 10px;
margin: 12px 0;
    

}
.details-container p{
    text-align: start;
    color: rgba(255, 255, 255, 0.95);
}
.details-container p:nth-child(2){
    color: var(--yellow);}
.desc p{
    text-align: justify;
    
}

</style>
</head>
<body>

<%@ include file="navbar.jsp" %>
<% 
    item item = (item) request.getAttribute("item");
    if(item != null) {
%>
<main id="detailspage">
    <section>
          <div class="details-card">
            <div class="img-container">
              <img src=<%= item.getImage() %> alt="image" width="400" height="400"/>
            </div>
            <h1 style="color:white;"><%= item.getNom() %></h1>
              <a href={`mailto:<%= item.getEmail() %>`}>
          			 Email
              </a>
              
            </div>
            
     </section>
</main>

<%
    }
%>

</body>
</html>