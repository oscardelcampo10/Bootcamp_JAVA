<%String titulo = "Box-Model";%>
<%@ include file="/includes/cabecera.jsp" %>



<%@ include file="/includes/navegacion.jsp" %>
        <style>
            body{
                padding: 25px;
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
            span {
                border: 3px solid red;
                padding: 5px;
            }
            p {
                border: 2px solid teal;
            }
            .box {
                display: inline-block;
                box-sizing: border-box;
                width: 100px;
                height: 100px;

                border: 2px solid purple;
                border-radius: 15%;
                background-color: rebeccapurple;

                color: seashell;
                text-align: center;
                font-size: 5em;
            }
            .box:hover {
                background-color: slategray;
            }
            section{
                border: 1px solid rgb(65, 64, 64);
                margin-bottom: 50px;
                padding: 10px;
                background-color: rgb(177, 169, 169);
                border-radius: 5%;

                -webkit-box-shadow: 15px 20px 29px 0px rgba(0,0,0,0.75);
                -moz-box-shadow: 15px 20px 29px 0px rgba(0,0,0,0.75);
                box-shadow: 15px 20px 29px 0px rgba(0,0,0,0.75);
            }
            h2{
                margin-left: 20px;
            }
            .box-texto{
                display: inline-block;
                height: 100px;
                width: 100px;
                border: 1px solid teal;
            } 

        </style>
        <h1>visualizacion Box-Model</h1>
        <section>
            <h2>Box-Model</h2>
            <p class="prueba">Toda etiqueta HTML tienen una estructura de caja</p>
            
                <h2>Elementos en linea o bloque</h2>
                <p>
                    <code>Display es el atributo para gestionar si es linea o bloque. Existen muchos
                        mas diplays, ejemplo: flexbox.</code>
                </p>
                <p>
                    *trick : usar el inspector para verlo.
                </p>
                <dl>
                    <dt>blcok</dt>
                    <dd>Elemento que ocupa todo el ancho que ocupa su elemento padre.</dd>
                    <dt>Inline</dt>
                    <dd>Elemento que ocupa lo que ocupe su contenido.</dd>
                    <dt>Inline-block</dt>
                    <dd>Es un hibrido entre los anteriores atributos.</dd>
                </dl>
                <p>Lorem
                    <span>soy un span</span>
                    consectetur adipisicing elit. Laboriosam laborum voluptates ad impedit ipsa,
                    corporis eum molestiae repellat assumenda at unde beatae dolor possimus adipisci
                    ipsum id hic ipsam accusamus.</p>
                <div class="box">
                    1
                </div>
                <div class="box">
                    2
                </div>
            </section>
            <section>
                <h2>Visibility</h2>
                <p>Existen dos formasde ocultar elementos de HML </p>
                <p>Usando <code>Visibility</code> . Valores	: visible | hidden | collapse | inherit</p>
                <div class="box">1</div>
                <div class="box" style="visibility: hidden;">2</div>
                <div class="box">3</div>
                
                <p>Usando <code>Dysplay:none;</code> qeu lo esconde y ocupa su sitio</p>
                <div class="box">1</div>
                <div class="box" style="display: none;">2</div>
                <div class="box">3</div>
            </section>
            <section>
                <h2>Overflow</h2>
                <p>Como se muestra en contenido cuando no entra en el contenedor padre (desborde). valores : visible | hidden | scroll | auto | inherit</p>
                <P>Tambien se puede usar <code>overflowX</code>  <code>OverflowY</code></P>
                <div class="box-texto" style="overflow: visible;">
                    <p>VISIBLE ipsum dolor sit amet consectetur adipisicing elit. Recusandae aspernatur possimus eius itaque ut. Unde sint esse itaque quaerat voluptate corrupti architecto quod rerum inventore. Modi, inventore. Rerum, eius maiores.</p>
                </div>
                <div class="box-texto" style="overflow:hidden;">
                    <p>HIDDEN praesentium ad debitis dolorum quae facilis. Optio quae unde eveniet nesciunt minus et odit modi iste natus, fugit ex molestiae necessitatibus, dicta architecto. Odio alias corporis quasi rem modi.</p>
                </div>
                <div class="box-texto" style="overflow:scroll;">
                    <p>SCROLL rem impedit hic eius voluptatem asperiores vero officia excepturi cum aliquam rerum maxime magni esse porro praesentium, sunt commodi maiores accusamus, numquam quod ut. Fugiat quibusdam id porro sit!</p>
                </div>
                <div class="box-texto" style="overflow:auto;">
                    <p>AUTO consectetur nesciunt nihil rem a vero voluptates vitae eum omnis harum accusamus accusantium aperiam corporis nobis deleniti magnam animi possimus, corrupti, illo, necessitatibus veritatis! Minus repellendus temporibus est neque.</p>
                </div>

            </section>
            <section>
                <h2>Z-index</h2>
                <p>Se encarga de la profundida de los elementos cuando se solapan.Deberemos poner las cajas en el mismo valor position</p>
                <div class="box" style="position:relative;top: 5px;left: 151px;background-color: blue;">1</div>
                <div class="box" style="position: relative; top: -6px; left: 20px; background-color:red; z-index: 0;">2</div>
                <div class="box" style="position: relative; z-index: 1;">3</div>
            </section>
        </section>
<%@ include file="/includes/pie.jsp" %>