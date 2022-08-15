<h1>Resultado</h1>

<%
//recibir datos del controlador(CalculadoraController.java),puedeen ser del tipo qeu sea.
	
	String op = (String)request.getAttribute("operacion");
	String num1 = (String)request.getAttribute("numero1");
	String nume2 = (String)request.getAttribute("numero2");
	
	String error = (String)request.getAttribute("error");
	
	int resultado = (int)request.getAttribute("resultado");
	
	
	if(error!=null){
%>
	<p style="color:red;"> <%=error%> %></p>
<%} 
	else{ %>
	<p>El resultado de la operacion <%=num1 =op =nume2%> = <%=resultado%></p>
	<%}%>
	
	<a href="index.jsp">Volver</a>