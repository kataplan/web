<?php

	class contactos{
 		private $conectar;
 		private $db;
 		private $arregloContactos;
 		
 		public function __construct(){
 			$this->conectar=new Conectar();
 			$this->db=$this->conectar->conexion();
 			$this->arregloContactos=array();
 		}

 		public function getContactos(){
 			$consulta=$this->db->query("select * from contacto");
 		
 			while($fila=$consulta->fetch_assoc()){
 				$this->arregloContactos[]=$fila;

 			}
 			return $this->arregloContactos;
		}
		public function crearComentario($datos){
			$sql="insert into contacto(nombre,email,comentario)values('".$datos[1]."','".$datos[2]."','".$datos[3]."')";
			$consulta=$this->db->query($sql);
			return $consulta;

		}

	}

?>