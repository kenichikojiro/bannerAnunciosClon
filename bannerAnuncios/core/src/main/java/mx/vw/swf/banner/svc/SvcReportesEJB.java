package mx.vw.swf.banner.svc;

import java.io.ByteArrayOutputStream;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.hibernate.internal.SessionImpl;

import mx.vw.fwk.core.dao.FwkCatContentDAO;
import mx.vw.swf.baseapp.core.jasper.JasperUtil;
import mx.vw.swf.banner.persistencia.dao.BANNERReportesDAO;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Stateless
@LocalBean
public class SvcReportesEJB implements Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = LoggerFactory.getLogger(SvcReportesEJB.class);
    
    @Inject private BANNERReportesDAO reportDao;
    @Inject FwkCatContentDAO configDao;
    
    public byte[] generaReporteWithConnection(String nombreReporte, Map<String,Object> params, JasperUtil.TipoReporte tipoReporte){
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        
        JasperUtil jasperUtil = new JasperUtil(params.get("SUBREPORT_DIR").toString(), params.get("IMAGE_DIR").toString());
        Connection conn = ((SessionImpl)reportDao.getSession()).connection();
        
        jasperUtil.ejecutaReporte(tipoReporte, nombreReporte, params, baos, conn);
        try {
            if(!conn.isClosed()){
                conn.close();
            }
        } catch (SQLException e) {
            LOGGER.info("No se pudo cerrar conexion", e);
        }
        return baos.toByteArray();
    }
    
}
