<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
     <style>
        /* Ajoutez votre custom CSS ici */
        .card-img-top:hover {
            transform: scale(1.1);
            transition: transform .3s ease;
        }
        .item-container {
            justify-content: space-around;
            
        }
        .form-control,
        .btn-outline-success {
            margin-bottom: 10px; /* Ajoutez une marge en dessous des éléments de recherche */
        }
        .card{
        	background-color:black;
        	border:3px solid #495057;
        	border-radius: 10px;
        	
        }
        div .card-desc{
        padding: 10px;
    margin-top: 20px;}
        
        #btn{ margin-left:220px;}
        
        .card-img{
  display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 10px;
    height:300px;
    width:300px;
    text-align:center;
}
#form-control{
border-radius: 20px;}

#card-text{color:white;}
#a{    margin-top: 9px;
    /* margin-bottom: 12px; */
    color: black;
    background: #e2d704;
    border: black;}
    
    card-img, .card-img-top {
    border-top-left-radius: calc(.25rem - 1px);
    border-top-right-radius: calc(.25rem - 1px);
    margin-left: 40px;
    margin-top: 40px;}
    
    #lfh1{
    margin: 0px 0 50px 0;
    text-align: center;
   color: white;
   /* font-size: 2.2rem; */
   position: relative;
   display: block;
   padding-top:50px;
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
    margin-top: 50px;
}
    </style>

</head>
<body>
<%@ include file="navbar.jsp" %>
<div class="container mt-5">
    <h1  id="lfh1" style="color: white;">Lost and Found Items</h1>
    <div class="row justify-content-center mb-3">
        <div class="col-12 col-md-8">
            <form action="home" method="get" class="input-group">
                <input class="form-control" type="search" placeholder="Rechercher par nom" name="searchTerm" id="form-control">&nbsp; &nbsp;
                <select class="form-control" name="categoryLibelle" id="form-control">
                    <option value="">Toutes les catégories</option>
                    <c:forEach items="${categories}" var="category">
                        <option value="${category.libelle}">${category.libelle}</option>
                    </c:forEach>
                </select>&nbsp;
                <button class="btn btn-outline-success" type="submit"id="a"><i class="bi bi-search"></i></button>
            </form>
        </div>
    </div>
    <div class="row">
        <c:forEach items="${items}" var="item">
            <div class="col-md-4 mb-3">
            	<a href="details?id=${item.id}" style="text-decoration:none; color: inherit;" class="item-card-link">
                <div class="card h-100 item-card" data-id="${item.id}">
                    <div class="card-img">
			            <c:if test="${not empty item.image}">
			                <img src="${item.image}" class="card-img-top" alt="${item.nom}">
			            </c:if>
		            </div>
		             <div class="card-desc">
                        <h2 id="card-text">${item.nom}</h2>
                        <p id="card-text">${item.date} &nbsp; &nbsp; &nbsp; &nbsp;   &nbsp;  &nbsp; &nbsp;   &nbsp;    &nbsp;   &nbsp;   &nbsp; &nbsp;   &nbsp;  &nbsp; &nbsp;   &nbsp;  &nbsp; &nbsp;   &nbsp; &nbsp;   &nbsp;${item.location}</p>
                        <p id="card-text">${item.description}</p>
                        <form action="home" method="post">
                				<input type="hidden" name="itemId" value="${item.id}"/>
                					<c:choose>
                    					<c:when test="${item.found}">
                        					<input type="hidden" name="found" value="false"/>
                        					<button type="submit" class="btn btn-success" id="btn" style="margin-left:250px">Found</button>
                   						 </c:when>
                    					<c:otherwise>
					                       <input type="hidden" name="found" value="true"/>
					                       <button type="submit" class="btn btn-outline-danger" id="btn">Not Found</button>
                    				</c:otherwise>
                				</c:choose>
            			</form>
                    </div>
                </div>
                </a>
            </div>
        </c:forEach>
    </div>
</div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>