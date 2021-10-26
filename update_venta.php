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
    <title>Editar | Venta</title>
    <script>
        function validarform() {
            var x = document.forms["form"]["codigo"].value;
            if (x == "") {
                alert("El campo de id no puede ir vacio");
                return false;
            }
        }
    </script>
</head>
<body>
    <?php
        include("db.php");
        if(isset($_GET['codigo'])) { 
            $codigo = $_GET['codigo'];

            $query = "SELECT codigo, fecha, monto_cobrado, cantidad_producto, EMPLEADO_codigo, CLIENTE_ci, codigo_PRODUCTO FROM VENTA where codigo='$codigo'";
            $result = mysqli_query($conn, $query);
            if(mysqli_num_rows($result) == 1){
                $row = mysqli_fetch_array($result);
                $codigo = $row['codigo'];
                $fecha = $row['fecha'];
                $monto = $row['monto_cobrado'];
                $cantidad = $row['cantidad_producto'];
                $empleado = $row['EMPLEADO_codigo'];
                $cliente = $row['CLIENTE_ci'];
                $prod = $row['codigo_PRODUCTO'];
            }
        }
        if(isset($_POST['actualizar'])){
            $codigo = $_POST['codigo'];
            $fecha = $_POST['fecha'];
            $monto = $_POST['monto'];
            $cantidad = $_POST['cantidad'];
            $empleado = $_POST['empleado'];
            $cliente = $_POST['cliente'];
            $prod = $_POST['prod'];

            $update = "UPDATE VENTA set codigo='$codigo', fecha='$fecha', monto_cobrado='$monto', cantidad_producto='$cantidad', EMPLEADO_codigo='$empleado', CLIENTE_ci='$cliente', codigo_PRODUCTO='$prod'
                WHERE codigo = '$codigo'";
            mysqli_query($conn, $update);
            $_SESSION['message'] = 'Registro actualizado exitosamente!! :-)';
            $_SESSION['message_type'] = 'info';
            header('Location:reporte_venta.php');
        }
    ?>
    <div class="form-group">
        <center><h1 class="titulo"><b>EDITAR VENTA</b></h1></center>
        <div class="container"><br><br><br>
            <div class="form-control"><br>
                <form action="update_venta.php?codigo=<?php echo $_GET['codigo'];?>" onsubmit="return validarform()" method="POST" name="formulario">
                    <div class="row">
                        <div class="col">
                            <span>Código:</span>
                            <input type="number" min="0" value="<?php echo($codigo)?>" id="codigo" name="codigo" class="form-control" placeholder="Ingrese código de venta" required>
                        </div>
                        <div class="col">
                            <span>Fecha:</span>
                            <input type="date" min="2021-10-10" value="<?php echo($fecha)?>" required id="fecha" name="fecha" class="form-control" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Monto cobrado:</span>
                            <input type="number"  id="monto" value="<?php echo($monto)?>" name="monto"class="form-control" step="0.01"  min="0" placeholder="Ingrese monto cobrado ej: 1999.99" required>
                        </div>
                        <div class="col">
                            <span>Cantidad de producto:</span>
                            <input type="number" id="cantidad" value="<?php echo($cantidad)?>" name="cantidad" min="0" class="form-control" placeholder="Ingrese la cantidad de producto ej: 10" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Código de empleado:</span>
                            <input type="number" id="empleado" value="<?php echo($empleado)?>" name="empleado" class="form-control" placeholder="Ingrese código de empleado"required>
                        </div>
                        <div class="col">
                            <span>Cédula de identidad de cliente:</span>
                            <input type="number" id="cliente" name="cliente" value="<?php echo($cliente)?>"class="form-control" placeholder="Ingrese cédula de identidad del cliente" required>
                        </div>
                        <div class="col">
                            <span>Código de producto:</span>
                            <input type="number" id="prod" name="prod"  value="<?php echo($prod)?>" class="form-control" placeholder="Ingrese código del producto" required>
                        </div>
                    </div><br>
                    <center><input type="submit" class="btn btn-success btn-block" value="Actualizar" id="actualizar" name="actualizar">
                    <input type="button" class="btn btn-success btn-block" onclick="location.href='http://karmaland.cochasoft.com/reporte_venta.php';"value="Atrás">
                    <input type="button" class="btn btn-success btn-block" id="main" onclick="location.href='http://karmaland.cochasoft.com/user.php';" value="Volver al menú" /></center>
                </form>
            </div>
        </div>
    </div>
</body>
</html>