/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var b= document.getElementById("btn-menu");
b.addEventListener("click",menu);
function menu(e){

var o=document.getElementsByClassName("overlay")[0];
	var s=5;
	
	var evento= e.target;
	if(evento.className=="btn-open"){
			evento.className="btn-close";
			fadeIn(o, s);
	
	//usamos fadeIn y fadeOutpara cambiar la opacidad de los obajetos
	
//usaremos para cambiar la vista del menu
	
		}else if(evento.className=="btn-close"){
			evento.className="btn-open";
			fadeOut(o,s);
			}
	}
	function fadeIn(e,s){
		var i= setInterval(function(){
			e.style.opacity= Number(e.style.opacity)+ 0.2;
			if (e.style.opacity>= 1){
					e.style.opacity=3;
					clearInterval(i);
				}
			},s)
		}
		
		
	function fadeOut(e,s){
		var j= setInterval(function(){
			e.style.opacity=Number(e.style.opacity)-0.2;
			if(e.style.opacity<=0){
				e.style.opacity=0;
				clearInterval(j);
				}
			},s)
		}


