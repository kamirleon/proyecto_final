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
					<h3>Selecionar productos para nuevo Desayuno:</h3>
					<br>

					<div class="row">
						<!-- :::::::::::::::::::::::::::::: -->
						<!-- ::::CONTENIDO - INICIO:::::::: -->
						<!-- :::::::::::::::::::::::::::::: -->

						<div class="col-md-2">
							<div class="card">
								<img height="100" class="card-img-top"
									src="https://www.flaticon.es/premium-icon/icons/svg/1232/1232833.svg"
									alt="Card image" style="width: 100%">
								<div class="card-body">
									<h5 class="card-title">Dulces</h5>
									<label><input type="checkbox" name="cb-autos"></label><br>
								</div>
							</div>
						</div>

						<div class="col-md-2">
							<div class="card">
								<img height="100" class="card-img-top"
									src="https://www.flaticon.es/premium-icon/icons/svg/1025/1025585.svg"
									alt="Card image" style="width: 100%">
								<div class="card-body">
									<h5 class="card-title">Dulces</h5>
									<label><input type="checkbox" name="cb-autos"></label><br>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="card">
								<img height="100" class="card-img-top"
									src="https://www.flaticon.es/premium-icon/icons/svg/1232/1232833.svg"
									alt="Card image" style="width: 100%">
								<div class="card-body">
									<h5 class="card-title">Dulces</h5>
									<label><input type="checkbox" name="cb-autos"></label><br>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="card">
								<img height="100" class="card-img-top"
									src="https://www.flaticon.es/premium-icon/icons/svg/1232/1232833.svg"
									alt="Card image" style="width: 100%">
								<div class="card-body">
									<h5 class="card-title">Dulces</h5>
									<label><input type="checkbox" name="cb-autos"></label><br>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="card">
								<img height="100" class="card-img-top"
									src="https://www.flaticon.es/premium-icon/icons/svg/1232/1232833.svg"
									alt="Card image" style="width: 100%">
								<div class="card-body">
									<h5 class="card-title">Dulces</h5>
									<label><input type="checkbox" name="cb-autos"></label><br>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="card">
								<img height="100" class="card-img-top"
									src="https://www.flaticon.es/premium-icon/icons/svg/1232/1232833.svg"
									alt="Card image" style="width: 100%">
								<div class="card-body">
									<h5 class="card-title">Dulces</h5>
									<label><input type="checkbox" name="cb-autos"></label><br>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<div class="card">
								<img height="100" class="card-img-top"
									src="https://www.flaticon.es/premium-icon/icons/svg/1232/1232833.svg"
									alt="Card image" style="width: 100%">
								<div class="card-body">
									<h5 class="card-title">Dulces</h5>
									<label><input type="checkbox" name="cb-autos"></label><br>
								</div>

							</div>
							<p>
								<input type="submit" value="Confirmar Productos">
							</p>

						</div>

						<!-- :::::::::::::::::::::::::::::: -->
						<!-- ::::CONTENIDO - FIN   :::::::: -->
						<!-- :::::::::::::::::::::::::::::: -->
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4">


						<h2>Información Desayuno:</h2>
						<form id="formulario" action="<c:url value=''/>" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="nombre"> Nombre</label> <input id="nombre"
									name="nombre" type="text" class="form-control" />
							</div>



							<div class="form-group">
								<label for="precio"> Precio Final</label> <input id="precio"
									name="precio" type="number" class="form-control"
									required="required" />
							</div>

							<div class="form-group">
								<label for="imagen"> Imágen</label> <input id="imagen"
									name="imagen" type="file" class="form-control" />
							</div>

							<button id="boton" type="submit" class="btn btn-primary">Publicar</button>

						</form>



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
