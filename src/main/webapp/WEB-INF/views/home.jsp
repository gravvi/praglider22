<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css2/style.css">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

<title>Paragliders</title>
</head>
<body>

	<div class="flex-container">
		<header>
			<h1>${powitanie}</h1>
			<p>${opis}</p>
			<img src="<c:url value="/resources/images2/kulka.jpg"></c:url>"
				class="img-rounded" alt="kulka" width="1000" height="5" /> 
				<img src="<c:url value="/resources/images2/sniezka-15.jpg"></c:url>"
				class="img-rounded" alt="mc" width="1000" height="250" /> 
				<img src="<c:url value="/resources/images2/kulka.jpg"></c:url>"
				class="img-rounded" alt="kulka" width="1000" height="5" />

			<h4>${slogan}</h4>
		</header>

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header"></div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="/paraglider22/LP">Paralotnie</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">Uprzęże</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">elektronika</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">testy</a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="#">Akcesoria </a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="/paraglider22/editAndRemove">edytuj
							/ usuń </a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="newContact">Dodaj produkt </a></li>
				</ul>


			</div>
			<div class="relative">
				<a href="/paraglider22/logowanie" class="btn btn-warning navbar-btn">Logowanie</a>
			</div>

		</nav>

		<article class="article">
			<h1>${oferta}</h1>
			<p>${opis}</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
			<p>
				<strong>Etiam sit amet lectus quis est congue mollis!</strong>
			</p>
		</article>



		<footer>Cybiak@gmail.com</footer>
	</div>

	<%-- <div align="center">
		<h1>Contact List</h1>
		<h3>
			<a href="newContact">New Contact</a>
		</h3>
		<table border="1">
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
						&nbsp;&nbsp;&nbsp;&nbsp; <a href="deleteContact?id=${contact.id}">Delete</a>
					</td>

				</tr>
			</c:forEach>
		</table>
	</div --%>
	>
</body>
</html>
