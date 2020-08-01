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
						<!-- 					<h1>Ni idea como sería :(</h1> -->
						<!-- :::::::::::::::::::::::::::::: -->
						<!-- ::::CONTENIDO - FIN   :::::::: -->
						<!-- :::::::::::::::::::::::::::::: -->

						<!-- :::::::::::::::TABLA::::::::::::::: -->
						<div class="col-md-12">
							<div class="col-md-12">
								<div class="card strpied-tabled-with-hover">
									<div class="card-header ">
										<h4 class="card-title">Productos disponibles para crear
											Desayuno</h4>
										<p class="card-category">Selecione el producto y la
											cantidad que desea agregar al nuevo Desayuno</p>
									</div>
									<div class="card-body table-full-width table-responsive">
										<table class="table table-hover table-striped">
											<thead>
												<th>Producto</th>
												<th>Cantidad</th>
												<th>Valor</th>
												<th>Agregar</th>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Dakota Rice</td>
													<td>$36,738</td>
													<td><button type="button"
															class="btn btn-outline-success">Agregar</button></td>
												</tr>
												<tr>
													<td>2</td>
													<td>Minerva Hooper</td>
													<td>$23,789</td>
													<td><button type="button"
															class="btn btn-outline-success">Agregar</button>
												</tr>
												<tr>
													<td>3</td>
													<td>Sage Rodriguez</td>
													<td>$56,142</td>
													<td><button type="button"
															class="btn btn-outline-success">Agregar</button>
												</tr>
												<tr>
													<td>4</td>
													<td>Philip Chaney</td>
													<td>$38,735</td>
													<td><button type="button"
															class="btn btn-outline-success">Agregar</button>
												</tr>
												<tr>
													<td>5</td>
													<td>Doris Greene</td>
													<td>$63,542</td>
													<td><button type="button"
															class="btn btn-outline-success">Agregar</button>
												</tr>
												<tr>
													<td>6</td>
													<td>Mason Porter</td>
													<td>$78,615</td>
													<td><button type="button"
															class="btn btn-outline-success">Agregar</button>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- :::::::::::::::TABLA#:::::::::::::: -->

					</div>

					<div class="col-md-12">
						<div class="col-md-12">
							<div class="card strpied-tabled-with-hover">
								<div class="card-header ">
									<h4 class="card-title">Productos seleccionados para nuevo
										Desayuno</h4>
									<p class="card-category"></p>
								</div>
								<div class="card-body table-full-width table-responsive">
									<table class="table table-hover table-striped">
										<thead>
											<th>Producto</th>
											<th>cantidad</th>
											<th>precio</th>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Dakota Rice</td>
												<td>$36,738</td>

											</tr>
											<tr>
												<td>2</td>
												<td>Minerva Hooper</td>
												<td>$23,789</td>

											</tr>
											<tr>
												<td>3</td>
												<td>Sage Rodriguez</td>
												<td>$56,142</td>

											</tr>
											<tr>
												<td>4</td>
												<td>Philip Chaney</td>
												<td>$38,735</td>

											</tr>
											<tr>
												<td>5</td>
												<td>Doris Greene</td>
												<td>$63,542</td>

											</tr>
											<tr>
												<td>6</td>
												<td>Mason Porter</td>
												<td>$78,615</td>

											</tr>
										</tbody>
									</table>

									<!--            fin de la tabla  -->
								</div>


							</div>
							<button type="button" class="btn btn-primary btn-lg">Confirmar
								Desayuno</button>
						</div>
						
<!-- 						Falta venta emergente que confirme y de boton de publicar!! -->
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
