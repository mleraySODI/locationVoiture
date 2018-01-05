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
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"/>
	
	<!-- JS --> 
	<script   src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous"></script>
	<script   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
	
	<!-- CSS -->
<%-- 	<link rel="styleshet" type="text/css" href="<c:url value="WEB-INF/resources/css/bootstrap.min.css" />" > --%>
<%-- 	<link rel="styleshet" type="text/css" href="<c:url value="WEB-INF/resources/css/main.css" />" > --%>
	
	<!-- JS --> 
<%-- 	<script src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script> --%>
<%-- 	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script> --%>
<%-- 	<script src="<c:url value="/resources/js/main.js" />"></script> --%>
	
	<title>Location de Véhicules</title>
</head>
<body>
	<div class="container">
		<header class="header clearfix">
			<nav>
				<ul class="nav nav-pills float-right">
					<!-- Propose le bouton de déconnexion (uniquemen si l'utilsateur est authentifier, ce qui est obligatoire) -->
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
				<h1 class="display-3">Les modèles:</h1>
				<div class="row">
					<div class="voiture-row" class="col-md-12">
						<c:forEach items="${vehicules}" var="current">
							<p><c:out value="${current.modele} - ${current.couleur} - ${current.chevaux}ch - ${current.prixJournee}€" /></p>
						</c:forEach>
					</div>
				</div>
				
				<!-- On affiche l'option d'ajout de véhicule uniquement si l'utilisateur est authentifié et habilité pour le faire -->
				<c:if test="${pageContext['request'].userPrincipal != null}">
					<c:if test="${pageContext['request'].isUserInRole('GESTION')}">
						<a type="button" class="btn" href="<c:url value="ajouterVehicule" />" >Ajouter un véhicule</a>
					</c:if>
				</c:if>
			</div>
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