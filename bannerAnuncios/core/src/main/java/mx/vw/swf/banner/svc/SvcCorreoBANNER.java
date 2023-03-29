package mx.vw.swf.banner.svc;

import java.io.ByteArrayOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mx.vw.fwk.core.SWFMailSender;
import mx.vw.fwk.core.dao.FwkCatContentDAO;
import mx.vw.fwk.core.model.FwkCatAdmin;
import mx.vw.fwk.core.model.FwkCatApps;
import mx.vw.fwk.core.model.FwkCatContent;
import mx.vw.fwk.core.model.FwkIdioma;
import mx.vw.swf.baseapp.core.jasper.JasperUtil;
import mx.vw.swf.baseapp.svc.SvcCorreoBaseEJB;
import mx.vw.swf.baseapp.svc.SvcFramework;
import mx.vw.swf.baseapp.svc.SvcSeguridadEJB;

import mx.vw.swf.banner.cdi.Application;
import mx.vw.swf.banner.cdi.PropertyAdmin;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

/**
 * @author Rafael Miranda Blumenkron
 * @created 29/03/2016
 * @version 1.0
 */
@Stateless
@LocalBean
public class SvcCorreoBANNER implements Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = LoggerFactory.getLogger(SvcCorreoBANNER.class);
    
    boolean verificaAmbienteEjecucion = true;
    
    @Inject SWFMailSender mailSender;
    @Inject SvcFramework svcFramework;
    @Inject SvcSeguridadEJB svcSeguridad;
    @Inject @Application FwkCatApps currentApp;
    @Inject @PropertyAdmin FwkCatAdmin propAdmin;
    @Inject FwkCatContentDAO configDao;
    @Inject SvcCorreoBaseEJB svcCorreoBase;
    
    private String rutaSistema = "";
    private String rutaContexto = "";
    
    @PostConstruct
    public void inicializa() {
        LOGGER.debug("@SvcCorreoEJB.postConstruct");
        this.getParametros();
    }

    /**
     * Metodo encargado de obtener los parametros de configuracion necesarios para el reemplazo de valores en el envio de correos
     */
    private void getParametros() {
        List<FwkCatContent> configs;

        configs = configDao.findAllBySystemPropStartsWith(currentApp.getId(), propAdmin.getId(), "rutas.");
        for (FwkCatContent config : configs) {
            if("rutas.Sistema".equalsIgnoreCase(config.getKeyValue())) {
                this.rutaSistema = config.getValue();
            } else if ("rutas.contextoBase".equalsIgnoreCase(config.getKeyValue())){
                this.rutaContexto = config.getValue();
            }
        }
        LOGGER.debug("Ruta de Sistema: {}", rutaSistema);
        LOGGER.debug("Ruta de Contexto: {}", rutaContexto);
    }
    
    /**
     * Meotodo encargado de generar un archivo adjunto para poder enviarlo en un correo electronico.
     * Solo es un ejemplo de uso.
     */
    private List<Object> getAdjuntoAtributos(String rutaReportes, String rutaImg){
        List<Object> listAttach = new ArrayList<>();
        ByteArrayOutputStream datosPDF = new ByteArrayOutputStream();
        List<?> listDatos = new ArrayList();
        
        // Ejemplo de busqueda de datos para enviar al reporteador
        /**
         * listDatos = svcConsultas.getAtributosSolicitudAdjunto(sistema);
        */
        JRDataSource beanCollectionDS = new JRBeanCollectionDataSource(listDatos);
        
        JasperUtil jasperUtil = new JasperUtil(rutaReportes, rutaImg);
        Map<String, Object> reportParams = new HashMap<>();
        reportParams.put("tituloReporte", "TITULO A EMPLEAR EN EL REPORTE");
        reportParams.put("soloDatos", false);
        
        jasperUtil.ejecutaReporte(JasperUtil.TipoReporte.PDF, "/NombreReporte", reportParams, datosPDF, beanCollectionDS);
        
        List<Object> attachment = new ArrayList<>();
        LOGGER.info("Mail Attachment Size = {}",datosPDF.toByteArray().length);
        attachment.add(datosPDF.toByteArray());
        attachment.add("application/pdf");
        attachment.add("Nombre_Archivo.pdf");
        listAttach.add(attachment);
        
        return listAttach;
    }
    
}
