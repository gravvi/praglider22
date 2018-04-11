<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css2/style.css">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<title>addAndRmove</title>
</head>
<body>

<div class="flex-container">
		<header>
			<h1>${powitanie}</h1>
			
				<img src="<c:url value="/resources/images2/kulka.jpg"></c:url>"
				class="img-rounded" alt="kulka" width="1200" height="5"/>
					<img src="<c:url value="/resources/images2/mcCM4.png"></c:url>"
				class="img-circle" alt="mc" width="90" height="90" /> 
			<h4>${slogan}</h4>
		</header>

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="/paraglider22">Home</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="/paraglider22/LP">Paralotnie</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">uprzęże</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">Elektronika</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">Telefony</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">Akcesoria </a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="/paraglider22/LP">edytuj / usuń </a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="newContact">dodaj produkt </a></li>
				</ul>


			</div>
			<div class="relative">
				<a href="# " class="btn btn-warning navbar-btn">Logowanie</a>
			</div>

		</nav>

		<article class="article">
			<h1>${oferta}</h1>
			<p>${opis}</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
			<p>
				<strong>Etiam sit amet lectus quis est congue mollis!</strong>
			</p>
		</article>



		
	</div>

	<div align="center">
		<h1>Lista paralotni</h1>
	<!-- 	<h3>
			<a href="newContact">New Contact</a>
		</h3> -->
		<table border="3">
			<th>No</th>
			<th>Name</th>
			<th>kolor</th>
			<th>date</th>
			<th>manufacturer</th>
			<th>Action</th>

			<c:forEach var="contact" items="${contact}" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${contact.name}</td>
					<td>${contact.kolor}</td>
					<td>${contact.date}</td>
					<td>${contact.manufacturer}</td>
					<td><a href="editContact?id=${contact.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; 
						<a href="deleteContact?id=${contact.id}">Delete</a>
					</td>

				</tr>
			</c:forEach>
		</table>
     
	<footer>Cybiak@gmail.com</footer>
</body>
</html>
