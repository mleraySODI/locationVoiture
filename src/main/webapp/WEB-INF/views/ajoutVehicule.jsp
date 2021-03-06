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
	<!--  JQUERY -->
	<script   src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous"></script>
	<!--  BOOTSTRAP -->
	<script   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
	
	<!-- CSS -->
	<link href="<c:url value="/resources/css/main.css" />" rel="styleshet">
	
	<title>Location de Véhicules - Ajout de véhicules</title>
</head>
<body>
	<div class="container">
		<header class="header clearfix">
			<nav>
				<ul class="nav nav-pills float-right">
					<c:if test="${pageContext['request'].userPrincipal != null}">
						<li class="nav-item">
							<a type="button" class="nav-link btn btn-danger" href="<c:url value="/logout" />">Déconnexion</a>
						</li>
					</c:if>
				</ul>
			</nav>
			<h3 class="text-muted">LOCATION DE VEHICULES</h3>
		</header>

		<main role="main">

			<div class="jumbotron">
				<h1 class="display-3">Ajouter un véhicule</h1>
			</div>
			
			<a type="button" class="btn" href="<c:url value="vehicules" />" >Annuler</a>
			<a type="button" class="btn" >Valider (non fonctionnel)</a>
		</main>
		
		<footer class="footer">
			<p><i>Location de véhicules 2018</i></p>
		</footer>
	</div> <!-- /container -->
</body>

<!-- JS -->
<script type="text/javascript">

</script>

<footer>
</footer>
</html>