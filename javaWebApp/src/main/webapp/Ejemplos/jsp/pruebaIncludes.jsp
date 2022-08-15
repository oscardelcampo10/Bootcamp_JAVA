<%String titulo = "Prueba Imcludes";%>
<%@ include file="/includes/cabecera.jsp" %>



<%@ include file="/includes/navegacion.jsp" %>
<main>

		<style>
            footer {
                padding: 20px;
                border-bottom: 0;
                width: 100%;
                height: 60;
                background-color: rgb(6, 6, 87);
                color: white;
                position: fixed;
                bottom: 0;
            }
            main {
                margin-bottom: 50px;
            }
            nav {
                position: sticky;
                top: 0;
            }
        </style>

        <div class="parallax">
            <h1>Prueba Tecnica INDEX</h1>
            <br><br><br><br><br>
            <h3 class="voluntario">Voluntario para leer :<spam id="nombre">InnerHTML es esto</spam>
            </h3>
            <h2>Tabla Alumn@s:</h2>
            <a
                target="_blank"
                href="https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table_intro">W3cSchools.com</a>
        </div>

        <nav>
            <a href="Ejemplos/css/animaciones.html">Animaciones</a>
            <a href="Ejemplos/css/CSSbasico.html">CSSbasico</a>
            <a href="Ejemplos/css/CSSespecificidad.html">CSSespecificidad</a>
            <a href="Ejemplos/css/CSSAvanzados.html">CSSavanzado</a>
            <a href="Ejemplos/html/box-model.html">Visualizacion</a>
            <a href="/pruebatecnica/Ejemplos/html/posicionamiento.html">Posicionamiento</a>
            <a href="/pruebatecnica/Ejemplos/html/formularios.html">Formularios</a>
            <a href="https://caniuse.com/">caniuse.com</a>
            <a href="/pruebatecnica/Ejemplos/js/game.html">Arkanoid Game</a>
        </nav>

        <button onclick="busarVoluntario()">¿Quien lee?</button>
        <main>
            <div class="texto" style="border: 1px solid gray;">
                <table id="ipartek" class="tabla border">
                    <caption>Tabla Alumnos</caption>
                    <tr class="d0">
                        <th>Nombre</th>
                        <th>Apellido</th>
                    </tr>
                    <tr class="d1">
                        <td>Joseba</td>
                        <td>Merino</td>
                    </tr>
                    <tr class="d0">
                        <td>Raul</td>
                        <td>Castro</td>
                    </tr>
                    <tr class="d1">
                        <td>Cristian</td>
                        <td>nada</td>
                    </tr>
                    <tr class="d0">
                        <td>Alejandrp</td>
                        <td>Rodriguez</td>
                    </tr>
                    <tr class="d1">
                        <td>Aitor</td>
                        <td>Valencia</td>
                    </tr>
                    <tr class="d0">
                        <td>Ana</td>
                        <td>Diaz</td>
                    </tr>
                    <tr class="d1">
                        <td>Andres</td>
                        <td>Fernandez</td>
                    </tr>
                    <tr class="d0">
                        <td>Endika</td>
                        <td>zuazo</td>
                    </tr>
                    <tr class="d1">
                        <td>Erlantz</td>
                        <td>caballo</td>
                    </tr>
                    <tr class="d0">
                        <td>iker</td>
                        <td>Pedrejon</td>
                    </tr>
                    <tr class="d1">
                        <td>Iñigo</td>
                        <td>Hernandez</td>
                    </tr>
                    <tr class="d0">
                        <td>JuanCarlos</td>
                        <td>nada</td>
                    </tr>
                    <tr class="d1">
                        <td>Kiryl</td>
                        <td>Carpintero</td>
                    </tr>
                    <tr class="d0">
                        <td>Maria</td>
                        <td>Taryfa</td>
                    </tr>
                    <tr class="d1">
                        <td>Mikel</td>
                        <td>Bua</td>
                    </tr>
                    <tr class="d0">
                        <td colspan="2">Ander</td>
                    </tr>
                </table>
            </div>

            <div class="parallax"></div>

            <div class="texto">
                <p>
                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Hic vel quidem omnis
                    consequatur ipsum quaerat ipsam ratione labore dolor molestiae sint quod, nulla
                    perspiciatis suscipit ducimus placeat commodi facilis dolore?
                </p>
            </div>

            <div class="parallax"></div>
            <!-- table#ipartek.tabla_border>tr*9>td*2 :Esto crera una tabla con el
            ID="ipartek" y de la class="tabla_border" de 9 filas y 2 columnas-->

            <!--javascrip al final del body para primero cargen los css despues el html y
            por ultimo javascrip-->
            <script src="/js/main.js"></script>
</main>
<%@ include file="/includes/pie.jsp" %>