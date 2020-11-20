<?php

session_start();

require_once("models/noticias.php");
require_once("models/usuarios.php");


$captura=new noticias();
if(!empty($_SESSION["usuario"])){
  $captura->changeEstado();
}
if(!empty($datos=$captura->getNoticias())){
	$datos=$captura->getNoticias();
	$sotad=array_reverse($captura->getNoticias());
}
$capturaUsuarios=new usuarios();
$datoslogueo=$capturaUsuarios->getUsuarios();


$capturaAsideTop=new noticias();
if(!empty($_SESSION["usuario"])){
$capturaAsideTop->changeEstado();
	}
$datosAsideTop=($capturaAsideTop->getNoticias());
function storey_sort($var2, $var1) {
   return $var1["valoracion"] - $var2["valoracion"];
}
usort($datosAsideTop,"storey_sort");



require_once("views/inicio.phtml");


?>