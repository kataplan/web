<?php
session_start();
require_once("models/admin.php");
require_once("models/noticias.php");
require_once("models/comentario.php");
require_once("models/contactos.php");

$datos=0;
$insertar=false;
$cat=0;
if(!empty($_SESSION)){
	$datos=3;
}
if(!empty($_POST["nombre"]) && !empty($_POST["clave"])){
	$captura=new admin();
	$datos=$captura->getValidarUsuario($_POST["nombre"],$_POST["clave"]);
	if($datos==1 || $datos==3 || $datos==4){
		$_SESSION["nombre"]=$_POST["nombre"];
	}
}
$capturanoticias=new noticias();
$comentarios=array();
$cate=array();
$captura=new admin();
$categorias=$captura->getCategorias();
if(!empty($_GET["action"])){
	if($_GET["action"]=="crear"){
		$consulta=new admin();
		$datos=array();
		$datos[1]=$_POST["titulo"];
		$datos[2]=$_POST["estado"];
		$datos[3]=$_POST["categoria"];
		$datos[4]=$_POST["noticia"];
		$datos[5]=$_POST["autor"];
		$datos[6]=date("d/m/Y");
		$insertar=$capturanoticias->crearNoticia($datos);
		$datos=3;
		require_once("views/admin.phtml");

	}
	if($_GET["action"]=="Leer"){
		$CRUD="Leer";
		$arreglonoticias=$capturanoticias->getTodasNoticias();
		require_once("views/CRUD.phtml");
	}
	if($_GET["action"]=="modificar"){
		$CRUD="Modificar";
		$idnoti=$_POST["id"];
		$noti=$capturanoticias->getNoticiaid($idnoti);
		$categorias=$capturanoticias->getCategorias($noti["categoria"]);
		require_once("views/CRUD.phtml");
	}
	if($_GET["action"]=="Eliminar"){
		$CRUD="Leer";
		$ide="id";
		$idnoticia=$_POST["id"];
		$noticia=$capturanoticias->eliminarNoticia($idnoticia,$ide);
		unset($arreglonoticias);
		$arreglonoticias=$capturanoticias->getTodasNoticias();
		require_once("views/CRUD.phtml");
	}
	if($_GET["action"]=="cerrar"){
		$_SESSION=array();
		$datos=0;
		require_once("views/admin.phtml");
	}
	if($_GET["action"]=="entrar"){
		require_once("views/admin.phtml");
	}
	if($_GET["action"]=="enviar"){
		$data=array();
		$data[1]=$_POST["titulo"];
		$data[2]=$_POST["estado"];
		$data[3]=$_POST["categoria"];
		$data[4]=$_POST["noticia"];
		$data[5]=$_POST["autor"];
		$data[6]=date("d/m/Y");
		$capturanoticias->modificarNoticia($data,$_POST["id"]);
		$CRUD="Leer";
		unset($arreglonoticias);
		$arreglonoticias=$capturanoticias->getTodasNoticias();
		require_once("views/CRUD.phtml");
	}
	if($_GET["action"]=="crearCate"){
		$CRUD="crearCategoria";
		$data=array();
		$data[1]=$_POST["nuevacategoria"];
		$capturanoticias->crearCategoria($data);
		$cat=1;
		require_once("views/CRUD.phtml");
	}
	if($_GET["action"]=="crearCategoria"){
		$CRUD="crearCategoria";
		require_once("views/CRUD.phtml");
	}
	if($_GET["action"]=="leerCategoria"){
		
		require_once("views/ListarCategorias.phtml");
	}
	if($_GET["action"]=="comentarios"){
		$CRUD="comentarios";
		$capturacomentarios=new comentario();
		$comentarios=$capturacomentarios->getComentarios($_POST["id"]);
		require_once("views/CRUD.phtml");
	}

	if($_GET["action"]=="eliminarcomentario"){
		$CRUD="Leer";
		$capturacomentarios=new comentario();
		$capturacomentarios->eliminarComentario($_POST["id"]);
		$arreglonoticias=$capturanoticias->getTodasNoticias();
		require_once("views/CRUD.phtml");
	}
	if($_GET["action"]=="listarContactos"){
		$CRUD="listarContactos";
		$capturacontacto=new contactos();
		$contactos=$capturacontacto->getContactos();
		require_once("views/CRUD.phtml");
	}
	if($_GET["action"]=="registrarse"){
		$CRUD="registrarse";
		require_once("views/CRUD.phtml");
	}
	if($_GET["action"]=="registrar"){
		if(!empty($_POST["nombre"]) && !empty($_POST["clave"])){
			$captura=new admin();
			$datos=$captura->getValidarUsuario($_POST["nombre"],$_POST["clave"]);
			if($datos==2){
				$captura->agregarUsuario($_POST["nombre"],$_POST["clave"]);
				$_SESSION["nombre"]=$_POST["nombre"];
				$datos=4;
			}
		}

		require_once("views/admin.phtml");
	}
}else{
	
	require_once("views/admin.phtml");
}		

?>