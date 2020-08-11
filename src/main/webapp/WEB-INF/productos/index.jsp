<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
<head>
<jsp:include page="../includes/head.jsp" />
</head>

<c:choose >
	<c:when test="${empty mensaje}">
		<body > 
	</c:when>
	<c:otherwise>
		<body onload="notifica('${mensaje}')" >
	</c:otherwise>
</c:choose>

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
									<!-- Formulario -->
				<div>
					<h2>Mantenedor de Produtos</h2>
					<form 
						id="formulario" 
						action="<c:url value='/productos'/>" 
						method="post"
						enctype="multipart/form-data">
						
						<div class="form-group">
							<label for="nombre"> Nombre</label> 
							<input 
								id="nombre" name="nombre"
								type="text" class="form-control" />
						</div>

						<div class="form-group">
							<label for="marca">
								Marca</label> 
							<input 
								id="marca" name="marca" 
								type="text" class="form-control" />
						</div>

						<div class="form-group">
							<label for="precio">
								Precio</label> 
							<input 
								id="precio" name="precio"
								type="number" class="form-control" required="required" />
						</div>

						<div class="form-group">
							<label for="imagen">
								Imágen</label> 
							<input id="imagen" name="imagen" 
								type="file" class="form-control" />
						</div>

						<button id="boton" type="submit" class="btn btn-primary">Guardar</button>

					</form>
				</div>
				<!-- Formulario # -->

				<!-- TABLA DE AUTOMOVIL -->
					<h2>Lista de Productos</h2>
					<table id="tablaAutos" class="table">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">nombre</th>
								<th scope="col">marca</th>
								<th scope="col">precio</th>
								<th scope="col">Imagen</th>
								<th scope="col">Acción</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th scope="col">#</th>
								<th scope="col">nombre</th>
								<th scope="col">marca</th>
								<th scope="col">precio</th>
								<th scope="col">Imagen</th>
								<th scope="col">Acción</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="producto" items="${productos}">
								<tr>
									<th scope="row">${producto.id}</th>
									<td>${producto.nombre}</td>
									<td>${producto.marca}</td>
									<td>${producto.precio}</td>
									<td><img width="100" height="100" src="<c:url value='/productos/${producto.urlimagen}'></c:url>" class="rounded" alt="${producto.urlimagen}" /></td>
									<td>
									<a href='javascript:actualizar(${producto.toJson()})'>Actualizar</a> | 
									<a href='javascript:eliminar(${producto.toJson()})'>Eliminar</a>
									
									</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>
				<!-- TABLA DE AUTOMOVIL # -->

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
<script type="text/javascript">
	// función para eliminar un producto, lo activa el link eliminar
	// este producto que llega a esta función, mediante el ToJson 
	// que está en la entridad producto. Así lleja un Json acá.
	const eliminar = (producto) => {
		if(!confirm("seguro que desea eliminar producto id: " + producto.nombre))
			return
		const baseUrl = window.location.origin
		window.location.href = baseUrl + '/productos/eliminar?id=' + producto.id
	}

	const actualizar = (producto) => {
		// capturamos el formulario
		const formulario = document.querySelector('#formulario')
		formulario.nombre.value = producto.nombre
		formulario.marca.value = producto.marca
		formulario.precio.value = producto.precio
		// eliminamos los imputs si existen, si existe
		// será capturado por su id
		const input001 = formulario.elementoGenerado001
		if(input001)
			input001.remove();
		const input002 = formulario.elementoGenerado002
		if(input002)
			input002.remove();
		// creamos dos input escondidos, con el resto
		// de los atributos que necesitaremos para
		// la actualización
		const input_id = document.createElement('input')
		input_id.type = 'hidden'
		input_id.name = 'id'
		input_id.value = producto.id
		input_id.id = 'elementoGenerado001'
		const input_url_imagen = document.createElement('input')
		input_url_imagen.type = 'hidden'
		input_url_imagen.name = 'urlimagen'
		input_url_imagen.value = producto.urlimagen
		input_url_imagen.id = 'elementoGenerado002'
		// agregamos estos campos creados al formulario
		formulario.appendChild(input_id);
		formulario.appendChild(input_url_imagen);
		// adaptamos el botón a una actualización
		// lo capturamos por su id
		formulario.boton.textContent = 'Actualizar'
		// cambiamos el método para que vaya a actualizar
		formulario.action = '/productos/actualizar'
	}

</script>

</html>
