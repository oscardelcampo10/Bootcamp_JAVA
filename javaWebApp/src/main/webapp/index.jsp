<%
	String titulo = "Index";
%>
<%@ include file="/includes/cabecera.jsp"%>
<div id="top"></div>
<div class="parallax">
	<h1>Prueba Tecnica INDEX</h1>
	<br>
	<br>
	<br>
	<br>
	<br>  
</div>
<%@ include file="/includes/navegacion.jsp"%>
<style>
main {
	background-color: #006E5F;
}

.imagenicono {
    width: 40px;
    height: 40px;
    position: fixed;
    bottom: 95px;
    left: 1020px;
}

.footer-wraper {
    min-height: 90px;
}
</style>
<table id="ipartek" class="tabla border">
	<caption>
		<i class="fas fa-table"></i> Tabla Alumnos
	</caption>
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


<div>
	<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Hic
		vel quidem omnis consequatur ipsum quaerat ipsam ratione labore dolor
		molestiae sint quod, nulla perspiciatis suscipit ducimus placeat
		commodi facilis dolore?</p>
</div>
<span>
	<a href="#top">
		<img class="imagenicono" src="/helloweb/images/arrowTopBlack.png"
			alt="icono top">
	</a>
</span>
<!-- table#ipartek.tabla_border>tr*9>td*2 :Esto crera una tabla con el
            ID="ipartek" y de la class="tabla_border" de 9 filas y 2 columnas-->

<!--javascrip al final del body para primero cargen los css despues el html y
            por ultimo javascrip-->
<script src="js/main.js"></script>

<%@ include file="/includes/pie.jsp"%>