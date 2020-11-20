<?php

	class usuarios{
		private $conectar;
 		private $db;
 		private $arregloUsuarios;
 		private $estado; // estadi:0 no se ha logueado, 1:Esta en la bd , 2:Datos incorrectos
 		
 		public function __construct(){
 			$this->conectar=new Conectar();
 			$this->db=$this->conectar->conexion();
 			$this->arregloUsuarios=array();
 			$this->estado=0;
 		}

 		public function getUsuarios(){
 			$consulta=$this->db->query("select * from usuarios");
 		
 			while($fila=$consulta->fetch_assoc()){
 				$this->arregloUsuarios[]=$fila;

 			}
 			return $this->arregloUsuarios;
 		}
 		public function getValidarUsuarios($usuario,$clave){
 			$consulta=$this->db->query("select * from usuarios where nombre='$usuario' and clave='$clave'");
 			if($consulta->num_rows==1)
 				$this->estado=1;
 			else
 				$this->estado=2;

 			return $this->estado;
 		}


	}



?>