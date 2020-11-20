<?php

	class admin{
 		private $conectar;
 		private $db;
 		private $arregloContactos;
 		private $estado;
 		
 		public function __construct(){
 			$this->conectar=new Conectar();
 			$this->db=$this->conectar->conexion();
 			$this->arregloContactos=array();
 			$this->estado=0;
 		}

 		public function getCategorias(){
 			$consulta=$this->db->query("select * from categorias");
 		
 			while($fila=$consulta->fetch_assoc()){
 				$this->arregloContactos[]=$fila;

 			}
 			return $this->arregloContactos;

		}
		public function getValidarUsuario($nombre,$clave){
			$consulta=$this->db->query("select * from usuarios where nombre='$nombre' and clave='$clave'");
			$idConsulta=$this->db->query("select id from usuarios where nombre='$nombre' and clave='$clave'");
			$id=$idConsulta->fetch_assoc();
			if($consulta->num_rows==1){
				if($id["id"]==2)
					$this->estado=3;
				else
					$this->estado=4; 	
			}else
				$this->estado=2;
			return $this->estado;
		}
		public function agregarUsuario($nombre,$clave){
			$consulta=$this->db->query("insert into usuarios(nombre,clave)values('$nombre','$clave')");
		}
		
		


	}

?>