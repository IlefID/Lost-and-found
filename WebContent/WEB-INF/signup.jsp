<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
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
	    margin-top:150px;
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
	.form input, .submitbtn{
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
	.form input:focus, .form textarea:focus{
	    border: 2px solid var(--yellow);
	}
	.input-container label:hover{
	    color: var(--yellow);
	}
	.submitbtn:hover{
	    background-color: #e4d913;
	}
		
	</style>
</head>
<body>
	<div class="form-container">
		<h2>Please fill all the required fields</h2>
		<form action="SignupPage" method="post" class="form">
			<div class="input-container">
				<label for="">Nom 	</label> 
				<input type="text" value="" name="nom">
			</div>
			<div class="input-container">
				<label for="">Prenom 	</label> 
				<input type="text" value="" name="prenom">
			</div>
			<div class="input-container">
				<label for="">Email </label> 
				<input type="email" value="" name="email">
			</div>
			<div class="input-container">
				<label for="">Adresse 	</label> 
				<input type="Text" value="" name="adresse">
			</div>
			<div class="input-container">
			    <label for="">Telephone </label> 
			    <input type="tel" value="" name="telephone">
			</div>
			<div 	class="input-container">
				<input type="file" accept="images/*" name="file">
			</div>
			<div class="input-container">
				<label for="">Password </label> 
				<input type="password" value="" name="password">
			</div>
			<div class="input-container">
				<button type="submit" 	class="submitbtn">SignUp</button>
			</div>
		</form>
</body>
</html>