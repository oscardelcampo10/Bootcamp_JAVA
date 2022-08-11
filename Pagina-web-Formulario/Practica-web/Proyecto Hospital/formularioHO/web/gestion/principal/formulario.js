var registros = [];
function inicializarModulo() {

    //Codigo para implementar el filtro en la tabla
    $("#txtBuscar").on("keyup", function () {
        var value = $(this).val().toLowerCase();
        $("#tbodyRegistros tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });

    getAll();
}

function getAll() {
    //Esta variable contendrá el contenido HTML de la tabla
    var contenido = "";
    $.ajax({
        type: "GET",
        url: "api/preRegistro/getAll"
    })
            .done(function (data) {

                // Revisamos si hubo un error.
                if (data.error != null) {
                    Swal.fire('Error', data.error, 'warning');
                } else {
                    registros = data;
                    // Recorremos el arreglo JSON de productos:
                    for (var i = 0; i < registros.length; i++) {
                        contenido = contenido + '<tr>' +
                                '<td>' + registros[i].id + '</td>' +
                                '<td>' + registros[i].nombre + '</td>' +
                                '<td>' + registros[i].apellidoPaterno + '</td>' +
                                '<td>' + registros[i].apellidoMaterno + '</td>' +
                                '<td>' + registros[i].fechaNacimiento + '</td>' +
                                '<td>' + registros[i].email + '</td>' +
                                '<td>' + registros[i].telefono + '</td>' +
                                '<td>' + registros[i].sexo + '</td>' +
                                '<td>' + registros[i].tipoSangre + '</td>' +
                                '<td>' + registros[i].cantidad + '</td>' +
                                '<td>' + registros[i].codigo + '</td>' +
                                //'<td>' + registros[i].ine + '</td>' +
                                '<td><a onclick="mostrarDetalle(' + registros[i].id + ');" data-bs-toggle="modal" data-bs-target="#divRegistros"><i class="fa fa-eye"></i> </a>' + '</td>' +
                                '</tr>';
                    }

                    // Insertamos el contenido de la tabla dentro de su cuerpo:
                    $('#tbodyRegistros').html(contenido);
                }
            });
}
function buscarPosicionRegistroPorID(id)
{
    //Recorremos el arreglo posicion por posicion
    for (var i = 0; i < registros.length; i++) {
        //Comparamos si el ID del producto en la posicion actual es el mismo que el buscado
        if (registros[i].id === id)
        {
            //Devolvemos la posicion del producto
            return i;
        }
    }
    return -1;
}

function mostrarDetalle(idRegistro) {

    var pos = buscarPosicionRegistroPorID(idRegistro);


    ($('#nombreM').val(registros[pos].nombre));
    ($('#apellidoPM').val(registros[pos].apellidoPaterno));
    ($('#apellidoMM').val(registros[pos].apellidoMaterno));
    ($('#fNaciM').val(registros[pos].fechaNacimiento));
    ($('#emailM').val(registros[pos].email));
    ($('#telefonoM').val(registros[pos].telefono));
    ($('#SexM').val(registros[pos].sexo));
    ($('#tPM').val(registros[pos].tipoSangre));
    ($('#cantidadM').val(registros[pos].cantidad));
    ($('#txtCodigoImagenM').val(registros[pos].ine));
    $('#imgFotoM').prop('src', 'data:image/jpg;base64' + registros[pos].ine);

}

function guardar() {


    var preRegistro = new Object();

    preRegistro.id = 0;
    preRegistro.nombre = ($('#nombre').val());
    preRegistro.apellidoPaterno = ($('#apellidoP').val());
    preRegistro.apellidoMaterno = ($('#apellidoM').val());
    preRegistro.fechaNacimiento = ($('#fNaci').val());
    preRegistro.email = ($('#email').val());
    preRegistro.telefono = ($('#telefono').val());
    preRegistro.sexo = ($('#Sex').val());
    preRegistro.tipoSangre = ($('#tP').val());
    preRegistro.cantidad = ($('#cantidad').val());
    preRegistro.ine = ($('#txtCodigoImagen').val());


    $.ajax({
        type: "POST",
        url: "api/preRegistro/save",
        data: {
            idPreregistro: preRegistro.id,
            nombre: preRegistro.nombre,
            apellidoPaterno: preRegistro.apellidoPaterno,
            apellidoMaterno: preRegistro.apellidoMaterno,
            fechaNacimiento: preRegistro.fechaNacimiento,
            email: preRegistro.email,
            telefono: preRegistro.telefono,
            sexo: preRegistro.sexo,
            tipoSangre: preRegistro.tipoSangre,
            cantidad: preRegistro.cantidad,
            ine: preRegistro.ine
        }
    })
            .done(function (data) {
                console.log(data.idPreregistro + $('#nombre').val() + $('#apellidoP').val() +
                        $('#apellidoM').val() + $('#fNaci').val() + $('#email').val() + $('#telefono').val() +
                        $('#Sex').val() + $('#tP').val() + $('#txtCodigoImagen').val());

                if (data.error != null) {
                    Swal.fire('¡¡¡ Alerta !!!', 'No se ha podido realizar el registro con éxito. Intente nuevamente.', 'warning');
                } else {
                    getAll();
                    Swal.fire('Movimiento realizado', 'Los datos del registro se han guardado correctamente.', 'success');
                }
                limpiarFormulario();
            });

}




function limpiarFormulario() {
    ($('#txtCodigo').val(''));
    ($('#nombre').val(''));
    ($('#apellidoP').val(''));
    ($('#apellidoM').val(''));
    ($('#fNaci').val(''));
    ($('#email').val(''));
    ($('#telefono').val(''));
    ($('#Sex').val(''));
    ($('#tP').val(''));
    ($('#cantidad').val(''));
    ($('#INE').val(''));
}

function cargarFotografia() {

    // Recuperamos el input de tipo File donde se selecciona la foto
    var inputFile = document.getElementById('INE');

    // Revisamos que el usuario haya seleccionado un archivo:
    if (inputFile.files && inputFile.files[0]) {
        // Creamos el objeto que leerá la imagen
        var reader = new FileReader();

        // Agregamos un oyente al lector del archivo para que en cuanto el usuario cargue la imagen,
        // esta se lea y se convierta de forma automatica en una cadena de Base64:
        reader.onload = function (e) {
            var fotoB64 = e.target.result;
            $("#imgFoto").attr("src", fotoB64);
            $("#txtCodigoImagen").val(fotoB64.substring(22, fotoB64.length));
        };

        // Leemos el archivo que selecciono el usuario y lo convertimos en una cadena con la Base64
        reader.readAsDataURL(inputFile.files[0]);
    }

}


