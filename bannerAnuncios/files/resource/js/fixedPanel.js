/**
* Función que obtiene el n. de pixeles de un panel al hacer scroll
*
*/
$.fn.scrollBottom = function() {
	return (document.getElementById('divContent').scrollHeight - document
			.getElementById('divContent').clientHeight)
				- this.scrollTop();
};


/**
* Función que permite aplicar estilo fijo a panel para que siempre este en la parte baja de la pantalla
*
*/
function posicionarTotales() {
	var altura_totales = $('.footer').outerHeight(true);
	var scrollBottomDiv = $('#divContent').scrollBottom();
	if (scrollBottomDiv >= altura_totales) {
		$('.footer').addClass('fixed');
		$('#divContent').css('margin-bottom', (altura_totales) + 'px');
	} else {
		$('.footer').removeClass('fixed');
		$('#divContent').css('margin-bottom', '0');
	}
}