<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL -->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Spring taglib -->
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"/>
	
		<!-- JS --> 
		<script   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
		
		<!-- CSS -->
		<link href="<c:url value="/resources/css/main.css" />" rel="styleshet">
		
		<title>Location de Véhicules - Authentification</title>
	</head>
	
	<body>
	
		<div class="container">
			<header class="header clearfix">
				<h3 class="text-muted">LOCATION DE VEHICULES</h3>
			</header>
	
			<main role="main">
	
				<div class="jumbotron">
						<form name="f" class="form-horizontal" action="login" method="POST">
<%-- 					<form name="f" class="form-horizontal" action="@{/login}" method="POST"> --%>
						<c:if test="${param.error != null}">
							<div class="alert alert-danger">
								Identifiant ou mot de passe incorrect !
							</div>
						</c:if>
						<c:if test="${param.logout != null}">
							<div class="alert alert-success">
								Vous avez été déconnecté.
							</div>
						</c:if>
						<div class="form-group">
							<label for="username">Identifiant</label>
							<input type="text" id="username" name="username" class="form-control">
						</div>
						<div class="form-group">
							<label for="password">Mot de Passe</label>
							<input type="password" id="password" name="password" class="form-control">
						</div>
						<!-- Sécuité CSRF ("Cross site request forgery") -->
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<button type="submit" class="btn btn-primary">Se connecter</button>
					</form>
				</div>
			</main>
			
			<footer class="footer">
				<p><i>Location de véhicules 2018</i></p>
			</footer>
		</div> <!-- /container -->
	
	</body>
</html>