<?php
	require_once('../db/db.php');
	require_once('../models/admin.php');
	require_once('../models/noticias.php');

	if($_SERVER['REQUEST_METHOD']== 'POST' && empty($_POST))
		$_POST= json_decode(file_get_contents('php://input'),true);
	$captura=new noticias();
	if($_POST["op"]=="delete"){
		$datos=$captura->eliminarCategoria($_POST["id"]);
		
	}
	$conectar=new admin();
	$datos=$conectar->getCategorias();
	echo json_encode($datos);
?>