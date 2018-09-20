<!DOCTYPE html>
<%@page import="com.formacion.ipartek.clases.Articulo" %>
<%@page import="com.formacion.ipartek.dao.ArticuloArrayDao" %>
<%@page import="com.formacion.ipartek.controladores.registroProductoServlet" %>

<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Listado productos</title>

  <link rel="stylesheet" href="css/bootstrap.min.css" />

  <script src="js/jquery-1.12.4.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Piero's supermarket</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.jsp">Inicio</a></li>
      <li><a href="login.jsp">Login</a></li>
      <li><a href="formulario.jsp">Formulario</a></li>
      <li class="active"><a href="listado_productos.jsp">Productos</a></li>
    </ul>
  </div>
</nav>
  <div class="container">
    <div class="row">
      <header>
        <h1>Listado de productos</h1>
      </header>
    </div>
    <div class="row">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <table class="table table-bordered">
    <thead>
      <tr>
        <th>Id</th>
        <th>Nombre</th>
        <th>Marca</th>
        <th>Descripcion</th>
        <th>Imagen</th>
        <th>Precio</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Botella de ginebra</td>
        <td>Beefeater</td>
        <td></td>
        <td><img src="img/imagen.jpg" alt="botella de ginebra" width="120" height="90"></td>
        <td>19,3 €</td>
        <td><a href="formulario.html" class="btn btn-primary">Editar</a><a class="btn btn-danger">Borrar</a></td>
      </tr>
      <tr>
        <td>2</td>
        <td>Botella de ginebra</td>
        <td>Beefeater</td>
        <td></td>
        <td><img src="img/imagen.jpg" alt="botella de ginebra" width="120" height="90"></td>
        <td>19,3 €</td>
        <td><a href="formulario.html" class="btn btn-primary">Editar</a><a class="btn btn-danger">Borrar</a></td>
      </tr>
      <tr>
        <td>3</td>
        <td>Botella de ginebra</td>
        <td>Beefeater</td>
        <td></td>
        <td><img src="img/imagen.jpg" alt="botella de ginebra" width="120" height="90"></td>
        <td>19,3 €</td>
        <td><a  href="formulario.html" class="btn btn-primary">Editar</a><a class="btn btn-danger">Borrar</a></td>
      </tr>
      <tr>
        <td>4</td>
        <td>Botella de ginebra</td>
        <td>Beefeater</td>
        <td></td>
        <td><img src="img/imagen.jpg" alt="botella de ginebra" width="120" height="90"></td>
        <td>19,3 €</td>
        <td><a  href="formulario.html" class="btn btn-primary">Editar</a><a class="btn btn-danger">Borrar</a></td>
      </tr>
      <tr>
        <td>5</td>
        <td>Botella de ginebra</td>
        <td>Beefeater</td>
        <td></td>
        <td><img src="img/imagen.jpg" alt="botella de ginebra" width="120" height="90"></td>
        <td>19,3 €</td>
        <td><a  href="formulario.html" class="btn btn-primary">Editar</a><a class="btn btn-danger">Borrar</a></td>
      </tr>
      <tr>
        <td>6</td>
        <td>Botella de ginebra</td>
        <td>Beefeater</td>
        <td></td>
        <td><img src="img/imagen.jpg" alt="botella de ginebra" width="120" height="90"></td>
        <td>19,3 €</td>
        <td><a href="formulario.html"  class="btn btn-primary">Editar</a><a class="btn btn-danger">Borrar</a></td>
      </tr>
      <tr>
      <% java.util.List<Articulo> articulos = (java.util.List<Articulo>)request.getAttribute("articulos"); %>7
      <% for (Articulo a: articulos){ %>
      	<td>7</td>
      	<td><%= a.getNombre()  %></td>
      	<td><%= a.getMarca() %></td>
      	<td><%= a.getDescripcion() %></td>
      	<td><img src="/img/imagen.jpg" alt="botella de ginebra" width="120" height="90"></td>
      	<td><%= a.getPrecio() %></td>
      </tr>
      <%} %>
    </tbody>
  </table>
    </div>
  </div>
</body>
</html>