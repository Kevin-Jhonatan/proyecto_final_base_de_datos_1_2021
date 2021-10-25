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
    <title>Editar | Producto</title>
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

            $query = "SELECT codigo, nombre, marca, modelo, descripcion, precio, garantia, gama,
            ACCESORIO_codigo, PROVEEDOR_codigo FROM PRODUCTO WHERE codigo='$codigo'";
            $result = mysqli_query($conn, $query);
            if(mysqli_num_rows($result) == 1){
                $row = mysqli_fetch_array($result);
                $codigo = $row['codigo'];
                $nombre = $row['nombre'];
                $marca = $row['marca'];
                $modelo = $row['modelo'];
                $descripcion = $row['descripcion'];
                $precio = $row['precio'];
                $garantia = $row['garantia'];
                $gama = $row['gama'];
                $accesorio = $row['ACCESORIO_codigo'];
                $proveedor = $row['PROVEEDOR_codigo'];
            }
        }
        if(isset($_POST['actualizar'])){
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

            $update = "UPDATE PRODUCTO set codigo='$codigo', nombre='$nombre', marca='$marca', modelo='$modelo', descripcion='$descripcion', precio='$precio', gama='$gama', ACCESORIO_codigo='$accesorio', PROVEEDOR_codigo='$proveedor'
                WHERE codigo = '$codigo'";
            mysqli_query($conn, $update);
            $_SESSION['message'] = 'Registro actualizado exitosamente!! :-)';
            $_SESSION['message_type'] = 'info';
            header('Location:reporte_producto.php');
        }
    ?>
    <div class="form-group">
        <center><h1 class="titulo"><b>EDITAR PRODUCTO</b></h1></center>
        <div class="container"><br><br><br>
            <div class="form-control"><br>
                <form action="update_producto.php?codigo=<?php echo $_GET['codigo'];?>" onsubmit="return validarform()" method="POST" name="formulario">
                    <div class="row">
                        <div class="col">
                            <span>Código de producto:</span>
                            <input type="number" min="0" id="codigo" name="codigo" value="<?php echo($codigo)?>" class="form-control" maxlength="20" placeholder="Ingrese código de producto" required>
                        </div>
                        <div class="col">
                            <span>Nombre:</span>
                            <input type="text" id="nombre" name="nombre" class="form-control"value="<?php echo($nombre)?>" maxlength="30" placeholder="Ingrese nombre del tipo de producto" required>
                        </div>
                        <div class="col">
                            <span>Marca:</span>
                            <input type="text" id="marca" name="marca" class="form-control" value="<?php echo($marca)?>" maxlength="20" placeholder="Ingrese marca" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Modelo:</span>
                            <input type="text"  id="modelo" name="modelo"class="form-control" value="<?php echo($modelo)?>" maxlength="30" placeholder="Ingrese su apellido" required>
                        </div>
                        <div class="col">
                            <span>Descripción:</span>
                            <input type="text" id="descripcion" name="descripcion" class="form-control" maxlength="80" value="<?php echo($descripcion)?>" placeholder="Ingrese su descripcion" required>
                        </div>
                        <div class="col">
                            <span>Precio:</span>
                            <input type="number" id="precio" name="precio" min="0" class="form-control" step="0.01" value="<?php echo($precio)?>" placeholder="Ingrese su precio" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Garantía:</span>
                            <input type="text" id="garantia" name="garantia" class="form-control" value="<?php echo($garantia)?>" maxlength="10" placeholder="Ingrese si tiene garantía"required>
                        </div>
                        <div class="col">
                            <span>Gama:</span>
                            <input type="text" id="gama" name="gama" class="form-control" value="<?php echo($gama)?>" maxlength="12" placeholder="Ingrese la gama" required>
                        </div>
                    </div><br>
                    <div class="row">
                            <div class="col">
                            <span>Código de accesorio:</span>
                            <input type="text" id="accesorio" name="accesorio" class="form-control" value="<?php echo($accesorio)?>" maxlength="15" placeholder="Ingrese su código de accesorio" required>
                        </div>
                        <div class="col">
                            <span>Código de proveedor</span>
                            <input type="text" id="proveedor" name="proveedor" class="form-control" value="<?php echo($proveedor)?>" maxlength="15" placeholder="Ingrese su código de proveedor" required>
                        </div>
                    </div><br>
                    <center><input type="submit" class="btn btn-success btn-block" value="Actualizar" id="actualizar" name="actualizar">
                    <input type="button" class="btn btn-success btn-block" onclick="location.href='http://karmaland.com/reporte_producto.php';"value="Atrás">
                    <input type="button" class="btn btn-success btn-block" id="main" onclick="location.href='http://karmaland.com/user.php';" value="Volver al menú" /></center>
                </form>
            </div>
        </div>
    </div>
</body>
</html>