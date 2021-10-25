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
  <title>Registro | Producto</title>
</head>
<body>
  <div class="form-group">
    <center><h1 class="titulo">REGISTRAR PRODUCTO</h1></center>
    <div class="container"><br><br><br>
        <div class="form-control"><br>
            <form action="registrar_producto.php" method="POST" name="formulario" enctype="multipart/form-data">
            <div class="row">
                <div class="col">
                    <span>Código:</span>
                    <input type="number" min="0" id="codigo" name="codigo" class="form-control" maxlength="20" placeholder="Ingrese código del producto" required>
                </div>
                <div class="col">
                    <span>Nombre:</span>
                    <input type="text" id="nombre" name="nombre" class="form-control" maxlength="20" placeholder="Ingrese nombre del tipo de producto" required>
                </div>
                <div class="col">
                    <span>Marca:</span>
                    <input type="text" id="marca" name="marca" class="form-control" maxlength="30" placeholder="Ingrese su marca" required>
                </div>
            </div><br>
            <div class="row">
                <div class="col">
                    <span>Modelo:</span>
                    <input type="text"  id="modelo" name="modelo"class="form-control" maxlength="30" placeholder="Ingrese su modelo" required>
                </div>
                <div class="col">
                    <span>Descripción</span>
                    <input type="text" id="descripcion" name="descripcion" class="form-control" maxlength="10" placeholder="Ingrese su descripción" required>
                </div>
                <div class="col">
                    <span>Precio:</span>
                    <input type="number" id="precio" name="precio" min="0"  step="0.01" class="form-control" placeholder="Ingrese su precio" required>
                </div>
            </div><br>
            <div class="row">
                <div class="col">
                    <span>Garantía:</span>
                    <input type="text" id="garantia" name="garantia" class="form-control" maxlength="40" placeholder="Ingrese si tiene garantía"required>
                </div>
                <div class="col">
                    <span>Gama:</span>
                    <input type="text" id="gama" name="gama" class="form-control" maxlength="50" placeholder="Ingrese la gama" required>
                </div>
            </div><br>
            <div class="row">
                    <div class="col">
                    <span>Código de accesorio:</span>
                    <input type="text" id="accesorio" name="accesorio" class="form-control" maxlength="15" placeholder="Ingrese su código de accesorio existente" required>
                </div>
                <div class="col">
                    <span>Código de proveedor</span>
                    <input type="text" id="proveedor" name="proveedor" class="form-control" maxlength="15" placeholder="Ingrese su código de proveedor existente" required>
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
    $nombre = $_POST['nombre'];
    $marca = $_POST['marca'];
    $modelo = $_POST['modelo'];
    $descripcion = $_POST['descripcion'];
    $precio = $_POST['precio'];
    $garantia = $_POST['garantia'];
    $gama = $_POST['gama'];
    $accesorio = $_POST['accesorio'];
    $proveedor = $_POST['proveedor'];

    /* insert into PRODUCTO (codigo, nombre, marca, modelo, descripcion, precio, garantia, gama,
    ACCESORIO_codigo, PROVEEDOR_codigo)
    values (11, 'celular', 'nokia', 'nk900', 'hola', '10', 'si', 'ba', 11, 11); */

    $insertar = "INSERT INTO PRODUCTO (codigo, nombre, marca, modelo, descripcion, precio, garantia, gama,
    ACCESORIO_codigo, PROVEEDOR_codigo) VALUES ('$codigo', '$nombre', '$marca', '$modelo', '$descripcion', '$precio', '$garantia', '$gama', '$accesorio', '$proveedor')";

    if (mysqli_query($conn, $insertar)) {
        $_SESSION['message'] = '<b><h2>Registro guardado exitosamente!! :-)</h2></b> ';
        $_SESSION['message_type'] = 'success';
        header('Location:index.php');
        //echo '<script language="javascript">alert("Se registro correctamente!! :-)");</script>';
    }else{
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