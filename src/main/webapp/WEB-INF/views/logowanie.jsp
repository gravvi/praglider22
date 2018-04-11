<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css2/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Produkty</title>
</head>
<body>
	<div class="flex-container">
		<header>
			<h1>${powitanie}</h1>
			<img src="resources/images2/kulka.jpg" class="img-rounded"
				alt="kulka" width="1200" height="5"> <img
				src="resources/images2/mcCM4.png" class="img-circle" alt="MC"
				width="90" height="90">
			<h4>${slogan}</h4>
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
					<li class="active"><a href="/paraglider22/editAndRemove">edytuj
							/ usuń </a></li>
					<li><a href=" "> </a></li>
					<li class="active"><a href="newContact">Dodaj produkt </a></li>
				</ul>
			</div>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Zaloguj się</h3>
						</div>
						<div class="panel-body">
							<c:if test="${not empty error}">
								<div class="alert alert-danger">
									<spring:message
										code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
									<br />
								</div>
							</c:if>
							<form action="<c:url value="/j_spring_security_check"></c:url>"
								method="post">
								<fieldset>
									<div class="form-group">
										<input class="form-control" placeholder="Nazwa użytkownika"
											name='j_username' type="text">
											<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
									</div>
									<div class="form-group">
										<input class="form-control" placeholder="Hasło"
											name='j_password' type="password" value="">
											 <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
									</div>
									<input class="btn btn-lg btn-success btn-block" type="submit"
										value="Zaloguj się">
								</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer>Cybiak@gmail.com</footer>
	</div>
</body>
</html>

