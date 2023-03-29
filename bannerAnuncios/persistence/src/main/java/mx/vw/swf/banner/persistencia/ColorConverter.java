package mx.vw.swf.banner.persistencia;

import java.awt.Color;
import java.io.Serializable;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Clase encargada de codificar y decodificar un arreglo de bytes a un arreglo de bytes Base64
 * @author Rafael Miranda Blumenkron
 */
@Converter
public class ColorConverter implements AttributeConverter<Color, String>, Serializable {
    private static final long serialVersionUID = 1L; 
    private static final Logger LOGGER = LoggerFactory.getLogger(ColorConverter.class);
    private static final String SEPARATOR = "|";

    /**
     * Metodo encargado de convertir en Base64 un arreglo de bytes
     */
    @Override
    public String convertToDatabaseColumn( Color data) {
        LOGGER.info("Convirtiendo color a string");
        StringBuilder sb = new StringBuilder();
        sb.append(data.getRed()).append(SEPARATOR)
            .append(data.getGreen()).append(SEPARATOR)
            .append(data.getBlue()).append(SEPARATOR)
            .append(data.getAlpha());
        return sb.toString();
    }

    /**
     * Metodo encargado de convertir de Base64 un arreglo de bytes
     */
    @Override
    public Color convertToEntityAttribute( String dbData) {
        LOGGER.info("Convirtiendo string a color");
        String[] rgb = dbData.split(SEPARATOR);
        return new Color(Integer.parseInt(rgb[0]), Integer.parseInt(rgb[1]), Integer.parseInt(rgb[2]), Integer.parseInt(rgb[3]));
    }
    
}
