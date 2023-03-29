/**
 * Esta librería almacena diferentes funciones que se necesitan para arreglar varios issues encontrados en PrimeFaces 
 */

/**
 * Función que se encarga de arreglar el alto de encabezado y renglones cuando
 * ocupamos dataTable con frozenColumns, ya que por omisión se desfasan tanto el
 * encabezado como los renglones cuando ocupan diferentes cantidad de espacio Se
 * requiere pasarle el widgetVar de la tabla
 */
function tableAdjustFrozenSize(tableWidgetVar) {
	var tableObj = PF(tableWidgetVar);
	var scrollbarWidth = 17;
	
	if (tableObj) {
		// Ancho del header y footer de la tabla
		for(i = 0; i < tableObj.jq[0].childNodes.length; i++){
			if (tableObj.jq[0].childNodes[i].className.indexOf('header') >= 0 || tableObj.jq[0].childNodes[i].className.indexOf('footer') >= 0) {
				tableObj.jq[0].childNodes[i].style = 'width: calc(100% - 22px);';
			}
		}

		// Ancho del paginador al 100% en lugar de ancho establecido por omision
		if (tableObj.paginator && tableObj.paginator.getJQ()) {
			tableObj.paginator.getJQ()[0].style = 'width: calc(100% - 6px);';
		}

		// Ajusta los encabezados de las secciones al mayor que encuentre
		if (tableObj.frozenHeader && tableObj.scrollHeader) {
			var frozenHeaderHeight = tableObj.frozenHeader.height();
			var scrollHeaderHeight = tableObj.scrollHeader.height();
			if (frozenHeaderHeight < scrollHeaderHeight) {
				tableObj.frozenHeader.height(tableObj.scrollHeader.height());
				tableObj.frozenHeader[0].childNodes[0].style = 'height: 100%;';
				tableObj.frozenHeader[0].childNodes[0].childNodes[0].style = 'height: 100%;';
			} else {
				tableObj.scrollHeader.height(tableObj.frozenHeader.height());
				tableObj.scrollHeader[0].childNodes[0].style = 'height: 100%;';
				tableObj.scrollHeader[0].childNodes[0].childNodes[0].style = 'height: 100%;';
			}
		}
		
		// Ajusta los renglones de datos al mayor que encuentre
		if (tableObj.frozenBody && tableObj.scrollBody) {
			for (i = 0; i < tableObj.paginator.cfg.rows; i++) {
				if (tableObj.frozenBody[0].childNodes[0].childNodes[1].childNodes[i]) {
					var altoFrozen = tableObj.frozenBody[0].childNodes[0].childNodes[1].childNodes[i].clientHeight;
					var altoScroll = tableObj.scrollBody[0].childNodes[0].childNodes[1].childNodes[i].clientHeight;
					if (altoFrozen < altoScroll) {
						tableObj.frozenBody[0].childNodes[0].childNodes[1].childNodes[i].style = 'height: ' + altoScroll + 'px;';
					} else {
						tableObj.scrollBody[0].childNodes[0].childNodes[1].childNodes[i].style = 'height: ' + altoFrozen + 'px;';
					}
				}
			}
		}
		
		//Ajusta el ancho de encabezados para tablas con scrollbar vertical que aunque son scrollable, no presentan scroll horizontal
		if(tableObj.scrollBody && tableObj.scrollHeader){
			if(tableObj.scrollBody[0].scrollWidth == tableObj.scrollBody[0].clientWidth){
				tableObj.scrollHeader.width(tableObj.scrollBody.width());
			}
			if(tableObj.scrollBody[0].style.width == (tableObj.scrollBody[0].clientWidth + scrollbarWidth + 'px')){
				tableObj.scrollHeader.width(tableObj.scrollBody[0].style.width.replace('px','') - scrollbarWidth);
			}
		}
		
		//Ajusta el alto maximo de la seccion fija a la seccion scroll menos el alto del scroll horizontal
		if(tableObj.scrollBody && tableObj.frozenBody && tableObj.scrollHeader){
			if(tableObj.scrollBody[0].scrollWidth > tableObj.scrollBody[0].clientWidth){
				tableObj.frozenBody[0].style.maxHeight = (tableObj.scrollBody[0].style.maxHeight.replace('px','') - scrollbarWidth)+'px';
				tableObj.scrollHeader.width(tableObj.scrollBody.width() - scrollbarWidth);
			} else {
				tableObj.frozenBody[0].style.maxHeight = (tableObj.scrollBody[0].style.maxHeight.replace('px',''))+'px';
			}
		}
		
		//Ajusta el scroll del encabezado al scroll del body
		if (tableObj.scrollHeader && tableObj.scrollBody){
			tableObj.scrollHeader.scrollLeft(tableObj.scrollBody.scrollLeft());
		}
	}
}
