<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
    }
    nav{
        position: fixed;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 5px 2%;
        background-color: rgba(0, 0, 0, 0.7);
        width: 100vw;
        top: 0;
        left: 0;
        z-index: 1000;
        backdrop-filter: blur(30px);
    }
    nav img{
        width: 60px;
        height: 60px;
    }
    nav ul {
        list-style: none; /* Add this line to remove default list styling */
        display: flex;
        margin-left: auto; /* Add this line to push the list items to the right */
    }
    nav ul li{
        display: inline-block;
        margin: 20px;
    }
    nav ul li a{
        text-decoration: none;
        font-size: 17px;
        color: var(--yellow);
    }
</style>
</head>
<body>
	<nav>
	<img src="https://ridegtrans.com/wp-content/uploads/2023/08/banner-lostandfound.png" alt="nav">
        <ul>
            <li>
             <a href="home">Home</a>
            </li>
            <li>
              <a href="post">Post</a>
            </li>
            <li>
              <a href="profil">Profil</a>
            </li>
            <li>
              <a href="contact">Contact</a>
            </li>
            <li>
              <a href="login">Logout</a>
            </li>
        </ul>
   </nav>

</body>
</html>


