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
    <title>Editar | Empleado</title>
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
        if(isset($_GET['codigo'])){ #Determina si una variable está definida y no es NULL / isset
            $codigo = $_GET['codigo'];

            $query = "SELECT codigo, nombre, apellido, ci, cargo, num_celular, fecha_inicio_contrato, fecha_finalizacion_contrato, correo, direccion, genero  FROM EMPLEADO WHERE codigo='$codigo'";
            $result = mysqli_query($conn, $query);
            if(mysqli_num_rows($result) == 1){
                $row = mysqli_fetch_array($result);
                $codigo = $row['codigo'];
                $cargo = $row['cargo'];
                $nombre = $row['nombre'];
                $apellido = $row['apellido'];
                $ci = $row['ci'];
                $celular = $row['num_celular'];
                $correo = $row['correo'];
                $direccion = $row['direccion'];
                $sexo = $row['genero'];
                $fecha_inicio = $row['fecha_inicio_contrato'];
                $fecha_fin = $row['fecha_finalizacion_contrato'];
            }
        }
        if(isset($_POST['actualizar'])){
            $codigo = $_POST['codigo'];
            $cargo = $_POST['cargo'];
            $nombre = $_POST['nombre'];
            $apellido = $_POST['apellido'];
            $ci = $_POST['ci'];
            $celular = $_POST['celular'];
            $correo = $_POST['correo'];
            $direccion = $_POST['direccion'];
            $sexo = $_POST['sexo'];
            $fecha_inicio = $_POST['inicio'];
            $fecha_fin = $_POST['fin'];

            $update = "UPDATE EMPLEADO set codigo='$codigo', nombre = '$nombre', apellido='$apellido', ci='$ci', cargo='$cargo', num_celular='$celular', fecha_inicio_contrato='$fecha_inicio', fecha_finalizacion_contrato='$fecha_fin', correo='$correo', direccion='$direccion', genero='$sexo'
                WHERE codigo = '$codigo'";
            mysqli_query($conn, $update);
            $_SESSION['message'] = 'Registro actualizado exitosamente!! :-)';
            $_SESSION['message_type'] = 'info';
            header('Location:reporte_empleado.php');
        }
    ?>
    <div class="form-group">
        <center><h1 class="titulo"><b>EDITAR EMPLEADO</b></h1></center>
        <div class="container"><br><br><br>
            <div class="form-control"><br>
                <form action="update.php?codigo=<?php echo $_GET['codigo'];?>" onsubmit="return validarform()" method="POST" name="formulario">
                    <div class="row">
                        <div class="col">
                            <span>Código de empleado:</span>
                            <input type="number" min="0" id="codigo" name="codigo" value="<?php echo($codigo)?>" class="form-control" maxlength="20" placeholder="Ingrese código del empleado" required>
                        </div>
                        <div class="col">
                            <span>Cargo:</span>
                            <input type="text" id="cargo" name="cargo" class="form-control"value="<?php echo($cargo)?>" maxlength="20" placeholder="Ingrese cargo del empleado" required>
                        </div>
                        <div class="col">
                            <span>Nombre:</span>
                            <input type="text" id="nombre" name="nombre" class="form-control" value="<?php echo($nombre)?>" maxlength="30" placeholder="Ingrese su nombre" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Apellido:</span>
                            <input type="text"  id="apellido" name="apellido"class="form-control" value="<?php echo($apellido)?>" maxlength="30" placeholder="Ingrese su apellido" required>
                        </div>
                        <div class="col">
                            <span>Ci/Nit</span>
                            <input type="text" id="ci" name="ci" class="form-control" maxlength="10" value="<?php echo($ci)?>" placeholder="Ingrese su número de carnet o nit" required>
                        </div>
                        <div class="col">
                            <span>Celular/Teléfono:</span>
                            <input type="number" id="celular"  autocomplete="off"name="celular" min="0" class="form-control" value="<?php echo($celular)?>" placeholder="Ingrese su número de celular o teléfono" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Correo Electrónico:</span>
                            <input type="email" id="correo" name="correo" class="form-control" maxlength="40" value="<?php echo($correo)?>" placeholder="Ingrese su correo electrónico"required>
                        </div>
                        <div class="col">
                            <span>Dirección:</span>
                            <input type="text" id="direccion" name="direccion" class="form-control" maxlength="50" value="<?php echo($direccion)?>" placeholder="Ingrese su dirección" required>
                        </div>
                        <div class="col">
                            <span>Sexo:</span>
                            <input type="text" id="sexo" name="sexo" class="form-control" maxlength="15" value="<?php echo($sexo)?>" placeholder="Ingrese su sexo" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Fecha de inicio de contrato:</span>
                            <input type="date" id="inicio" name="inicio" value="<?php echo($fecha_inicio)?>"class="form-control" min="2021-10-10" required>
                        </div>
                        <div class="col">
                            <span>Fecha de final de contrato:</span>
                            <input type="date" id="fin" name="fin" class="form-control" value="<?php echo($fecha_fin)?>" min="2021-10-10" required>
                        </div>
                    </div><br>
                    <center><input type="submit" class="btn btn-success btn-block" value="Actualizar" id="actualizar" name="actualizar">
                    <input type="button" class="btn btn-success btn-block" onclick="location.href='http://karmaland.cochasoft.com/reporte_empleado.php';"value="Atrás">
                    <input type="button" class="btn btn-success btn-block" id="main" onclick="location.href='http://karmaland.cochasof.com/user.php';" value="Volver al menú" /></center>
                </form>
            </div>
        </div>
    </div>
</body>
</html>