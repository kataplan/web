var tamanyo=16;
var activo=1;

function cambiarTexto(valor){       
       //DOM
     tamanyo=tamanyo+valor;
     //cuerpo=document.getElementsByTagName('body')[0];
     //cuerpo.style.fontSize=tamanyo;
     $("body").css("font-size",tamanyo);
     console.log(tamanyo);
}

function cambiarfondo(){
	if(activo){
	 $("body").css("background-color","black");
	 $("body").css("color","white");
	 $("aside").css("background-color","black");
	 $("section").css("background-color","black");
	 $("header#cabecera").css("background-color","black");
	 $("div#onoff").css("background-color","black");


	 activo=0;

	}else{
	  $("body").css("background-color","white");
	  $("body").css("color","black");
	  $("aside").css("background-color","#99FF99");
	  $("section").css("background-color","#B5B8B1");
	  $("header#cabecera").css("background-color","#FDFD96");
	   $("div#onoff").css("background-color","#FDFD96");
	  activo=1;
	}
}



//cargar el document DOM 
$(document).ready(function(){
	$("#mas").click(function(){

		cambiarTexto(1);
	  
	});


    $("#menos").click(function(){

		cambiarTexto(-1);
	  
	});

	 $("#tiempo").click(function(){

		cambiarfondo();
	  
	});


	 $('#formulario').submit(function(){
         validar();
	 });
})