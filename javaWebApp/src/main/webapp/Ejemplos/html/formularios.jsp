<%String titulo = "FormulariosEjemplo";%>
<%@ include file="/includes/cabecera.jsp" %>



        <style>
            body {
                margin: auto;
                max-width: 1024px;
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
            fieldset{
                padding: 10px;
            }
        </style>
        <%@ include file="/includes/navegacion.jsp" %>
        <h1>Formulario</h1>
        <ul>
            <il>
                <p>Los formularios sirven para enviar y regoger datos. Todo formulario va dentro
                    de las estiquetas form. a nivel de atributos tiene dos importantes, uno es post
                    y el otro es action.</p>
            </il>
            <il>
                <p>Usar siempre etiqueta form junto con boton de submit.</p>
            </il>
            <il>
                <p>El atributo action sirve para indicar el nombre del controlador en el servidor</p>
            </il>
            <il>
                <p>La etiquetas basicas dentro del input son imput, label... estasa etiuetas a
                    su vez contienen diferentes atributos.</p>
            </il>
            <il>
                <p>Label: for para saver a quien hace referencia.</p>
            </il>
            <il>
                <p>Input: type para el tipo (texto,submit(boton de denvio),name, id, required,
                    placeholder, patter, autofocus...)</p>
            </il>
            <il>
                <p>para los patter tenemos paginas web que no ayudaran.
                    <a href="http://html5pattern.com/">html5pattern.com</a>
                </p>
            </il>
            <il>
                <p>El atributo name de un imput sirve para especificar el nombre del parametro a
                    enviar al servidor.</p>
            </il>
        </ul>
        <form action="#" method="post">
            <fieldset>
                <legend>Datos Personales</legend>
                <label for="nombre">Nombre</label>
                <!--
                autofocus : para que el foco este ahi cada vez que recarge la pagina.
                required : que es obligatorio.
                patter: para expresiones regulares -->
                <input
                    type="text"
                    name="nombre"
                    id="nombre"
                    autofocus="autofocus"
                    required="required"
                    pattern=".{3,10}"
                    placeholder="minimo 3 y 10 max">
                <input type="submit" value="Enviar">
                <br>
                <!--
                En el siguiente input utilizaremos el atributo type="password" para la contraseña.
                --> 
                <label for="contrasena">Contraseña :</label>
                <input
                    type="password"
                    name="contrasena"
                    id="contrasena"
                    required="required"
                    pattern=".{5,10}"
                    placeholder="minimo 5 y 10 max">
                <button onclick="verTexto()">ver</button>
                    <script>
                    /*Esta funcion nos dejara ver la contraseña que estamos escribiendo
                     para saber si la estamos escribiendo bien. Ademas cambiaremos el texto del boton
                     */
                     //Esta funcion se ejecutara al hacer click en el boton. (<button onclick="verTexto()">ver</button>).
                    function verTexto(){
                            console.trace('click boton ver');
                            let iContraseña = document.getElementById('contrasena');//accedemos al elemento(en este caso el boton) con id="contrasena".
                            //En este if cambiamos el type de texto a password y viceversa.
                            //Ademas cambiamos el texto del boton de 'Ver' a 'Ocultar'.
                            if(iContraseña.type=="text"){
                                iContraseña.type="password";
                                event.target.innerHTML = 'Ver';//Aqui cambiamos el texto del boton que nos ha mandado el evento onclick.
                                }
                            else{
                                iContraseña.type="text";
                                event.target.innerHTML = 'Ocultar';//Aqui cambiamos el texto del boton que nos ha mandado el evento onclick.
                                }
                    }
                    </script>
                <br>
                <label for="edad">Edad</label>
                <!--Podemos dar diferentes atributos y valodes dependiendo del tipo de input. en
                este caso tenemos el valor max , min y step que indica en qeu cantidad sumara.
                -->
                <input
                    type="number"
                    name="edad"
                    id="edad"
                    required="required"
                    min="0"
                    max="99"
                    step="2"
                    placeholder="numero de años 0 a 99 años">
            </fieldset>
            <br>
            <!--
            A continuacion un select box (selected > option1..option2..) te da una lista con las opciones posibles. y si
            tiene el atributo selected aparecera chequeado por defecto
            -->
            <label for="sexo">Sexo</label>
            <select name="sexo">
                <option value="h">Hombre</option>
                <option value="m">mujer</option>
                <option value="s" selected="selected">Sin especificar</option>
            </select>
            <br>
            <label for="deportes">Deportes</label><br>
            <input type="checkbox" name="deportes" value="1" id="deportes">Surf<br>
            <input
                type="checkbox"
                name="deportes"
                value="2"
                id="deportes"
                checked="checked">Baloncesto<br>
            <input type="checkbox" name="deportes" value="3" id="deportes">Futbol<br>
            <input type="checkbox" name="deportes" value="4" id="deportes">Voleyball<br>
            <br>
            <!-- input radio-->
            <label for="situacion">Situacion actual :</label>
            <input type="radio" id="situaicion" name="situacion" value="0" checked="checked">trabajando.
            <input type="radio" id="situaicion" name="situacion" value="1">Desempleado.
            <br>
            <!--CODIGO PARA ECLIPSE-->
            <form action="sumar" method="post">

                <label for="operacion">Elija operacion:</label>
                <input type="radio" name="operacion" value="1" checked="checked">Sumar.
                <input type="radio" name="operacion" value="2">Restar.
                <input type="radio" name="operacion" value="3">Multiplicar.
                <input type="radio" name="operacion" value="4">Dividir.
                <br>
                <input type="number" name="op1" autofocus="autofocus" placeholder="numero 1" required="required">
                <br>
                <input type="number" name="op2" placeholder="numero 2" required="required">
                <br>
                <input type="submit" value="Calcular">
                
            </form>
            
            <br>
            <label for="observaciones">Observaciones</label>
            <br>
            <textarea
                name="observaciones"
                id="obsevaciones"
                cols="50"
                rows="5"
                placeholder="Tu opinion es importante para nosotros"></textarea>
        </form>
        <!--
            Login : 
            nombre.
            password.
            selector desplegable idioma.
            check box: recuerdame.
        -->
<%@ include file="/includes/pie.jsp" %>