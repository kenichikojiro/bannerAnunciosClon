package mx.vw.swf.banner.intf;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import org.hibernate.Session;

/**
 * Esta clase proporciona acceso a la sesión de hibernate contenida en el {@link EntityManager} de la unidad de persistencia. Instancias de esta clase
 * deben ser utilizadas preferencialmente cuando se requiere de una funcionalidad limitada en JPA
 * 
 * @author jfer
 * 
 * @param <T>
 */
public class BANNERHibernateDataRepository<T> extends BANNERJPADataRepository<T> {
    private static final long serialVersionUID = 1691370547248267585L;

    public Session getSession() {
        return getEntityManager().unwrap(org.hibernate.Session.class);
    }
    
    @Inject
    public void setEntityManager(EntityManager em) {
        super.setEntityManager(em);
    }

}