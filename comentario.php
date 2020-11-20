<?php

	class comentario{
 		private $conectar;
 		private $db;
 		private $arregloComentarios;
 		
 		public function __construct(){
 			$this->conectar=new Conectar();
 			$this->db=$this->conectar->conexion();
 			$this->arregloComentarios=array();
 		}

 		public function getComentarios($id){
 			$consulta=$this->db->query("select * from comentarios");
 		
 			while($fila=$consulta->fetch_assoc()){
 				if($fila["idcomen"]==$id)
 				$this->arregloComentarios[]=$fila;

 			}
 			return $this->arregloComentarios;
		}
		public function crearComentario($datos){
			$sql="insert into comentarios(autor,comentario,idcomen)values('".$datos[1]."','".$datos[2]."','".$datos[3]."')";
			$consulta=$this->db->query($sql);
			return $consulta;

		}
		public function eliminarComentario($id){
			$consulta=$this->db->query("DELETE from comentarios where id=$id");
			return $consulta;
		}
	}

?>