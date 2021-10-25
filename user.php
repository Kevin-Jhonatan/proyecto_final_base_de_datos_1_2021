<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="icono/phone.svg">
    <title>Karmaland | Celulares 100% Garantizados</title>
</head>
<body>
    <center><h1 class="titulo"><b>BIENVENIDO A LA TIENDA DE CELULARES KARMALAND</b></h1></center><br><br><br><br><br>
    <div class="form-group">
      <div class="container"><br><br><br><br><br>
        <div class="form-group">
          <center><button class="btn btn-primary"id="btnn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">EMPLEADO</button></center>
          <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-body">
              <center><button class="btn btn-primary"onclick="window.location.href='/registrar_empleado.php'">Agregar empleado</button></center>
              <center><button class="btn btn-primary"onclick="window.location.href='/reporte_empleado.php'">Reporte de empleados</button></center>
            </div>
          </div>
        </div>
        <div class="form-group">
          <center><button class="btn btn-primary"id="btnn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">VENTA</button></center>
          <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
            <div class="accordion-body">
              <center><button class="btn btn-primary"onclick="window.location.href='/registrar_venta.php'">Agregar venta</button></center>
              <center><button class="btn btn-primary"onclick="window.location.href='/reporte_venta.php'">Reporte de ventas</button></center>
            </div>
          </div>
        </div>
        <div class="form-group">
          <center><button class="btn btn-primary"id="btnn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">PRODUCTO</button></center>
          <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
            <div class="accordion-body">
              <center><button class="btn btn-primary"onclick="window.location.href='/registrar_producto.php'">Agregar producto</button></center>
              <center><button class="btn btn-primary"onclick="window.location.href='/reporte_producto.php'">Reporte de productos</button></center>
            </div>
          </div>
        </div>
        <div class="form-group">
          <center><button class="btn btn-primary"id="btnn" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">FACTURA</button></center>
          <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
            <div class="accordion-body">
              <center><button class="btn btn-primary"onclick="window.location.href='/registrar_factura.php'">Agregar factura</button></center>
              <center><button class="btn btn-primary"onclick="window.location.href='/reporte_factura.php'">Reporte de facturas</button></center>
            </div>
          </div>
          <center><button class="btn btn-primary" id="bt" onclick="window.location.href='/index.php'">Cerrar sesión</button></center>
        </div>
      </div>
    </div>
</body>
</html>