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
    <title>Registro | Empleados</title>
</head>
<body>
    <div class="form-group">
        <center><h1 class="titulo"><b>REGISTRAR EMPLEADO</b></h1></center>
        <div class="container"><br><br><br>
            <div class="form-control"><br>
                <form action="registrar_empleado.php" method="POST" name="formulario" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col">
                            <span>Código de empleado:</span>
                            <input type="number" min="0" id="codigo" name="codigo" class="form-control" maxlength="20" placeholder="Ingrese código del empleado" required>
                        </div>
                        <div class="col">
                            <span>Cargo:</span>
                            <input type="text" id="cargo" name="cargo" class="form-control" maxlength="20" placeholder="Ingrese cargo del empleado" required>
                        </div>
                        <div class="col">
                            <span>Nombre:</span>
                            <input type="text" id="nombre" name="nombre" class="form-control" maxlength="30" placeholder="Ingrese su nombre" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Apellido:</span>
                            <input type="text"  id="apellido" name="apellido"class="form-control" maxlength="30" placeholder="Ingrese su apellido" required>
                        </div>
                        <div class="col">
                            <span>Ci/Nit</span>
                            <input type="text" id="ci" name="ci" class="form-control" maxlength="10" placeholder="Ingrese su número de carnet o nit" required>
                        </div>
                        <div class="col">
                            <span>Celular/Teléfono:</span>
                            <input type="number" id="celular" name="celular" min="0" class="form-control" placeholder="Ingrese su número de celular o teléfono" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Correo Electrónico:</span>
                            <input type="email" id="correo" name="correo" class="form-control" maxlength="40" placeholder="Ingrese su correo electrónico"required>
                        </div>
                        <div class="col">
                            <span>Dirección:</span>
                            <input type="text" id="direccion" name="direccion" class="form-control" maxlength="50" placeholder="Ingrese su dirección" required>
                        </div>
                        <div class="col">
                            <span>Sexo:</span>
                            <input type="text" id="sexo" name="sexo" class="form-control" maxlength="15" placeholder="Ingrese su sexo" required>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col">
                            <span>Fecha de inicio de contrato:</span>
                            <input type="date" id="inicio" name="inicio" class="form-control" min="2021-10-10" required>
                        </div>
                        <div class="col">
                            <span>Fecha de final de contrato:</span>
                            <input type="date" id="fin" name="fin" class="form-control" min="2021-10-10" required>
                        </div>
                    </div><br>
                    <center><input type="submit" class="btn btn-success btn-block" value="Registrar" id="registrar" name="registrar">
                    <input type="reset" class="btn btn-success btn-block" value="Limpiar">
                    <input type="button" class="btn btn-success btn-block" onclick="location.href='http://karmaland.cochasoft.com/user.php';" value="Volver al menú" /></center>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
<?php
    include ("db.php");
    if (isset($_POST['registrar'])) {
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

        /* $insertar = "INSERT INTO empleado (codigo, cargo, nombre, apellido, ci, celular, correo, direccion, sexo, fecha_inicio, fecha_fin)
         VALUES ('$codigo', '$cargo', '$nombre', '$apellido', '$ci', '$celular', '$correo', '$direccion', '$sexo', '$fecha_inicio', '$fecha_fin')"; */

        $insertar = "INSERT INTO EMPLEADO (codigo, nombre, apellido, ci, cargo, num_celular, fecha_inicio_contrato, fecha_finalizacion_contrato, correo, direccion, genero)
        VALUES('$codigo', '$nombre', '$apellido', '$ci', '$cargo', '$celular', '$fecha_inicio', '$fecha_fin', '$correo', '$direccion', '$sexo')";

        if (mysqli_query($conn, $insertar)) {
            $_SESSION['message'] = '<b><h2>Registro guardado exitosamente!! :-)</h2></b> ';
            $_SESSION['message_type'] = 'success';
            header('Location:index.php');
        }else{
            echo '<script language="javascript">alert("El código de empleado ya existe!! intentelo nuevamente ;-(");</script>'. mysqli_error($conn);
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