
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
		consulta que limita las hojas de estilo utilizando caracter�sticas del
		medio como ancho, alto y color. Se entiende como un m�dulo CSS3 que
		permite adaptar la representaci�n del contenido a caracter�sticas del
		dispositivo. A�adido en CSS3, las media queries dejan que la
		presentaci�n del contenido se adapte a un rango espec�fico de
		dispositivos de salida sin tener que cambiar el contenido en s�.</p>
</section>
<div class="botonTop">
boton
</div>


















<%@ include file="/includes/pie.jsp"%>