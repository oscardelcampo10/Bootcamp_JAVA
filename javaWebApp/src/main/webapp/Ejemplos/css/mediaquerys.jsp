
<%
	String titulo = "MediaQuery";
%>
<%@ include file="/includes/cabecera.jsp"%>
<%@ include file="/includes/navegacion.jsp" %>

<style>



/*tables*/
@media screen and (max-width: 769px) and (min-width: 320px){

	section {
		background-color: green;
	}
	
	h1 {
		color:green;
	}
	
}
/*movil*/
@media screen and (max-width: 320px) {

	section {
		background-color: pink;
	}
	
	h1 {
		color:pink;
	}
	
}

.botonTop{
	width:100px;
	height:100px;
	background-image: url("/helloweb/images/botonTop.jpg");
	background-color: blue;
}

</style>
<h1>CSS Media Querys</h1>
<section>
	<p>Una media query consiste en un tipo de medio y al menos una
		consulta que limita las hojas de estilo utilizando características del
		medio como ancho, alto y color. Se entiende como un módulo CSS3 que
		permite adaptar la representación del contenido a características del
		dispositivo. Añadido en CSS3, las media queries dejan que la
		presentación del contenido se adapte a un rango específico de
		dispositivos de salida sin tener que cambiar el contenido en sí.</p>
</section>
<div class="botonTop">
boton
</div>


















<%@ include file="/includes/pie.jsp"%>