<%String titulo = "Login";%>
<%@ include file="/includes/cabecera.jsp" %>


<h1>Login</h1>


	<style>
            body {
                background-image: url("/helloweb/images/book.jpg");
                position: relative;
            }

            .imagelogin {
                width: 50%;
                height: 100%;
                background-image: url("/helloweb/images/book4.jpg");
                display: inline;
                background-size: cover;
            }
            .login {
                width: 850px;
			    height: 400px;
			    margin-top: 1rem;
			    background-color: blanchedalmond;
			    /* position: absolute; */
			    /* left: 365px; */
			    margin: 1rem auto 0;
			    display: flex;

            }
            .formulogin {
                background-color: blanchedalmond;
                width: 50%;
                height: 100%;
                font-family: monospace;
                position: relative;
            }
            fieldset {
                padding: 20px;
            }
            form {
                height: 100%;
			    box-sizing: border-box;
			    border: none;
			    position: absolute;
			    top: 45px;
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
    <div class="login">
        <div class="imagelogin">
        </div>
        <div class="formulogin">
        <%
			//recibir datos del controlador(CalculadoraController.java),puedeen ser del tipo que sea.
			String error = (String)request.getAttribute("mensaje");
			
        	if(error!=null){
			%>
				<p style="color:red;"> <%=error%></p>
			<%} %>
                <form action="login" method="post">
                        <fieldset>
                            <legend>Login</legend>
                            <label for="nombre">Usuario :</label>
                            <!--
                            autofocus : para que el foco este ahi cada vez que recarge la pagina.
                            required : que es obligatorio.
                            patter: para expresiones regulares -->
                            <input
                                type="text"
                                name="usuario"
                                id="usuario"
                                autofocus="autofocus"
                                required="required"
                                pattern=".{2,20}"
                                placeholder="minimo 3 y 20 max">
                            
                                <br><br>
                            <!--
                            En el siguiente input utilizaremos el atributo type="password" para la contraseña.
                            --> 
                            <label for="contrasena">Contraseña :</label>
                            <input
                                type="password"
                                name="contrasena"
                                id="contrasena"
                                required="required"
                                pattern=".{6,20}"
                                placeholder="minimo 6 y 20 max"> <br>
                                <i class="fas fa-eye"></i>
                                   
                        <br>
                        <br>
                        <!--
                        A continuacion un select box (selected > option1..option2..) te da una lista con las opciones posibles. y si
                        tiene el atributo selected aparecera chequeado por defecto
                        -->
                        <label for="idioma">Idioma</label>
                        <select name="idioma" id="idioma" class="idioma">
                            <option value="eus" selected="selected">Euskera</option>
                            <option value="es">Español</option>
                            <option value="en" >Ingles</option>
                        </select>
                        <div class="select_flecha">
                            </div>
                    </fieldset>
                        <br>
                        <input type="checkbox" name="recuerdame" value="1" id="recuerdame" checked="checked">Recuerdame<br>
                        <br>
                        <button class="botonenviar" type="submit" value="acceder">Entrar</button>
                    </form>
        </div>
    </div>
</body>

