<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
	<jsp:include page="../includes/head.jsp" />
</head>
<body>
	<div class="wrapper">
		<!-- menú vertical -->
		<jsp:include page="../includes/menu-vertical.jsp" />
		<!-- menú vertical # -->
		<div class="main-panel">
			<!-- menú horizontal -->
			<jsp:include page="../includes/menu-horizontal.jsp" />
			<!-- menú horizontal # -->

			<div class="content">
				<div class="container-fluid">
					<div class="row">
					<!-- :::::::::::::::::::::::::::::: -->
					<!-- ::::CONTENIDO - INICIO:::::::: -->
					<!-- :::::::::::::::::::::::::::::: -->
					<h1>Ni idea como sería :(</h1>
					<!-- :::::::::::::::::::::::::::::: -->
					<!-- ::::CONTENIDO - FIN   :::::::: -->
					<!-- :::::::::::::::::::::::::::::: -->
					</div>
				</div>
			</div>
			
			<!-- Footter -->
			<jsp:include page="../includes/menu-horizontal.jsp" />
			<!-- Footter # -->
		</div>
	</div>
</body>
	<!-- javascripts -->
	<jsp:include page="../includes/footerscripts.jsp" />
	<!-- javascripts # -->
</html>
