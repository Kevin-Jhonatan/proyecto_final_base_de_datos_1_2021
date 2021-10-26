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
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" href="icono/phone.svg">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css">
    <title>Karmaland | Iniciar sesion</title>
</head>
<body>
    <center><h1 class="titulo"><b>INICIO DE SESIÓN</b></h1></center>
    <div class="form-group">
      <div class="container">
        <div class="animate__animated animate__backInLeft">
        <form action="index.php" class="formulario" method="POST">
            <h1 class="animate__animated animate__backInLeft">KARMALAND</h1>
            <span>Usuario</span>
            <input type="text" class="form-control" name="usuario" placeholder="Ingrese nombre de usuario">
            <span>Contraseña</span>
            <input type="password" class="form-control" name="contraseña" placeholder="Ingrese contraseña de usuario">
            <input type="submit"class="btn btn-primary" value="Ingresar">
        </form> 
        </div>
      </div>
    </div>
</body>
</html>
<?php
include("db.php");
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];
session_start();
$_SESSION['usuario']=$usuario;

$consulta="SELECT * FROM EMPLEADO where nombre='$usuario' and codigo='$contraseña'";
$resultado=mysqli_query($conn,$consulta);

$filas=mysqli_num_rows($resultado);
if($filas) {
  header("location:user.php");
} else{
    ?>
    <?php
    //include("index.php");
  ?>
     <?php
 
}
mysqli_free_result($resultado);
mysqli_close($conn);