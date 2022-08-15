<%@page import="com.ipartek.formacion.controller.ConvertirController"%>
<a href="index.jsp">Volver</a>

<h1>Conversor</h1>
<p>1 metro equivale a : <%=ConvertirController.METROS_PIES%></p>
<%
	String error = "estoy vacio";
	//recibir datos del controlador(ConversorController.java),puedeen ser del tipo que sea.
	error = (String)request.getAttribute("mensaje");
	double numPies = 0;
	if( request.getAttribute("pies") != null ){
		
		numPies = (double)request.getAttribute("pies");
	}
%>


<form action="/helloweb/convertir" method="post">

	<label for="numMetros">Convertir de metros a pies:</label> <br> <input
		type="text" name="numMetros" autofocus="autofocus"
		placeholder="metros a convertir" required="required"> 
		<br>
	
	<p style="color: green;">
		Pies : <%=numPies%>
	</p>
	<%if(error!=null) {%>
	
		<p style="color: red;">
			<%=error%>
	<% } %>
	</p>
	
	<br> <input type="submit" value="Convertir"> <br>

</form>