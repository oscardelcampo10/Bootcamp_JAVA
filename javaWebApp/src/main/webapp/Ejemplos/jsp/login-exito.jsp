<h1>LOGIN EXITOSO!!!</h1>
<p>${mensaje}</p>
<%
//recibir datos del controlador(CalculadoraController.java),puedeen ser del tipo qeu sea.
	
	
	String error = (String)request.getAttribute("mensaje");
	

	if(error!=null){
%>
	<p style="color:red;"> <%=error%></p>
<%}%>
	
	<a href="/helloweb/Ejemplos/jsp/login.jsp">Volver</a>