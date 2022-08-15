<%String titulo = "CSSAvanzados";%>
<%@ include file="/includes/cabecera.jsp" %>



<%@ include file="/includes/navegacion.jsp" %>
        <style>
            p {
                margin: 0 20px;
            }

            dl {
                margin: 0 20px;
            }
            p {
                margin: 10px 20px;
            }
            p > span {
                color: blue;
            }
            h1,h2,h3,h4,h5,h6 {
                margin: 10px 20px 0px;
            }
            h5 {
                color: green;
            }
            h4 + h5 {
                color: red;
            }
            section{
                border: 1px solid rgb(65, 64, 64);
                padding: 10px;
                background-color: rgb(177, 169, 169);
                margin-bottom: 90px;
            }
        </style>
        <h1>Selectores Avanzados pseudoselectores</h1>
        <p>A parte de de los selectores basicos hay selectores con un poco mas de
            complegidad. En este caso veresmos esos selctores.</p>
        <dl>
            <dt>Selector :</dt>
            <dl>Los selectores definen sobre qué elementos se aplicará un conjunto de reglas
                CSS.</dl>
            <dt>PseudoSelector :
            </dt>
            <dl>Una pseudoclase CSS es una palabra clave que se añade a los selectores y que
                especifica un estado especial del elemento seleccionado. Por ejemplo, :hover
                aplicará un estilo cuando el usuario haga hover sobre el elemento especificado
                por el selector.</dl>
        </dl>
        <p>Ademas veremos Pseudoselectores.</p>
        <section>
            <h2>CSS Selectores Avanzado</h2>

            <h3>Selector de hijos</h3>
            <p>Se trata de un selector similar al selector descendente, pero muy diferente
                en su funcionamiento. Se utiliza para seleccionar un elemento que es hijo
                directo de otro elemento y se indica mediante el "signo de mayor que" (>):</p>
            <pre>
                    <code>
                        p > span {
                            color: blue; }
                    </code>
                </pre>
            <p>Soy el hijo<span>
                    span
                </span>de un parrafo. y<span>
                    yo tambien.</span></p>

            <h3>Selector adyacente</h3>
            <p>El selector adyacente se emplea para seleccionar elementos que en el código
                HTML de la página se encuentran justo a continuación de otros elementos. Su
                sintaxis emplea el signo + para separar los dos elementos:</p>
            <pre>
                <code>
                    h5 { color: green; }
                    h4 + h5 { color: red }
                </code>
            </pre>

            <h4>Soy un h4.</h4>
            <h5>soy el h5 AYACENTE del h4 anterior.</h5>
            <h5>Yo soy un h5 pero no me afecta este selector</h5>
            <h5>Yo soy otro h5 y tampoco me afecta este selector</h5>

            <h3>Selector de atributos</h3>
        </section>
    <!--Selector de atributos
El último tipo de selectores avanzados lo forman los selectores de atributos, que permiten seleccionar elementos HTML en función de sus atributos y/o valores de esos atributos.

Los cuatro tipos de selectores de atributos son:

[nombre_atributo], selecciona los elementos que tienen establecido el atributo llamado nombre_atributo, independientemente de su valor.
[nombre_atributo=valor], selecciona los elementos que tienen establecido un atributo llamado nombre_atributo con un valor igual a valor.
[nombre_atributo~=valor], selecciona los elementos que tienen establecido un atributo llamado nombre_atributo y al menos uno de los valores del atributo es valor.
[nombre_atributo|=valor], selecciona los elementos que tienen establecido un atributo llamado nombre_atributo y cuyo valor es una serie de palabras separadas con guiones, pero que comienza con valor. Este tipo de selector sólo es útil para los atributos de tipo lang que indican el idioma del contenido del elemento.
A continuación se muestran algunos ejemplos de estos tipos de selectores:

/* Se muestran de color azul todos los enlaces que tengan 
   un atributo "class", independientemente de su valor */
a[class] { color: blue; }
 
/* Se muestran de color azul todos los enlaces que tengan 
   un atributo "class" con el valor "externo" */
a[class="externo"] { color: blue; }
 
/* Se muestran de color azul todos los enlaces que apunten 
   al sitio "http://www.ejemplo.com" */
a[href="http://www.ejemplo.com"] { color: blue; }
 
/* Se muestran de color azul todos los enlaces que tengan 
   un atributo "class" en el que al menos uno de sus valores
   sea "externo" */
a[class~="externo"] { color: blue; }
 
/* Selecciona todos los elementos de la página cuyo atributo
   "lang" sea igual a "en", es decir, todos los elementos en inglés */
*[lang=en] { ... }
 
/* Selecciona todos los elementos de la página cuyo atributo
   "lang" empiece por "es", es decir, "es", "es-ES", "es-AR", etc. */
*[lang|="es"] { color : red }-->

<%@ include file="/includes/pie.jsp" %>