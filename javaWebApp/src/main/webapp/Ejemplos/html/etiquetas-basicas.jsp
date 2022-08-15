
<!DOCTYPE html> <!--Si el doctype es corto y simple esto significa que es HTML5-->
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

  
    <title>Titulo pruebatecnica</title>

    <!-- la base para construir todas las rutas de esta pagina, en este caso desde a raiz '/' -->
    <base href="/helloweb/">
    <!-- la base para construir todas las rutas de esta pagina, en este caso desde a raiz '/'-->
    <!--CSS-->
    <link rel="stylesheet" href="Ejemplos/html/style.css">
    <!--CSS-->
</head>
<body>
<%@ include file="/includes/navegacion.jsp" %>
<div id="top"></diV>
<header>
  <div class="parallax">
    <h1>Ejercicios de prueba</h1>
  </div>

  <section class="enlaces">
      <span>
          <img class="iconotel" src="/helloweb/images/iconW3.jpg" alt="icono telefono">
        <a target="_blank" href="https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table_intro" >W3cSchools.com</a>
      </span>
      
      <span>
        <img class="iconotel" src="/helloweb/images/iconoTel.png" alt="icono telefono">
        <a href="tel:+13174562564">317-456-2564</a>
      </span>

      <span>
          <img class="iconotel" src="/helloweb/images/iconW3.jpg" alt="icono telefono">
        <a target="_blank" href="https://www.w3schools.com/html/tryit.asp?filename=tryhtml_table_intro" >W3cSchools.com</a>
      </span>
  </section>
  
</header>
<div>
  <img src"" alt="">
</div>
<hr>






<!--   table#ipartek.tabla_border>tr*9>td*2   :Esto crera una tabla con el ID="ipartek" y de la class="tabla_border" de 9 filas y 2 columnas-->

    <!--javascrip al final del body para primero cargen los css despues el html y por ultimo javascrip-->
        <script src="js/main.js">
        
        </script>
<%@ include file="/includes/pie.jsp" %>