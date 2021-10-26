<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="icono/phone.svg">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script>
        function validarform() {
            var x = document.forms["form"]["codigo"].value;
            if (x == "") {
                alert("El campo de id no puede ir vacio");
                return false;
            }
        }
    </script>
    <title>Reporte | Venta</title>
</head>
<body>
<div class="form-group">
        <center><h1 class="titulo"><b>REPORTE DE VENTA</b></h1></center>
        <div class="contain">
            <?php include("db.php");
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
            <table class="table table-bordered">
                <thead class="table-dark">
                <?php include("db.php");
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
                    <tr>
                        <th scope="col">Código</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">Monto cobrado</th>
                        <th scope="col">Cantidad de producto</th>
                        <th scope="col">Código de empleado</th>
                        <th scope="col">Cédula de identidad cliente</th>
                        <th scope="col">Código de producto</th>
                        <th scope="col" class="fecha">Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $query = "SELECT * FROM VENTA";
                        $result = mysqli_query($conn, $query);
                        while($row = mysqli_fetch_array($result)) { 
                    ?>
                            <td><?php echo $row['codigo'] ?></td>
                            <td><?php echo $row['fecha'] ?></td>
                            <td><?php echo $row['monto_cobrado']." Bs" ?></td>
                            <td><?php echo $row['cantidad_producto']." Unidad(es)"?></td>
                            <td><?php echo $row['EMPLEADO_codigo'] ?></td>
                            <td><?php echo $row['CLIENTE_ci'] ?></td>
                            <td><?php echo $row['codigo_PRODUCTO'] ?></td>
                            <td>
                                <a href="update_venta.php?codigo=<?php echo $row['codigo']?>" class="btn btn-secondary">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <a href="delete_venta.php?codigo=<?php echo $row['codigo']?>" class="btn btn-danger">
                                    <i class="fa fa-trash"></i>
                                </a>
                                <a href="user.php">Menú</a>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
            <center><input type="button" class="btn btn-success btn-block" id="main" onclick="location.href='http://karmaland.com/user.php';" value="Volver al menú" /></center>
        </div>
    </div>
</body>
</html>