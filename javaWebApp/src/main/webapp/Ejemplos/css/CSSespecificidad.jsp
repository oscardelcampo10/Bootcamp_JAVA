<%String titulo = "Prueba Imcludes";%>
<%@ include file="/includes/cabecera.jsp" %>
<%@ include file="/includes/navegacion.jsp" %>


        <style>
            main p {
                /*Especificidad de 1 punto*/
                background: crimson;
            }
            .par {
                /*Especificidad de 10 puntos*/
                background: pink;
            }
            p.par {
                /*Especificidad de 11 puntos*/
                background: rgb(134, 81, 0);
            }
            #parr {
                /*Especificidad de 100 puntos*/
                background: orange;
            }
            p#parr {
                /*Especificidad de 101 puntos*/
                background: red;
            }
            p.par#parr {
                /*Especificidad de 111 puntos*/
                background: green;
            }
            span{
                color: rgb(19, 214, 1);
            }
            p span{
                color: yellow;
                font-weight: 400;
            }
            .codigo{
                background-color: rosybrown;
            }
        </style>
        <h1>CSS ESPECIFICIDAD</h1>

        <p>El fondo de este párrafo será color carmesí por que es un parrafo simple sin clases ni id.Especificidad de 1 punto.<span>soy span un dentor de un p</span></p>
        <div class="par">Este div tendrá el fondo de color rosa.Por que es de la class .par .Especificidad de 10 puntos. <span>soy span un dentor de un div</span></div>
        <p class="par">El fondo de este párrafo será color marron porque es un parrafod de class par p.par . Especificidad de 11 puntos.</p>
        <p id="parr" class="par">El fondo de este párrafo será de color verde. este parrafo es de ID=parr(#parr) y class=par(.par). Especificidad de 111 puntos</p>
        <p id="parr" style="background: rgb(0, 0, 0); color: aliceblue;">El fondo de este párrafo será negro y letras blancas porque hemos puesto un ESTILO EN LINEA.prevalece sobre todo lo demas</p>
        <p id="parr">El fondo de este párrafo será rojo por que tiene el ID=parr(#parr) Especificidad de 101 puntos</p>
        <div class="codigo">
            <h3>Codigo CSS</h3>
            <pre>
                        p {
                            /*Especificidad de 1 punto*/
                            background: crimson;
                        }
                        .par {
                            /*Especificidad de 10 puntos*/
                            background: pink;
                        }
                        p.par {
                            /*Especificidad de 11 puntos*/
                            background: rgb(134, 81, 0);
                        }
                        #parr {
                            /*Especificidad de 100 puntos*/
                            background: orange;
                        }
                        p#parr {
                            /*Especificidad de 101 puntos*/
                            background: red;
                        }
                        p.par#parr {
                            /*Especificidad de 111 puntos*/
                            background: green;
                        }
                        span{
                            color: rgb(19, 214, 1);
                        }
                        p span{
                            color: rebeccapurple;
                            font-weight: 400;
                        }
            </pre>
        </div>
        
        


<%@ include file="/includes/pie.jsp" %>