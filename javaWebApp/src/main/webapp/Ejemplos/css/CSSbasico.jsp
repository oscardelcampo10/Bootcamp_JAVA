<%String titulo = "CSSbasico";%>
<%@ include file="/includes/cabecera.jsp" %>



<%@ include file="/includes/navegacion.jsp" %>
    <body>

        <style>
            /* aqui tambien se podria insertr codigo CSS
      si escribes dos condiciones del mismo nivel ejecutara la ultima
      las condicionessobre Id prevalecen ante las de class y las de class ante las demas
      y la sentencia (!important) prevalece ante todas
      !importan>id>class>style*/

            p {
                color: #600D00;
            }
            .textoRojo {
                color: red;
            }
            body{
                padding-left: 10px;
            }
            img{width: 50px;
            height: 50px;}
            h2,h3{color: #600D00;}
        </style>
        <h1>CSS BASICO</h1>
        <hr>
        <h2>Ejemplo de especifidad de los CSS. inpeccionar con las herramientas de
            desarrollador para ver los parrafos.</h2>
        <br>
        <p style="color: red; font-size: 20px;">Esto es un texto con un estilo EN LINEA color rojo tmaño 20px.</p>
        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quidem, iste est.
            Porro, quibusdam aliquam? Eligendi consequuntur expedita, a autem officiis
            accusantium sed tempora reprehenderit porro doloremque, pariatur velit dicta
            dolorum.</p>
        <p class="textoRojo">
            ESTE TEXTO TIENE UNA CLASE QUE LE DA EL COLOR ROJO p.textorojo .Dolore facilis
            qui tempore aliquam vero atque labore asperiores sed dignissimos ullam, maiores
            illo placeat repellendus hic eaque rerum exercitationem consequatur distinctio,
            nihil accusamus! Porro, sed perferendis. Voluptatibus, atque sequi.</p>
        <p>Maiores ipsum soluta ipsam alias, saepe ratione optio laborum omnis, aliquid,
            impedit expedita earum facilis non iste accusamus veniam neque rem aut. Quasi
            omnis animi vel aperiam quisquam, saepe hic.</p>
        <p>Tenetur et deleniti eos, ipsa quibusdam totam accusamus magnam rem laboriosam
            fugit architecto qui ex vitae recusandae eaque fugiat vel magni. Sapiente optio
            dolorem tenetur fugit voluptates non voluptatum veritatis.</p>
        <p>Necessitatibus laudantium qui sapiente aspernatur ut explicabo vitae maiores
            cum ab ducimus eius dolore, quam quae a rem exercitationem repellendus voluptate
            esse vel dolores laboriosam, velit voluptatem aliquam! Aliquid, necessitatibus.</p>
        <br>
        <br>
        <hr>
        <section class="enlaces">
                <h3>Tipos de enlaces</h3><br>
                <ol>
                    <il>
                            <p>Enlace a una pagina web.</p>
                        <span>
                            <img
                                class="iconotel"
                                src="images/w3school.png"
                                alt="icono telefono">
                            <a target="_blank"
                                href="https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table_intro">W3cSchools.com</a>
                        </span>
                    </il>
                    <il>
                        <span>
                            <p>Enlace a una llamada de telefono.</p>
                            <img
                                class="iconotel"
                                src="images/iconoTel.png"
                                alt="icono telefono">
                            <a href="tel:+13174562564">317-456-2564 </a>
                        </span>
                    </il>
                    <il>
                        <span><p>Enlace a un email.</p>
                            <img
                                class="iconotel"
                                src="images/arrobaimage.png"
                                alt="icono arroba">
                            <a target="_blank"
                                href="mailto:someone@example.com">Esto es un enlace a una cuenta de email.</a>
                        </span>
                    </il>
                </ol>
            </section>
        <hr>
        <h2>Tipos de selectores</h2><br>
        <p>En este vídeo puedes ver los tipos de selectores, identificadores, clases y
            pseudoclases:Videotutorial. Este video esta integrado en la pagina con un iframe.
        </p><br>
        <iframe
            width="560"
            height="315"
            src="https://www.youtube.com/embed/ARaU6uGOa_k"
            frameborder="0"
            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen="allowfullscreen"></iframe>
        <br/>
        <br>
        <h2>Selector descendente A B</h2>
        <div class="container">
            <p>Vamos a dar solo un estilo para estos parrafos que estan dentro de container<code>div.container</code>
            </p>
            <p>Lorem ipsum
                <span>esto es un span dentro de un parrafo qeu esta dentro del div.container</span>
                adipisicing elit. Eos sint accusantium ipsam eius perferendis voluptatum
                consequatur ullam natus praesentium impedit dignissimos corporis ab aut possimus
                eaque, nihil quo distinctio unde!</p>
            <p class="especial">Esto es un PARRAFO de CLASS ESPECIAL.
                <span class="especial">Y esto es un SPAN CLASS ESPECIAL DENTRO DE UN PARRAFO.
                </span>fugiat beatae iste officia eum iusto quaerat dolore nihil rerum possimus
                quos mollitia, quo at sequi aliquid dolorum perspiciatis vitae maxime quibusdam
                enim veritatis. Maxime, blanditiis minus!</p>
        </div>

        

<%@ include file="/includes/pie.jsp" %>