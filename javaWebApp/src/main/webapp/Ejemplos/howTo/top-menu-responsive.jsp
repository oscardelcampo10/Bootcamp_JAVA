 <%
 	String titulo = "Index";
 %> 
 <%@ include file="/includes/cabecera.jsp"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/menuDesplegable.css">

	<main>
	<div class="parallax">
		<h1>Menu Responsive</h1>
		<br> <br> <br> <br> <br>
	</div>

	<nav class="topnav" id="myTopnav">

		<a href="#home" class="active">Home</a> <a href="#news">News</a> <a
			href="#contact">Contact</a>

		<div class="dropdown">
			<button class="dropbtn">
				Dropdown <i class="fa fa-caret-down"></i>
			</button>

			<div class="dropdown-content">
				<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link 3</a>
			</div>

		</div>
		<a href="#about">About</a> <a href="javascript:void(0);"
			style="font-size: 15px;" class="icon"
			onclick="funcionMenuDesplegable()">&#9776;</a>
	</nav>


	<div class="texto">
		<table id="ipartek" class="tabla border">
			<caption>Tabla Alumnos</caption>
			<tr class="d0">
				<th>Nombre</th>
				<th>Apellido</th>
			</tr>
			<tr class="d1">
				<td>Joseba</td>
				<td>Merino</td>
			</tr>
			<tr class="d0">
				<td>Raul</td>
				<td>Castro</td>
			</tr>
			<tr class="d1">
				<td>Cristian</td>
				<td>nada</td>
			</tr>
			<tr class="d0">
				<td>Alejandrp</td>
				<td>Rodriguez</td>
			</tr>
			<tr class="d1">
				<td>Aitor</td>
				<td>Valencia</td>
			</tr>
			<tr class="d0">
				<td>Ana</td>
				<td>Diaz</td>
			</tr>
			<tr class="d1">
				<td>Andres</td>
				<td>Fernandez</td>
			</tr>
			<tr class="d0">
				<td>Endika</td>
				<td>zuazo</td>
			</tr>
			<tr class="d1">
				<td>Erlantz</td>
				<td>caballo</td>
			</tr>
			<tr class="d0">
				<td>iker</td>
				<td>Pedrejon</td>
			</tr>
			<tr class="d1">
				<td>Iñigo</td>
				<td>Hernandez</td>
			</tr>
			<tr class="d0">
				<td>JuanCarlos</td>
				<td>nada</td>
			</tr>
			<tr class="d1">
				<td>Kiryl</td>
				<td>Carpintero</td>
			</tr>
			<tr class="d0">
				<td>Maria</td>
				<td>Taryfa</td>
			</tr>
			<tr class="d1">
				<td>Mikel</td>
				<td>Bua</td>
			</tr>
			<tr class="d0">
				<td colspan="2">Ander</td>
			</tr>
		</table>
	</div>


	<div class="texto">
		<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Hic
			vel quidem omnis consequatur ipsum quaerat ipsam ratione labore dolor
			molestiae sint quod, nulla perspiciatis suscipit ducimus placeat
			commodi facilis dolore?</p>
	</div>


	<!-- table#ipartek.tabla_border>tr*9>td*2 :Esto crera una tabla con el
            ID="ipartek" y de la class="tabla_border" de 9 filas y 2 columnas-->

	<!--javascrip al final del body para primero cargen los css despues el html y
            por ultimo javascrip--> <script src="js/main.js"></script> <%@ include
		file="/includes/pie.jsp"%> <script
		src="js/main.js"></script> </main>
</body>
</html>
