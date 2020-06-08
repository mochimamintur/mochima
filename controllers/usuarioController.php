<?php
/*REGISTRO DE USUARIO*/

/**
CONTROLADOR ENCARGADO DE LAS FUNCIONES DEL USUARIOS
 */
class UsuarioController
{

   public static function ingresoController()
   {
      if (isset($_POST["usuarioIngreso"]))
      {

         $OUsuario=new UsuarioModel();
         $OUsuario->setUsuario($_POST["usuarioIngreso"]);
         $OUsuario->setPassword($_POST["passwordIngreso"]);

         $respuesta=$OUsuario->ingresoUsuarioModel();

         if ($respuesta==true) {
          
            if ($respuesta["rol"]=="1") {

               $_SESSION["validarA"]=true;
               $_SESSION["id_usuario"]=$respuesta["id_usuario"];
               $_SESSION["nombre_usuario"]=$respuesta["nombre"];

               header("location:index.php?action=dashboard"); 

            } elseif ($respuesta["rol"]=="2") {
               $_SESSION["validar"]=true;
               $_SESSION["id_usuario"]=$respuesta["id_usuario"];
               $_SESSION["nombre_usuario"]=$respuesta["nombre"];
               header("location:index.php?action=misitio");
            }
         } else {
               header("location:index.php?action=inicio");
         }
      }
   }

   public static function listarUsuarios()
   {
      $OUsuario=new UsuarioModel();
      return $OUsuario->listar($funcion="");
   }

   public static function listarUltimosUsuarios()//prueba para listar en el dashboard los ultimos 16 usuarios
   {
      $OUsuario=new UsuarioModel();
      return $OUsuario->listarUltimosUsuarios();
   }

   public static function editarUsuario()
   {
      $OUsuario=new UsuarioModel();
      $OUsuario->setId($_POST["id_usuario"]);
      $respuesta = array("data"=>$OUsuario->consultarUsuario());
      echo json_encode($respuesta);
      
   }

   public static function modificarUsuarios()
   {
      $OUsuario=new UsuarioModel();
      $OUsuario->setId($_POST["id_editar"]);
      $OUsuario->setNombre($_POST["nombre_editar"]);
      $OUsuario->setApellido($_POST["apellido_editar"]);
      $OUsuario->setUsuario($_POST["usuario_editar"]);
      $OUsuario->setDireccion($_POST["direccion_editar"]);
      $OUsuario->setTelefono($_POST["telefono_editar"]);
      $OUsuario->setEmail($_POST["email_editar"]);
      return $OUsuario->modificar();
   }

   public static function eliminarUsuarios()
   {
      $OUsuario=new UsuarioModel();
      $OUsuario->setId($_POST["id-eliminar"]);
      $OUsuario->eliminar();
      header("location:index.php?action=adminusuarios");
   }

   public static function registroUsuario() //ESTE METODO FUNCIONA PARA EL USUARIO PROPIETARIO SOLAMENTE, EL REGISTRO DE TAL USUARIO
   {
      $OUsuario=new UsuarioModel();
      $OUsuario->setNombre($_POST["nombre_crear"]);
      $OUsuario->setApellido($_POST["apellido_crear"]);
      $OUsuario->setEmail($_POST["email_crear"]);
      $OUsuario->setDireccion($_POST["direccion_crear"]);
      $OUsuario->setTelefono($_POST["telefono_crear"]);
      $OUsuario->setUsuario($_POST["usuario_crear"]);
      $OUsuario->setPassword($_POST["password_crear"]);
      $OUsuario->setRol("2");
      $estatus=$OUsuario->crear();
      var_dump($estatus);
//SI EL REGISTRO SE COMPLETA EL MODELO RETORNA UNA TRUE Y AQUI VALIDO SI ES IGUAL A TRUE LE CREO UNA SESION
      if ($estatus==true) {
         session_start();
         $_SESSION["validar"]=true;
         $_SESSION["id_usuario"]=$estatus;
         header("location:index.php?action=misitio");

      }

      return $estatus;
   }

   public static function crearUsuarios() 
   {

      if ($_POST["rol_user"]=="1") {
         $rol="admin";
      } elseif ($_POST["rol_user"]=="2") {
         $rol="propietario";
      }


      $OUsuario=new UsuarioModel();
      $OUsuario->setNombre($_POST["nombre_".$rol]);
      $OUsuario->setApellido($_POST["apellido_".$rol]);
      $OUsuario->setEmail($_POST["email_".$rol]);
      $OUsuario->setDireccion($_POST["direccion_".$rol]);
      $OUsuario->setTelefono($_POST["telefono_".$rol]);
      $OUsuario->setUsuario($_POST["usuario_".$rol]);
      $OUsuario->setPassword($_POST["password_".$rol]);
      $OUsuario->setRol($_POST["rol_user"]);
      $estatus=$OUsuario->crear();
      return $estatus;
   }

   public static function contarUsuarios() //ESTE METODO ES PARA CONTAR LOS USUARIOS PROPIETARIOS
   {
      $OUsuario=new UsuarioModel();
      $OUsuario->setRol("2");
      return $OUsuario->contarUsuarios();  
   }

     public static function generarReporteUsuarios() //ESTE METODO ES PARA CONTAR LOS USUARIOS PROPIETARIOS
   {
      $OUsuario=new UsuarioModel();
      $usuarios = $OUsuario->listar('tusuario');

      require_once "src/dompdf/libreria/vendor/autoload.php"; 
      // instantiate and use the dompdf class
   
      $dompdf = new Dompdf\Dompdf();
      ob_start();
         require_once "views/admin/pdf/reporte_usuarios.php";
      $html = ob_get_clean();
      $dompdf->loadHtml( $html );
      // Render the HTML as PDF
      $dompdf->render();
      // Output the generated PDF to Browser
      
      $dompdf->stream('reporte_usuarios.pdf');
      

   }


} //FIN DE LA CLASE
?>