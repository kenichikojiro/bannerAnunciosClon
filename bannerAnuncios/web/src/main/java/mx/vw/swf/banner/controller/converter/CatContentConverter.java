package mx.vw.swf.banner.controller.converter;

import java.io.Serializable;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mx.vw.fwk.core.model.FwkCatContent;
import mx.vw.swf.banner.controller.converter.CatContentConverter;
import mx.vw.swf.baseapp.svc.SvcFramework;

@FacesConverter( "catContentConverter" )
public class CatContentConverter implements Converter<FwkCatContent>, Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = LoggerFactory.getLogger(CatContentConverter.class);
    
    @Inject private SvcFramework svcFramework;
    
    @Override
    public FwkCatContent getAsObject( FacesContext ctx,
                               UIComponent uic,
                               String value) {
        FwkCatContent catContent = null;
        if (value != null && value.trim().length() > 0) {
            try {
                catContent = svcFramework.findContentById(Long.valueOf(value, 10));
            } catch (NumberFormatException nfe) {
                LOGGER.info("No se recibio un valor string (catContentConverter): {}", value);
            }
        }
        return catContent;
    }
    
    @Override
    public String getAsString( FacesContext ctx,
                               UIComponent uic,
                               FwkCatContent value) {
        if (null != value) {
            return value.getId().toString();
        } else {
            if(LOGGER.isInfoEnabled()) {
                LOGGER.info("No se recibio un valor numerico: {} ", value);
            }
            return null;
        }
    }
    
}
