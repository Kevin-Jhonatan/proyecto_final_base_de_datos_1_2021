<?php
    include ("db.php");
    if (isset($_GET['codigo'])){    
        $codigo = $_GET['codigo'];
        
        $delete = "DELETE FROM VENTA WHERE codigo = $codigo";

        if (mysqli_query($conn, $delete)){
            $_SESSION['message'] = 'Registro borrado exitosamente!! :-)';
            $_SESSION['message_type'] = 'danger';
            header('Location:reporte_venta.php');
        }else{
            echo "Error al borrar registro: " . mysqli_error($conn);
        }
    }
?>