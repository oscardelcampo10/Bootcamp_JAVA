<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!--Si el doctype es corto y simple esto significa que es HTML5-->
<html lang="es">
	<head>
		<!-- la base para construir todas las rutas de esta pagina, en este caso desde a /webapp/ -->
		<base href="/helloweb/">
		<link rel="icon" type="image/png" sizes="16x16" href="images/arrobaimage.png"">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<base href="${pageContext.request.contextPath}/" />
		<!--  -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
		
		<link href="https://fonts.googleapis.com/css?family=Quicksand:300,500" rel="stylesheet">
		
		<!--CSS al final le añadimos un codigo que sirve paraevitar problemos con el cache -->
		<link rel="stylesheet" href="css/styles.css?time=<%=java.lang.System.currentTimeMillis()%>">
		
		<title><%=titulo %></title>
	</head>
	<body>
	<section id="usuario" "> 	
	<%
    		String usuario = (String)session.getAttribute("usuarioLogeado");
    		String idioma = (String)session.getAttribute("idioma");    	
    		
    		if ( usuario == null ) {
    			
    			%>
    				<p style="display: inline;"><a href="Ejemplos/jsp/login.jsp">inicio sesion</a></p>
    			    			
    			<%
    		} else {
    			%>  
    				<p style="display: inline;"><a href="logout">Cerrar Sesion</a></p>
	    			<p style="display: inline;" >Usuario: <%=usuario%></p>
	    			<p style="display: inline;">Tu idioma es: <%=idioma%></p>
    			<%
    		}
    	%>
    	
    	<p style="display: inline;">Usuarios Conectados ${applicationScope.numeroUsuariosConectados}</p>
    	<a href="index.jsp" style="color: orange;">Home</a>
    	
	</section>