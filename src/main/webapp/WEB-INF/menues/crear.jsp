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
				<div class="row">
					<div class="col-sm-4">
					<form id="formulario" action="<c:url value=''/>" method="post"
							enctype="multipart/form-data">
							
						<h2>Selección de productos:</h2>
						<div class="form-group">
							<label for="nombre"> filtrar productos</label> 
							<input 
								id="filtroNombre"
								onkeydown = "filtrarPorNombre(this.value)" 
								type="text" 
								class="form-control" />
						</div>
						<div class = "row">
						
							<div id="listaProductos"></div>
						</div>	
						


						<h2>Información Desayuno:</h2>
						

							<div class="form-group">
								<label for="nombre"> Nombre</label> <input id="nombre"
									name="nombre" type="text" class="form-control" />
							</div>

							<div class="form-group">
								<label for="detalle"> detalle</label> <input id="detalle"
									name="detalle" type="text" class="form-control"
									required="required" />
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

			<h1>Falta la tabla acá </h1>
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
	const productos = ${productosJ}
	
	const elemento = document.querySelector('#listaProductos')
	
	const cargarProductosIniciales = (productos) => {
		var htmlText = ''
			productos.forEach(producto => {
				htmlText += ''
					+ '<div class="col-md-3">'
					+ 	'<div class="card">'	
					+ 		'<img class="card-img-top" src=/productos/' + producto.urlimagen + ' alt="Card image" style="width: 100%">'		
					+		'<div class="card-body">'
					+   		'<h5 class="card-title">' + producto.nombre + '</h5>'			
					+   		'<label><input type="checkbox" value="' + producto.id + '" name="productos"></label><br>'			
					+		'</div>'
					+ 	'</div>'
					+ '</div>'
			})

			elemento.innerHTML = htmlText
	}

	cargarProductosIniciales(productos)
	
	const filtrarPorNombre = (nombre) => {
		if(nombre.length != 0)
			cargarProductosIniciales(productos.filter(producto => producto.nombre.toUpperCase().includes(nombre.toUpperCase())))
		else
			cargarProductosIniciales(productos)
	}
</script>

</html>
