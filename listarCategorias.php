<?php
	require_once('../db/db.php');
	require_once('../models/admin.php');
	require_once('../models/noticias.php');

	$conectar=new admin();
	$datos=$conectar->getCategorias();
	echo json_encode($datos); 
?>