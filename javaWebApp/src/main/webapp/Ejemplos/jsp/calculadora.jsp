<a href="index.jsp">Volver</a>

<h1>Calculadora</h1>



<form action="sumar" method="post">

	<label for="operacion">Elija operacion:</label> 
	<input type="radio"
			name="operacion" 
			value="1" 
			checked="checked">Sumar. 
		<input
			type="radio" 
			name="operacion" 
			value="2">Restar. 
		<input
			type="radio" 
			name="operacion" 
			value="3">Multiplicar. 
		<input
			type="radio" 
			name="operacion" 
			value="4">Dividir. 
		<br> 
		<input
			type="number" 
			name="op1" 
			autofocus="autofocus" 
			placeholder="numero 1"
			required="required"> 
		<br> 
		<input 
			type="number" 
			name="op2"
			placeholder="numero 2" 
			required="required"> 
		<br> 
		<input
			type="submit" 
			value="Calcular">

</form>