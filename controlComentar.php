<?php

session_start();

require_once("models/usuarios.php");
require_once("models/comentario.php");
require_once("models/noticias.php");
$datos=0;
$boton=0;
if(!empty($_GET["id"])){
$id=$_GET["id"];
}else{
	$id=$_POST["id"];
}
$capturanot=new noticias();
if(!empty($arrayNoticias=$capturanot->getNoticias())){
	$arrayNoticias=$capturanot->getNoticias();
	$sotad=array_reverse($capturanot->getNoticias());
}



$consultaC= new comentario;

$consultaN= new noticias;
$noticia=($consultaN->getNoticia($id)[0]);
$valorInicial=$noticia["valoracion"];







if(!empty($_POST["usuario"]) && !empty($_POST["clave"])){
$captura=new usuarios();
$arrayNoticias=$captura->getValidarUsuarios($_POST["usuario"],$_POST["clave"]);
if($arrayNoticias==1){
	$_SESSION["usuario"]=$_POST["usuario"];
}else{
	$datos=2;
}
}

$captura=new comentario();
$insertar=false;
if(!empty($_GET["action"])){
	if($_GET["action"]=="crear"){
		 $newComentario=array();
	     $newComentario[1]=$_SESSION["usuario"];
	     $newComentario[2]=$_POST["comentarios"];
	     $newComentario[3]=$noticia["id"];
		$insertar=$captura->crearComentario($newComentario);
		
	}
}
if(!empty($_GET["action"])){
	if($_GET["action"]=="calificar"){
		$boton=1;
		$consultaNCali= new noticias();
		$noticiaEditar=($consultaNCali->getNoticia($_POST["id"])[0]);
		$arrayEditar=array();
		$arrayEditar[0]=$_POST["id"];
		$arrayEditar[1]=$_POST["nombredato"];
		echo $consultaNCali->actualizarCalificacion($arrayEditar);		
	}
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



$comentarios=$consultaC->getComentarios($id);




if(empty($_SESSION["usuario"])){
require_once("views/comentarios.phtml");
}else{
$datos=1;
require_once("views/comentarios.phtml");
}


?>