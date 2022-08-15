


/*
 * Esta funcion nos dejara ver la contraseña que estamos escribiendo para saber
 * si la estamos escribiendo bien. Ademas cambiaremos el texto del boton
 */

// Esta funcion se ejecutara al hacer click. (<etiqueta
// onclick="verTexto()">).
function verTexto() {
	console.trace('click boton ver');
	let iContrasena = document.getElementById('contrasena');// accedemos al
															// elemento(en este
															// caso el boton)
															// con
															// id="contrasena".
	// En este if cambiamos el type de texto a password y viceversa.
	if (iContrasena.type == "text") {
		iContrasena.type = "password";
	} else {
		iContrasena.type = "text";
	}
}

function buscarVoluntario() {
	var alunmos = [ "Joseba", "Raul", "Cristia", "Alejandro", "Iñigo", "Aitor",
			"Ana", "Adres", "Endika", "Erlantz", "Iker", "JuanCarlos", "Kiryl",
			"Maria", "Mikel" ];

	console.trace('click');

	// document.getElementById('nombre').innerHTML =
	// alunmos[(Math.trunc(Math.random()*14))];
	// document.getElementById('nombre').style.color='red';
	do {
		nombreVoluntario = alunmos[(Math.trunc(Math.random() * (alunmos.length)))];
		if (nombreVoluntario != "Mikel") {
			document.getElementById('nombre').innerHTML = nombreVoluntario;
			document.getElementById('nombre').style.color = 'red';
		}
	} while (nombreVoluntario == "nunca");
}




function funcionMenuDesplegable() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
