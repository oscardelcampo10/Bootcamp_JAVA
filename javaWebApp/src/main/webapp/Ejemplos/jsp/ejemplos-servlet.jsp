<!doctype html>
<html lang="es">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Resumen de datos</title>
<base href="/">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<style>
		.explicacion {
			border:1px solid black;
			width: 100%;
			margin-bottom
		}
		
		.cajaEjemplos {
			border:1px solid black;
			width: 100%;
		}
				
		.cajaEjemplo1 ,.cajaEjemplo2
		{
			border:1px solid black;
			width: 45%;
		}
	</style>
	<main class="container">
		<h1>Maneras de configurar el Servlet</h1>
		<div class="row explicacion">
			<p>a</p>
		</div>
		<div class="row cajaEjemplos">		
			<div class="col-6 cajaEjemplo1">
				<ol>
					<li>
						<p>Este enlace te mandara al resumen.jsp con los parametros introducidos por url.</p>
						<p>url : http://localhost:8080/helloweb/ejemplo2?nombre=pepe&contrasena=123456</p>
						<a href="http://localhost:8080/helloweb/ejemplo2?nombre=pepe&contrasena=123456">resumen.jsp</a>
					</li>
					<li>
						<p>Este enlace te manda a la pagina de error 401 qeu hemos personalizado.</p>
						<p>En este caso mandaremos tambien los parametros por url pero la autentificacion sera erronea</p>
						<p>url : http://localhost:8080/helloweb/ejemplo2?nombre=sasa</p>
						<a href="http://localhost:8080/helloweb/ejemplo2?nombre=sasa">noAutorizado.jsp</a>
					</li>
					<li>
						<p>Este enlace nos enviara a la pagina de la tetera que hemos personalizado.</p>
						<p>url : http://localhost:8080/helloweb/ejemplo2?nombre=soy%20una%20tetera</p>
						<a href="http://localhost:8080/helloweb/ejemplo2?nombre=soy%20una%20tetera">tetera.jsp</a>
					</li>
				</ol>
			</div>
			<div class="col-6 cajaEjemplo2">
			
			</div>
		</div>
		
		

	</main>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
		
	</script>
</body>
</html>