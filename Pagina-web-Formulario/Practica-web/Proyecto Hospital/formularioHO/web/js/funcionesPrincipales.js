function loadAcercaDe() {
    $.ajax({
        context: document.body,
        url: "gestion/principal/Formulario.html"
    }).done(function (data) {
        $("#contenedorInicio").html(data);
    });
}

function loadTablaReg() {
    $.ajax({
        context: document.body,
        url: "gestion/principal/verRegistros.html"
    }).done(function (data) {
        $("#contenedorInicio").html(data);
    });
}
