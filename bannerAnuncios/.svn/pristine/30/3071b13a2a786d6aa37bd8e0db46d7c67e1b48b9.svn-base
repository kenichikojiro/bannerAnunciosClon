package mx.vw.swf.banner.api.exception;

import mx.vw.swf.baseapp.UserLanguage;
import mx.vw.swf.baseapp.exception.BaseException;

/**
 * Esta clase se encarga de manejar todas las excepciones generadas en el Sistema y propagarlas a nivel superior.
 * 
 * @author Rafael Miranda Blumenkron
 * @version 1.0
 * @created 10-abr-2014 11:04:36 a.m.
 */
public class BANNERException extends BaseException {
    private static final long serialVersionUID = 1L;
    
    public BANNERException(UserLanguage userLanguage) {
        setUserLanguage(userLanguage);
    }

    public BANNERException() {

    }

    public BANNERException(String message, String detail, String severity) {
        super(message, detail, severity);
    }

    public BANNERException(String message) {
        this(message, null, null);
    }

    public BANNERException(String message, String severity) {
        this(message, null, severity);
    }

    public BANNERException(String message, String detail, String severity, UserLanguage userLanguage) {
        super(message, detail, severity);
        setUserLanguage(userLanguage);
    }

    @Override
    public String toString() {
        return "BANNERException{" +
                "message='" + getMessage() + '\'' +
                ", detail='" + getDetail() + '\'' +
                ", severity='" + getSeverity() + '\'' +
                '}';
    }

}// end Exception