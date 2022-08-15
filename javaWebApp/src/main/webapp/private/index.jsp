<%
	String titulo = "Index Privado";
%>
<%@ include file="/includes/cabecera.jsp"%>
<div id="top"></div>
<div class="parallax">
	<h1>Index Acceso Privado</h1>
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
	    min-height: 252px;
}


</style>

<p>Estoy en el Backkoffice</p>
<p style="color: #FF9800">ha esta pagima solo pueden acceder usuarios logeados</p>
<p>atributo desde servlet => ${atributoDesdeServelet}</p>




<!-- table#ipartek.tabla_border>tr*9>td*2 :Esto crera una tabla con el
            ID="ipartek" y de la class="tabla_border" de 9 filas y 2 columnas-->

<!--javascrip al final del body para primero cargen los css despues el html y
            por ultimo javascrip-->
<script src="js/main.js"></script>

<%@ include file="/includes/pie.jsp"%>