<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
 <link rel="stylesheet" type="text/css" href="resources/css2/style.css"> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Dodawanie Produku</title>
</head>
<body>
	<div class="flex-container">
		<header>
			<h1>Dodaj produkt</h1>

		</header>

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Art. elektroniczne</a>
				</div>
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
					<li class="active"><a href="/paraglider22/addAndRemove">edytuj
							/ usuń </a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="newContact">Dodaj produkt </a></li>
				</ul>


			</div>
			<!-- <div class="relative">
				<a href="/interShop/logowanie " class="btn btn-warning navbar-btn">Logowanie</a>
			</div> -->

		</nav>

		<section class="container">
			<form:form modelAttribute="newProduct" class="form-horizontal">
				<fieldset>
					<legend>Dodaj nowy produkt</legend>
					<div class="form-group">
						<label class="control-label col-lg-2 col-lg-2" for="productId">Idproduktu</label>
						<div class="col-lg-10">
							<form:input id="productId" path="productId" type="text"
								class="form:input-large" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2 col-lg-2" for="productId">Nazwa</label>
						<div class="col-lg-10">
							<form:input id="name" path="name" type="text"
								class="form:input-large" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2 col-lg-2" for="unitPrice">cena</label>
						<div class="col-lg-10">
							<form:input id="unitPrice" path="unitPrice" type="text"
								class="form:input-large" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2" for="description">Opis</label>
						<div class="col-lg-10">
							<form:textarea id="description" path="description" rows="3" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2 col-lg-2" for="manufacturer">Producent</label>
						<div class="col-lg-10">
							<form:input id="manufacturer" path="manufacturer" type="text"
								class="form:input-large" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2 col-lg-2" for="category">kategoria</label>
						<div class="col-lg-10">
							<form:input id="category" path="category" type="text"
								class="form:input-large" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-lg-2 col-lg-2" for="unitsInStock">dostępna
							ilość</label>
						<div class="col-lg-10">
							<form:input id="unitsInStock" path="unitsInStock" type="text"
								class="form:input-large" />
						</div>
					</div>


					<div class="form-group">
						<label class="control-label col-lg-2" for="condition">Stan</label>
						<div class="col-lg-10">
							<form:radiobutton path="condition" value="New" />
							Nowy
							<form:radiobutton path="condition" value="Old" />
							Używany
							<form:radiobutton path="condition" value="Refurbished" />
							Odnowiony
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<input type="submit" id="btnAdd" class="btn btn-primary"
								value="Dodaj" />
						</div>
					</div>
				</fieldset>
			</form:form>
			<a href="<c:url value="/j_spring_security_logout" />
				"
				class="btn btn-dangerbtn-mini pull-right"> Wyloguj się </a>
		</section>
		<footer>Cybiak@gmail.com</footer>
	</div>
</body>
</html>