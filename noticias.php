<?php

	class noticias{
 		private $conectar;
 		private $db;
 		private $arregloNoticias;
 		private $estado;
 		
 		public function __construct(){
 			$this->conectar=new Conectar();
 			$this->db=$this->conectar->conexion();
 			$this->arregloNoticias=array();
 			$this->estado=false;
 		}
 		
 		public function getNoticias(){
 			$consulta=$this->db->query("select * from noticias");
 		
 			while($fila=$consulta->fetch_assoc()){
 				if($this->estado==false){
 					if($fila["estado"]==0){
 					  $this->arregloNoticias[]=$fila;	
 					}
 				}else{
 					if($fila["estado"]==0 || $fila["estado"]==1 ){
 						$this->arregloNoticias[]=$fila;	
 					}
 				}
 				

 			}
 			return $this->arregloNoticias;
		}
		public function getNoticia($id){
 			$consulta=$this->db->query("select * from noticias");
 		
 			while($fila=$consulta->fetch_assoc()){
 				if($fila["id"]==$id)
 				$this->arregloNoticias[]=$fila;
 			}
 			return $this->arregloNoticias;
		}
		public function getNoticiaCategoria($id){
 			$consulta=$this->db->query("select * from noticias");
 		
 			while($fila=$consulta->fetch_assoc()){
 				if($this->estado==false){
 					if($fila["estado"]==0){
 					 if($fila["categoria"]==$id)
 						$this->arregloNoticias[]=$fila;
 					}
 				}else{
 					if($fila["estado"]==0 || $fila["estado"]==1 ){
 						if($fila["categoria"]==$id)
 							$this->arregloNoticias[]=$fila;
 					}
 				}


 				
 			}
 			return $this->arregloNoticias;
		}
		public function getNoticiaAutor($id){
 			$consulta=$this->db->query("select * from noticias");
 		
 			while($fila=$consulta->fetch_assoc()){
 				if($fila["autor"]==$id)
 				$this->arregloNoticias[]=$fila;
 			}
 			return $this->arregloNoticias;
		}
		public function changeEstado(){
			$this->estado=true;
		}

		public function actualizarCalificacion($valor){
		 $this->db->query("UPDATE noticias SET votostotales = votostotales+1 ,sumapuntuacion=sumapuntuacion+$valor[1] WHERE id=$valor[0]");
		  $this->db->query("UPDATE noticias SET valoracion=sumapuntuacion/votostotales WHERE id=$valor[0]");

		
			
		}
		public function getTodasNoticias(){
 			$consulta=$this->db->query("select * from noticias");
 		
 			while($fila=$consulta->fetch_assoc()){
 				$this->arregloNoticias[]=$fila;	
 			}
 			return $this->arregloNoticias;
		}
		public function modificarNoticia($datos,$id){	
			$this->db->query("UPDATE noticias SET titulo='$datos[1]' ,estado=$datos[2] ,categoria='$datos[3]' ,noticia='$datos[4]' ,autor='$datos[5]' ,fecha='$datos[6]' WHERE id=$id");
			
		}
		public function eliminarNoticia($id,$ide){
			$consulta=$this->db->query("DELETE from noticias where $ide=$id");
			return $consulta;
		}
		public function getNoticiaid($id){
 			$consulta=$this->db->query("select * from noticias where id=$id");
 			$fila=$consulta->fetch_assoc();
 			return $fila;
		}
		public function getCategorias($categoria){
 			$consulta=$this->db->query("select * from categorias");
 		
 			while($fila=$consulta->fetch_assoc()){
 				if($fila["categoria"]!=$categoria)
 				$this->arregloContactos[]=$fila;

 			}
 			return $this->arregloContactos;

		}
		public function crearNoticia($datos){
			$sql="insert into noticias(titulo,estado,categoria,noticia,autor,fecha)values('".$datos[1]."',".$datos[2].",'".$datos[3]."','".$datos[4]."','".$datos[5]."','".$datos[6]."')";
			$consulta=$this->db->query($sql);
			return $consulta;
		}
		public function crearCategoria($datos){
			$sql="insert into categorias(categoria)values('$datos[1]')";
			$consulta=$this->db->query($sql);
			return $consulta;
		}
		public function eliminarCategoria($id){
			$consulta=$this->db->query("DELETE from categorias where id=$id");
			return $consulta;
		}
		public function getCategoriaID($id){
			$consulta=$this->db->query("select * from categorias where id=$id");
			$fila=$consulta->fetch_assoc();
			return $fila;
		}
		
	}

?>