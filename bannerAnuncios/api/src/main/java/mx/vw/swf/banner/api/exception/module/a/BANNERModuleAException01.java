package mx.vw.swf.banner.api.exception.module.a;

import mx.vw.swf.banner.api.exception.*;

/**
 * @author Rafael Miranda Blumenkron
 * @version 1.0
 * @created 10-abr-2014 11:04:32 a.m.
 */
public class BANNERModuleAException01 extends BANNERModuleAException {
    private static final long serialVersionUID = 7932083577072179012L;
    /**
     * Codigo de error a emplear.
     */
    private static final String ERROR_CODE = "05";

    /**
     * Constructor que se encarga de desplegar el mensaje con el codigo predeterminado para esta excepcion.
     */
    public BANNERModuleAException01() {
        super(ERROR_CODE);
    }

    /**
     * Constructor que se encarga de desplegar el mensaje con el codigo predeterminado para esta excepcion.
     * 
     * @param datoReemplaza  Contiene la cadena del dato a reemplazar en el mensaje.
     * @param datoTipos      Contiene la cadena de los tipos de dato de los campos para desplegar al usuario.
     */
    public BANNERModuleAException01(String datoReemplaza) {
        this();
        setReplacers(new String[] { datoReemplaza });
    }
}