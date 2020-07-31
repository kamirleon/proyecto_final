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

						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h4 class="card-title">Mantenedor de productos</h4>
								</div>
								<div class="card-body">
									<div class="container">
										<div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-8">

												<form>

													<div class="form-group">
														<label for="nombre" >Nombre</label> 
														<input id="nombre" name="nombre" type="text"class="form-control" placeholder="Ingrese su nombre">
													</div>

													<div class="form-group">
														<label for="nombre" >MARCA</label> 
														<input id="nombre" name="nombre" type="text"class="form-control" placeholder="Ingrese su nombre">
													</div>

													<div class="form-group">
														<label for="precio" >PRECIO</label> 
														<input id="precio" name="precio" type="number"class="form-control">
													</div>

													<div class="form-group">
														<label for="imagen" >IMAGEN</label> 
														<input id="imagen" name="imagen" type="file"class="form-control" />
													</div>

												</form>

											</div>
											<div class="col-md-2"></div>
											
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- :::::::::::::::TABLA::::::::::::::: -->
						<div class="col-md-12">
							                        <div class="col-md-12">
                            <div class="card strpied-tabled-with-hover">
                                <div class="card-header ">
                                    <h4 class="card-title">Striped Table with Hover</h4>
                                    <p class="card-category">Here is a subtitle for this table</p>
                                </div>
                                <div class="card-body table-full-width table-responsive">
                                    <table class="table table-hover table-striped">
                                        <thead>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Salary</th>
                                            <th>Country</th>
                                            <th>City</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Dakota Rice</td>
                                                <td>$36,738</td>
                                                <td>Niger</td>
                                                <td>Oud-Turnhout</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Minerva Hooper</td>
                                                <td>$23,789</td>
                                                <td>Curaçao</td>
                                                <td>Sinaai-Waas</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Sage Rodriguez</td>
                                                <td>$56,142</td>
                                                <td>Netherlands</td>
                                                <td>Baileux</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>Philip Chaney</td>
                                                <td>$38,735</td>
                                                <td>Korea, South</td>
                                                <td>Overland Park</td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>Doris Greene</td>
                                                <td>$63,542</td>
                                                <td>Malawi</td>
                                                <td>Feldkirchen in Kärnten</td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>Mason Porter</td>
                                                <td>$78,615</td>
                                                <td>Chile</td>
                                                <td>Gloucester</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
						</div>
						<!-- :::::::::::::::TABLA#:::::::::::::: -->


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
