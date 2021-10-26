<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMh   +IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="css/style.css">
  <link rel="shortcut icon" href="icono/phone.svg">
  <title>Registro | Venta</title>
</head>
<body>
  <div class="form-group">
    <center><h1 class="titulo">REGISTRAR VENTA</h1></center>
    <div class="container"><br><br><br>
        <div class="form-control"><br>
            <form action="registrar_venta.php" method="POST" name="formulario" enctype="multipart/form-data">
                <div class="row">
                    <div class="col">
                        <span>Código:</span>
                        <input type="number" min="0" id="codigo" name="codigo" class="form-control" placeholder="Ingrese código de venta" required>
                    </div>
                    <div class="col">
                        <span>Fecha:</span>
                        <input type="date" min="2021-10-10" required id="fecha" name="fecha" class="form-control" required>
                    </div>
                </div><br>
                <div class="row">
                    <div class="col">
                        <span>Monto cobrado:</span>
                        <input type="number"  id="monto" name="monto"class="form-control" step="0.01"  min="0" placeholder="Ingrese monto cobrado ej: 1999.99" required>
                    </div>
                    <div class="col">
                        <span>Cantidad de producto:</span>
                        <input type="number" id="cantidad" name="cantidad" min="0" class="form-control" placeholder="Ingrese la cantidad de producto ej: 10" required>
                    </div>
                </div><br>
                <div class="row">
                    <div class="col">
                        <span>Código de empleado:</span>
                        <input type="number" id="empleado" name="empleado" class="form-control" placeholder="Ingrese código de empleado"required>
                    </div>
                    <div class="col">
                        <span>Cédula de identidad de cliente:</span>
                        <input type="number" id="cliente" name="cliente" class="form-control" placeholder="Ingrese cédula de identidad del cliente" required>
                    </div> 
                    <div class="col">
                        <span>Código de producto:</span>
                        <input type="number" id="prod" name="prod" class="form-control" placeholder="Ingrese código del producto" required>
                    </div>
                </div><br>
            <center><input type="submit" class="btn btn-success btn-block" value="Registrar" id="registro" name="registro">
            <input type="reset" class="btn btn-success btn-block" value="Limpiar">
            <input type="button" class="btn btn-success btn-block" onclick="location.href='http://karmaland.com/user.php';" value="Volver al menú"/></center>
            </form>
        </div>
    </div>
  </div>
</body>
</html>
<?php
  include ("db.php");
  if (isset($_POST['registro'])) {
    $codigo = $_POST['codigo'];
    $fecha = $_POST['fecha'];
    $monto = $_POST['monto'];
    $cantidad = $_POST['cantidad'];
    $empleado = $_POST['empleado'];
    $cliente = $_POST['cliente'];
    $prod = $_POST['prod'];


    $insertar = "INSERT INTO VENTA (codigo, fecha, cantidad_producto, EMPLEADO_codigo, CLIENTE_ci, codigo_PRODUCTO, monto_cobrado)
    VALUES ($codigo, '$fecha', $cantidad, $empleado, $cliente, $prod, $monto)";

    if (mysqli_query($conn, $insertar)) {
        $_SESSION['message'] = '<b><h2>Registro guardado exitosamente!! :-)</h2></b> ';
        $_SESSION['message_type'] = 'success';
        header('Location:registrar_venta.php');
        echo '<script language="javascript">alert("Se registro correctamente!! :-)");</script>';
    } else {
        echo '<script language="javascript">alert("El código de producto ya existe!! intentelo nuevamente ;-(");</script>'. mysqli_error($conn);
    }    
  }
  if(isset($_SESSION['message'])){?>
    <div class="alert alert-<?= $_SESSION['message_type']?> alert-dismissible fade show" role="alert">
        <?=  $_SESSION['message']?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <?php session_unset(); 
  }
?>