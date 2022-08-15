<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        
         <!-- la base para construir todas las rutas de esta pagina, en este caso desde 
        /helloweb/ -->
        <base href="/helloweb/">
        
        <!-- CCS para el font awasone -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
       
        <title>Login</title>

    </head>
    <body>
        <style>
            body {
                background-image: url("/helloweb/images/book.jpg");
                position: relative;
            }

            #imagelogin {
                width: 50%;
                height: 100%;
                background-image: url("/helloweb/images/book4.jpg");
                display: inline;
                background-size: cover;
            }
            
            #login {
                width: 850px;
                height: 400px;
                background-color: blanchedalmond;
                position: absolute;
                left: 300px;
                top: 170px;
                display: flex;
                opacity: 70%;
                transition-duration: 1s;

            }
            
            #login:hover{
                opacity: 100%;

            }
            
            #fomulogin {
                background-color: blanchedalmond;
                width: 50%;
                height: 100%;
                font-family: monospace;
            }
            
            fieldset {
                padding: 20px;
            }
            
            form {
                height: 100%;
                box-sizing: border-box;
                padding: 70px 20px 0;
            }

            .botonenviar {
                box-shadow: 0 1px 0 0 #fff6af;
                background: linear-gradient(to bottom, #ffef85 5%, #f5cc8b 100%);
                background-color: #ffef85;
                border-radius: 6px;
                border: 1px solid #ffaa22;
                display: inline-block;
                cursor: pointer;
                color: #524f52;
                font-family: Arial;
                font-size: 15px;
                font-weight: bold;
                padding: 6px 24px;
                text-decoration: none;
                text-shadow: 0 1px 0 #ebdb63;
            }
            
            .botonenviar:hover {
                background: linear-gradient(to bottom, #f5cc8b 5%, #ffef85 100%);
                background-color: #f5cc8b;
            }
            
            .botonenviar:active {
                position: relative;
                top: 1px;
            }

            input[type="text"] {
                width: 138px;
                padding: 5px;
                font-size: 16px;
                border-width: 1px;
                border-color: #CCCCCC;
                background-color: #FFFFFF;
                color: #000000;
                border-style: double;
                border-radius: 18px;
                box-shadow: 0 0 5px rgba(66,66,66,.75);
                text-shadow: 0 0 5px rgba(66,66,66,.0);
            }
            
            input[type="password"] {
                width: 110px;
                padding: 5px;
                font-size: 16px;
                border-width: 1px;
                border-color: #CCCCCC;
                background-color: #FFFFFF;
                color: #000000;
                border-style: double;
                border-radius: 18px;
                box-shadow: 0 0 5px rgba(66,66,66,.75);
                text-shadow: 0 0 5px rgba(66,66,66,.0);
            }
            
        </style>


    <div id="login">
        <div id="imagelogin">
        </div>
        <div id="fomulogin">
                <form action="#" method="post">
				<fieldset>
					<legend>Login</legend>
					<label for="nombre">Usuario :</label>
					<!--
                            autofocus : para que el foco este ahi cada vez que recarge la pagina.
                            required : que es obligatorio.
                            patter: para expresiones regulares -->
					<input type="text" name="nombre" id="nombre" autofocus="autofocus"
						required="required" pattern=".{3,10}"
						placeholder="minimo 3 y 10 max"> <br>
					<br>
					<!--
                            En el siguiente input utilizaremos el atributo type="password" para la contraseña.
                            -->
					<label for="contrasena">Contraseña :</label> <input type="password"
						name="contrasena" id="contrasena" required="required"
						pattern=".{5,10}" placeholder="minimo 5 y 10 max"> <i
						class="fas fa-eye" onclick="verTexto()"></i> <br> <br>
					<!--
                        A continuacion un select box (selected > option1..option2..) te da una lista con las opciones posibles. y si
                        tiene el atributo selected aparecera chequeado por defecto
                        -->
					<label for="idioma">Idioma</label> <select name="idioma"
						id="idioma" class="idioma">
						<option value="eus" selected="selected">Euskera</option>
						<option value="es">Español</option>
						<option value="en">Ingles</option>
					</select>
					<div class="select_flecha"></div>
				</fieldset>
				<br>
                        <input type="checkbox" name="recuerdame" value="1" id="deportes">Recuerdame<br>
                        <br>
                        <button class="botonenviar" type="submit" value="Entrar">Entrar</button>
                    </form>
        </div>
    </div>
    <!--javascrip al final del body para primero cargen los css despues el html y
            por ultimo javascrip-->
            <script src="js/main.js"></script>
</body>
</html>