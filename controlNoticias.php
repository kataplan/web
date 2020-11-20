<?php
session_start();
require_once("models/noticias.php");

function storey_sort($var2, $var1) {
   return $var1["valoracion"] - $var2["valoracion"];
}





$categoria=$_GET["cat"];


if($categoria=="todos"){
	$captura=new noticias();
	if(!empty($_SESSION["usuario"])){
  		$captura->changeEstado();
	}
	$datos=($captura->getNoticias());
}else{
	if($categoria=="Valoracion"){
		$captura=new noticias();
		if(!empty($_SESSION["usuario"])){
  			$captura->changeEstado();
		}
		$datos=($captura->getNoticias());
		usort($datos,"storey_sort");
	}else{
		if($categoria=="Autor"){
			$autor=$_GET["autor"];
			$captura=new noticias();
			if(!empty($_SESSION["usuario"])){
  				$captura->changeEstado();
			}
			$datos=$captura->getNoticiaAutor($autor);
			}else{
				$captura=new noticias();
				if(!empty($_SESSION["usuario"])){
  				$captura->changeEstado();
				}
				$datos=$captura->getNoticiaCategoria($categoria);
			

	}
}

}
$capturaAside=new noticias();
if(!empty($_SESSION["usuario"])){
  $capturaAside->changeEstado();
}
if(!empty($datosAside=$capturaAside->getNoticias())){
	$datosAside=$capturaAside->getNoticias();
	$sotadAside=array_reverse($capturaAside->getNoticias());
}


$capturaAsideTop=new noticias();
if(!empty($_SESSION["usuario"])){
$capturaAsideTop->changeEstado();
	}
$datosAsideTop=($capturaAsideTop->getNoticias());
usort($datosAsideTop,"storey_sort");





require_once("views/noticias.phtml");


?>