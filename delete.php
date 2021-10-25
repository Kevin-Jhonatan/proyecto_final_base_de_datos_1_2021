<?php
    include ("db.php");
    if (isset($_GET['codigo'])){    
        $codigo = $_GET['codigo'];
        
        $delete = "DELETE FROM EMPLEADO WHERE codigo = $codigo";

        if (mysqli_query($conn, $delete)){
            $_SESSION['message'] = 'Registro borrado exitosamente!! :-)';
            $_SESSION['message_type'] = 'danger';
            header('Location:reporte_empleado.php');
        }else{
            echo "Error al borrar registro: " . mysqli_error($conn);
        }
    }
?>