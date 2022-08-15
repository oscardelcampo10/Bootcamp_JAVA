<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String titulo = "FormularioCheck";
%>
<%@ include file="/includes/cabecera.jsp"%>
<%@ include file="/includes/navegacion.jsp"%>

<style>
body {
	margin: auto;
	max-width: 1024px;
}

main {
	width: 100%;
	background-color: teal;
	padding: 10px;
	box-sizing: border-box;
}

section {
	display: none;
}

nav {
	position: sticky;
}

input[type="text"]:valid {
	padding: 2px 0 2px 5px;
}

input[type="text"]:valid {
	border: 1px solid green;
	color: green;
}

input[type="text"]:invalid {
	border: 1px solid red;
	color: red;
}

form {
	padding: 20px;
}
</style>

<h1>Soy el Formulario con CheckBox</h1>
<br>
<c:if test="${not empty mensaje}">
	<p style="color: #3ef546;">${mensaje}</p>
</c:if>

<ul>
	<c:if test="${not empty contador}">
		<li>Cuantos deportes has elegido : <span style="color: #3ef546;">${contador}</span></li>
	</c:if>
	<c:if test="${not empty deportesfav}">
		<li>Deportes que te gustan :
			<ul>
				<c:forEach items="${deportesfav}" var="deporte">
					<li>${deporte}</li>
				</c:forEach>
			</ul>
		</li>
	</c:if>
</ul>
<br>
<form action="FormCheck" method="post">

	Datos Personales <br> <br> <br> 
	<label for="nombre">Nombre :</label>
	<!--autofocus : para que el foco este ahi cada vez que recarge la pagina.
        required : que es obligatorio. patter: para expresiones regulares. 
     -->
	<input type="text" name="nombre" autofocus="autofocus"
		required="required" value="${nombre}" pattern=".{1,10}"
		placeholder="minimo 3 y 10 max"> <br> <br> 
		<label for="email">Email :</label> 
		<input type="email" name="email"
		required="required" value="${email}" pattern=".{1,50}"
		placeholder="minimo 3 y 10 max"> <br> <br> <br>
		
	<select name="sexo">	
	  <option value="">--Seleccione sexo--</option>
	  <option value="h" ${(sexo eq h) ? "selected" : ""}>Hombre</option>
	  <option value="m" ${(sexo eq m) ? "selected" : ""}>Mujer</option>
	  <option value="i" ${(sexo eq i) ? "selected" : ""}>Indefinido</option>
	</select>
		
	<label for="deportes">Deportes :</label><br> 
	
	<input type="checkbox" name="deportes" value="Surf" id="deportes">Surf<br>
	<input type="checkbox" name="deportes" value="Baloncesto" id="deportes" checked="checked">Baloncesto<br> 
	<input type="checkbox" name="deportes" value="Futbol" id="deportes">Futbol<br> 
	<input type="checkbox" name="deportes" value="Voleyball" id="deportes">Voleyball<br>
	<input type="checkbox" name="deportes" value="Hockey" id="deportes">hockey<br>
	<input type="checkbox" name="deportes" value="Squash" id="deportes">Squash<br>
	<br>
	
	<input type="submit" value="Enviar">
</form>
