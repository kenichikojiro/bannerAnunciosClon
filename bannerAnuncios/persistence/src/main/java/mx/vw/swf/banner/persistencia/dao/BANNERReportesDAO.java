package mx.vw.swf.banner.persistencia.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.hibernate.Query;
import org.hibernate.transform.Transformers;

import mx.vw.swf.banner.intf.BANNERHibernateDAO;

/**
 * Donde se ejecutan las conultas de los reportes del sistema
 * 
 * @author Rafael Miranda Blumenkron
 */
@Stateless
public class BANNERReportesDAO extends BANNERHibernateDAO<BANNERReportesDAO> {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = LoggerFactory.getLogger(BANNERReportesDAO.class);
    
    @Override
    @PersistenceContext( )
    public void setEntityManager( EntityManager em) {
        super.setEntityManager(em);
    }
    
}
