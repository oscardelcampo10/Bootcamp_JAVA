<%String titulo = "Posicionamientos";%>
<%@ include file="/includes/cabecera.jsp" %>



<%@ include file="/includes/navegacion.jsp" %>
    <style>
        body{
            padding: 25px;
        }
        h2{
            margin-left: 10px;
        }
        p {margin-left:  10px;
        }
        table{
            border: 1px solid black;
            margin-bottom: 10px;
        }
        span {
            border: 3px solid red;
            padding: 5px;
        }
        section{
            border: 1px solid rgb(65, 64, 64);
            margin-bottom: 50px;
            padding: 10px;
            background-color: rgb(177, 169, 169);
            border-radius: 1%;

            -webkit-box-shadow: 15px 20px 29px 0px rgba(0,0,0,0.75);
            -moz-box-shadow: 15px 20px 29px 0px rgba(0,0,0,0.75);
            box-shadow: 15px 20px 29px 0px rgba(0,0,0,0.75);
        }
        p.prueba {
            color: teal;
            border: 5px solid green;
            margin: 20px;
            /*para los 4 lados*/
            margin: 20px 40px;
            /*20 ariba-abajo*/
            margin: 20px 40px 50px;
            /*20 ariba 40 a los lados y 50 abajo*/
            margin: 20px 40px 50px 100px;
            /*20 ariiba 40 derecha 50 abajo 100 izquierda*/
            padding: 20px;
        }
        
        .box-esplicacion{
            border: 1px solid teal;
            margin-bottom: 10px;
        } 

    </style>
    <!--
    footer siempre fijo fixed.
    fixed boton de TOP al final de pantalla para que suba con un ancla.posicionar de derecha-izquierda y abajo-arriba
    sticky menu.
    absolut inamgen de coranzon absoluto sobre una imagen.
    -->
    
    <h1>POSICIONAMIENTO</h1>
    <table>
        <tr>
            <td>Propiedad</td>
            <td>position</td>
        </tr>
        <tr>
            <td>Valores</td>
            <td>static | relative | absolute | fixed | inherit</td>
        </tr>
        <tr>
            <td>Se aplica  a :</td>
            <td>TODOS los elementos</td>
        </tr>
        <tr>
            <td>Valor inicial</td>
            <td>static</td>
        </tr>
        <tr>
            <td>Descripcion</td>
            <td>Selecciona el posicionamiento con el que se mostrará el elemento</td>
        </tr>
    </table>
    <section>
        <div class="box-esplicacion">
            <h2>Relativos || relative</h2>
            <p>Posicionamiento relativo: variante del posicionamiento normal que consiste en posicionar una caja según el posicionamiento normal y después desplazarla respecto de su posición original.</p>
        </div>
        <div class="box-esplicacion">
            <h2>Fijo || fixed</h2>
            <p>Posicionamiento fijo: variante del posicionamiento absoluto que convierte una caja en un elemento inamovible, de forma que su posición en la pantalla siempre es la misma independientemente del resto de elementos e independientemente de si el usuario sube o baja la página en la ventana del navegador</p>
        </div>
        <div class="box-esplicacion">
            <h2>Sticky</h2>

        </div>
        <div class="box-esplicacion">
            <h2>Absoluto || Absolut</h2>
            <p>Posicionamiento absoluto: la posición de una caja se establece de forma absoluta respecto de su <b><u>elemento contenedor</u></b> y el resto de elementos de la página ignoran la nueva posición del elemento.</p>
            <p>El primer elemento contenedor que esté posicionado de cualquier forma diferente a position: static se convierte en la referencia que determina la posición de la caja posicionada de forma absoluta.</p>
            <p>acordarse de que sea positio:relative el contenedor par aun objeto position:absolute</p>
            <style>
                .contenedor{
                    position: relative;/*acordarse de que sea positio:relative el contenedor par aun objeto position:absolute*/
                    height: 400px;
                    width: 400px;
                    margin: auto;
                    overflow: hidden;
                    
                }
                .contenttexto h3{
                    text-align: center;
                }
                .absoluto{
                        background: red;
                        border: 1px solid red;
                        border-radius: 50%;
                        padding: 10px;
                        position: absolute;
                        margin: 10px;
                        width: 25px;
                        height: 25px;
                        font-size: 38px;
                        left: 340px;
                        bottom: 339px;
                }
                
                .contenedor .contenttexto{
                    background-color: black;
                    position: absolute;
                    color:white;
                    bottom: -199px;
                    transition-duration: 1s;
                }
                .contenedor:hover .contenttexto{
                    bottom: 0;
                }
            </style>
            
            <div class="contenedor">
                <span class="absoluto" >
                    1
                </span>
                <img src="https://lorempixel.com/g/400/400/">
                
                <div class="contenttexto">
                        <h3>titulo</h3>
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ducimus sed quia tempore facilis nihil architecto quibusdam, aliquid, quaerat quod accusamus modi quas voluptatem ipsam delectus, fugiat explicabo debitis exercitationem expedita?</p>
                </div>
                
            </div>
        </div>
    </section>
<%@ include file="/includes/pie.jsp" %>