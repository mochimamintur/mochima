<?php


$estados=sitiosController::listarController($funcion="listar-estados");
$tipos=sitiosController::listarController($funcion="listar-tipos");

/*$sitios=sitiosController::listarController($funcion="listar-sitios");*/
$sitios=sitiosController::listarFoticosController();
if (isset($_REQUEST["function"])=="get-ciudades") {
    sitiosController::listarCiudades($funcion="listar-ciudad");
    exit();
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Mochima | Explorar</title>
  <!-- Para poder usar acentos , Ñ, entre otros -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Para que sea compatible con todos los navegadores -->
  <meta http-equiv="x-ua-compatible" content="ie-edge">

   <?php require_once 'include/css.php'; ?>
   <link rel="stylesheet" type="text/css" href="src/css/buscar.css">
  <link rel="stylesheet" type="text/css" href="src/css/bootstrap.min.css">
    <!--     Iconos     -->
  <script src="src/js/all.min.js"></script>

  <style>
    .item{
      width: 25%;
      margin-bottom: 0.5rem;
    }

    .card{
      margin-right: 1rem;
      margin-left: 1rem;
      margin-bottom: 1rem;
      box-shadow: 0 0 1px rgba(0,0,0,.125), 0 1px 3px rgba(0,0,0,.2);
      border-radius: 5px;
    }
    
    .mapa{
      background-image: url(src/img/Captura.png);
      background-size: cover;
      height: 93vh;
    }

    .filtro{
      background-color: 
    }
  </style>

</head>
<body>
<header class="barra">
   <div class="row pt-2 mr-1">
      <div class="col-2 offset-1">
         <a href="index.php">
            <img class="pt-1" src="src/img/logo-m.png" alt="logo" height="30">
         </a>
      </div>
      <div class="col-4 mt-1">
          <form action=""  class="filtro-name" id="filtro-name">
         <div class="input-group input-group-sm ancho-i" >
            <div class="input-group-prepend ">
             <span class="input-group-text bg-white "><i class="ni ni-pin-3 text-secondary"></i></span>
          </div>
            <input type="text" class="form-control input-sm" name="filtro">
            <span class="input-group-append">
            <button type="submit" class="btn color-azul btn-info"><i class="color-blanco ni ni-spaceship"></i></button>
            </span>
         </div>   
          </form>
      </div>
      <div class="col-5">
         <nav class="pt-1 pr-4">
             <ul class="menu d-flex flex-row  justify-content-end">
               <li><a href="index.php" class="text-white">Inicio</a></li>
                <li><a class="text-white" href="?action=explorer">Explorar</a></li>
              <?php if (isset($_SESSION["validar"])): ?>
                <li><a class="text-white" href="?action=misitio">Mis sitios</a></li>
              <?php endif; ?>
              <?php if (!isset($_SESSION["validar"])&&!isset($_SESSION["validarA"])): ?>
                <li><a class="text-white" href="#" data-toggle="modal" data-target="#modal-2">Ingresar</a></li>
                <li><a class="text-white" href="#" data-toggle="modal" data-target="#modal">Registro</a></li>
              <?php endif; ?>
              <?php if (isset($_SESSION["validarA"])): ?>
                <li><a class="text-white" href="?action=dashboard">Panel</a></li>
              <?php endif; ?>
                <li><a class="text-white" href="?action=salir">Salir</a></li>
             </ul>
         </nav>
      </div>
   </div>
</header>

<div class="container-fluid">
  <div class="row">
    <div class="col-12">
      <div class="row filtro pt-2" id="filtros">
        <div class="col-3 offset-1">
          <div class="form-group">
            <label for="exampleFormControlSelect1">Estados</label>
            <select class="form-control form-control-sm estados" name="estado_crear" id="exampleFormControlSelect1" >
              <option selected value="*"> Todos los estados </option>
              <?php foreach($estados as $item): ?>      
                <option value="<?php echo $item["id_estado"]; ?>"><?php echo $item["nombre_estado"]; ?></option>      
              <?php endforeach ?>
            </select>
          </div>
        </div>
        <div class="col-3">
          <div class="form-group">
            <label for="exampleFormControlSelect1">Ciudades</label>
            <select class="form-control form-control-sm ciudades" name="ciudades_crear" id="exampleFormControlSelect1">
              <option selected  value="*"> Todas las ciudades </option>
            </select>
          </div>
        </div>
        <div class="col-3">
          <div class="form-group">
            <label for="exampleFormControlSelect1">Tipo de sitios</label>
            <select class="form-control form-control-sm tipos" id="exampleFormControlSelect1" name="tipo_sitio">
              <option selected value="*"> Todos los tipos </option>
              <?php foreach($tipos as $item): ?>      
                <option value="<?php echo $item["id_tipo"]; ?>"><?php echo $item["nombre_tipo"]; ?></option>    
              <?php endforeach ?>            
            </select>
          </div>
        </div>
      </div>
      <div class="row mt-3" id="sitios-container">

        <?php foreach ($sitios as $s): ?>
          <div class="col-3 item item-sitio"  style="height: 300px;" >
            <span class="nombre_sitio" style="display: none;"><?= $s->nombre_sitio ?></span>
            <span class="id_sitio" style="display: none;"> <?=$s->id_sitio ?></span>
            <span class="direccion_sitio" style="display: none;"><?= $s->direccion_sitio ?></span>
            <span class="estado_sitio" style="display: none;"> <?= $s->estado_id ?></span>
            <span class="ciudad_sitio" style="display: none;"><?= $s->ciudad_id ?></span>
            <span class="tipo_sitio" style="display: none;"><?= $s->tipo_id ?></span>
            <span class="descripcion_sitio" style="display: none;"><?= $s->descripcion ?></span>
            <!-- 
            <b class="nombre_sitio"><?= $s->nombre_sitio ?></b> -->
            <div class="card card-default">
<!--               
<img class="" src="src/img/hot1.jpg" alt="" height="170" >
 -->              <img class="" src="<?= !is_null($s->imagenes[0]->url) ? $s->imagenes[0]->url : 'src/img/hot1.jpg' ?>" alt="" height="170" >
              <div>
                <h5 class="text-center">
                  <b ><a href="?action=sitio&sitio=<?=$s->id_sitio ?>"><?= $s->nombre_sitio ?></a></b>
                </h5>
                <h5 class="text-center text-info">
                  <?php if ($s->tipo_id=="1" ): ?>
                    <span style="font-size: 15px;"><i class="ni ni-istanbul"></i></span>
                  <?php endif ?>
                  <?php if ($s->tipo_id=="2" ): ?>
                    <span style="font-size: 15px;"><i class="ni ni-pin-3"></i></span>
                  <?php endif ?>
                  <?php if ($s->tipo_id=="3" ): ?>
                    <span style="font-size: 15px;"><i class="ni ni-spaceship"></i>    </span>
                  <?php endif ?> 
                  <span style="font-size: 15px;">
                      <?= $s->nombre_tipo ?>
                  </span>
              </h5>
                <div class="d-flex justify-content-around">
                  <span><b><?= $s->nombre_estado ?></b></span>
                  <span><b><?= $s->nombre_ciudad ?></b></span>
                </div>
              </div>
            </div>
          </div>
        <?php endforeach ?>
      </div>
    </div>
  </div>
</div>
 



<!-- Llamando a los archivos js, desde la carpeta -->
<script src="src/js/jquery-3.4.1.min.js"></script>
<script src="src/js/popper.min.js"></script>
<script src="src/js/bootstrap.min.js"></script>
<script src="src/js/all.min.js"></script>
<script src="src/js/ajax/ajax-explorar.js"></script>

</body>
</html>
