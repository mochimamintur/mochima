<?php
class Conexion extends PDO{

   private static $host='localhost';
   private static $bd= 'mochima';
   private static $password='ismael123';
   private static $user='getionador';
   private static $port=5432;
   protected $conexion;
   public $repconexion;
   public $errorconexion;


   public function __construct()
   {
      try{
         $this->conexion= parent:: __construct("pgsql:host=". self::$host.";port=".self::$port .";dbname=".self::$bd .";user=".self::$user .";password=".self::$password);
         $this->repconexion=true;
         $this->errorconexion=false;
         Conexion::desconectar();

      }catch(PDOException $e){
         $this->errorconexion = '1';
         $this->repconexion=false;
         return $e;
      }
   }

   public function getRepConexion(){
      return $this->repconexion;
   }

   public function getErrorConexion(){
      return $this->errorconexion;
   }

   protected function desconectar()
   {
      $this->conexion=null;
      $this->errorconexion=null;
   }
}
?>
