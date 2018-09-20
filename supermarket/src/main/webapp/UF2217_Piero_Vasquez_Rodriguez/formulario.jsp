<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Formulario</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
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
      <li class="active"><a href="formulario.jsp">Formulario</a></li>
      <li><a href="listado_productos.jsp">Productos</a></li>
    </ul>
  </div>
</nav>
  <div class="container">
    <div class="row">
      <header>
        <h1>Formulario</h1>
      </header>
    </div>
    <div class="row">
      <form action="registroProductoServlet" method="post">
          <legend>Registrar nuevo producto</legend>
          <div class="form-group">
          <label for="nombreproducto">Nombre del producto</label>
          <input type="text" class="form-control" id="producto" placeholder="botella de kas, sandia, melon, manzana, etc...">
        </div>
        <div class="form-group">
          <label for="marca">Marca del producto</label>
          <input type="text" class="form-control" id="marca" placeholder="Nestea, Coca-cola company, etc...">
        </div>
        <div class="form-group">
          <label for="precio">Precio</label>
          <input type="number" class="form-control" id="precio">
        </div>

        <div class="form-group">
          <label for="descripcion">Descripción del producto</label>
          <textarea class="form-control" id="descripcion" rows="3"></textarea>
        </div>
        <div class="form-group">
          <label for="imagensubida">Imagen del producto</label>
          <input type="file" class="form-control-file" id="imagensubida">
        </div>
        <input type="submit" class="btn btn-primary" value="Registrar"/>
      </form>
    </div>
  </div>
</body>
</html>