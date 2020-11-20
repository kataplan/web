<?php
session_start();
require_once("models/contactos.php");
require_once("models/noticias.php");
$captura=new contactos();
$insertar=false;
if(!empty($_GET["action"])){
	if($_GET["action"]=="crear"){
		 $datos=array();
	     $datos[1]=$_POST["nombre"];
	     $datos[2]=$_POST["email"];
	     $datos[3]=$_POST["comentarios"];
		$insertar=$captura->crearComentario($datos);
	}
}
$capturanot=new noticias();
if(!empty($datos=$capturanot->getNoticias())){
	$datos=$capturanot->getNoticias();
	$sotad=array_reverse($capturanot->getNoticias());
}

$capturaAsideTop=new noticias();
if(!empty($_SESSION["usuario"])){
$capturaAsideTop->changeEstado();
	}
$datosAsideTop=($capturaAsideTop->getNoticias());
function storey_sort($var2, $var1) {
   return $var1["valoracion"] - $var2["valoracion"];
}
usort($datosAsideTop,"storey_sort");
$capturaAside=new noticias();
if(!empty($_SESSION["usuario"])){
  $capturaAside->changeEstado();
}
if(!empty($datosAside=$capturaAside->getNoticias())){
	$datosAside=$capturaAside->getNoticias();
	$sotadAside=array_reverse($capturaAside->getNoticias());
}

require_once("views/contacto.phtml");


?>