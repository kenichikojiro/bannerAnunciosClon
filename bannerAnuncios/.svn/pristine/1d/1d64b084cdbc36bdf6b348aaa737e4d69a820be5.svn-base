package mx.vw.swf.banner.intf;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Map.Entry;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Parameter;
import javax.persistence.Query;
import javax.persistence.TransactionRequiredException;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaQuery;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * <lang="es">
 * <p align="justify">
 * Esta clase está pensada para proveer de una serie de métodos comunes que tienen como finalidad acceder a una base de datos cuando ésta está
 * configurada como unidad de persistencia JPA.
 * </p>
 * <p>
 * Las instancias operadas por los métodos de esta clase debe pertenecer a clases de entidad JPA
 * </p>
 * </lang>
 * 
 * <lang="en">
 * <p align="justify">
 * This class is intended to provide a base template class for any database access, given the case when a JPA configured persistence unit is
 * available.
 * </p>
 * <p>
 * The instance must belong to a jpa managed entity class.
 * </p>
 * </p> </lang>
 * 
 * @author jfer
 * @see HibernateDataRepository, {@link EntityManager}
 * @param <T>
 */

public class BANNERJPADataRepository<T> implements Serializable {
    private static final long serialVersionUID = -5820544010288828814L;
    private static final Logger LOGGER = LoggerFactory.getLogger(BANNERJPADataRepository.class);
    protected EntityManager entityManager;

    public EntityManager getEntityManager() {
        return this.entityManager;
    }

    /**
     * <p align="justify">
     * <lang="es">
     * 
     * Persiste la instancia dada. La instancia debe pertenecer a una clase de entidad jpa manejada. En su forma más simple este método desencadena
     * una sentencia 'insert' generalmente en una base de datos. </lang>
     * </p>
     * <p align="justify">
     * <lang="en"> Persists the instance given as parameter. This method should be invoked within the bounds of an active transaction or otherwise an
     * exception will be thrown. </lang>
     * </p>
     * 
     * @param entity
     *            Instancia que será persistida
     */
    public void persist(Serializable entity) {
        getEntityManager().persist(entity);
    }

    /**
     * <p align="justify">
     * <lang="es"> Remueve la instancia dada. En su forma más simple este método desencadena una sentencia 'delete' generalmente en una base de datos.
     * Este método debe ser invocado dentro de los límites de una transacción activa de lo contrario una excepción será generada.s </lang>
     * </p>
     * <p align="justify">
     * <lang="en"> Removes the instance given as parameter. This method should be invoked within the bounds of an active transaction or otherwise an
     * exception will be thrown. </lang>
     * </p>
     * 
     * @param entity
     *            Instancia que será persistida
     */
    public void remove(Serializable entity) {
        getEntityManager().remove(entity);
    }

    /**
     * Merge the state of the given entity into the current persistence context.
     * 
     * @param entity
     *            entity instance
     * @return the managed instance that the state was merged to
     * @throws IllegalArgumentException
     *             if instance is not an entity or is a removed entity
     * @throws TransactionRequiredException
     *             if invoked on a container-managed entity manager of type <code>PersistenceContextType.TRANSACTION</code> and there is no
     *             transaction
     */
    public void merge(Serializable entity) {
        getEntityManager().merge(entity);
    }

    @SuppressWarnings( "unchecked" )
    public List<T> listSqlQuery(String jpa, Map<String, Object> params) {
        Query queryObject = getEntityManager().createNativeQuery(jpa);
        if(null != params) {
            for(Entry<String, Object> parametro : params.entrySet()){
                queryObject.setParameter(parametro.getKey(), parametro.getValue());
            }
        }
        return queryObject.getResultList();
    }
    
    @SuppressWarnings("unchecked")
    public List<String[]> listSqlQueryNative(String query) {
        return getEntityManager().createNativeQuery(query).getResultList();
    }

    @SuppressWarnings( "unchecked" )
    public List<T> listSqlQuery(String jpa, Class<T> clazz) {
        return getEntityManager().createNativeQuery(jpa, clazz).getResultList();
    }

    /**
     * Will execute the jpa query and try a getStingleResult() in order to return not a list but a single instance. This method WILL fail if NOT
     * exactly ONE matching record was found for the given query.
     * 
     * @param jpa
     * @param params
     * @param clazz
     * @return The single instance found. Null if more than one or none found.
     */
    public T singleJpaQuery(String jpa, Map<String, Object> params, Class<T> clazz) {
        try {
            return getJPAQuery(jpa, params, clazz).getSingleResult();
        } catch (NoResultException nre) {
            LOGGER.info(nre.getMessage(), nre);
            return null;
        } catch (NoSuchElementException nsee) {
            LOGGER.info(nsee.getMessage(), nsee);
            return null;
        }
    }

    public Object singleSqlQuery(String sql, Map<String, Object> params) {
        return getSQLQuery(sql, params).getSingleResult();
    }

    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public List<T> listJpaQuery(String jpa, Map<String, Object> params, Class<T> clazz) {
        return getJPAQuery(jpa, params, clazz).getResultList();
    }

    @SuppressWarnings("unchecked")
    public List<T> listJpaQuery(String jpa, Map<String, Object> params) {
        Query query = getEntityManager().createQuery(jpa);
        setQueryNamedParams(params, query);
        return query.getResultList();
    }

    private TypedQuery<T> getJPAQuery(String query, Map<String, Object> params, Class<T> clazz) {
        TypedQuery<T> q = getEntityManager().createQuery(query, clazz);
        setQueryNamedParams(params, q);
        return q;
    }

    private Query getSQLQuery(String query, Map<String, Object> params) {
        Query q = getEntityManager().createNativeQuery(query);
        setQueryNamedParams(params, q);
        return q;
    }

    /**
     * Generic method that traverses the entry set of parameters and pushes each parameter into the given query. Note that this method will ignore
     * those keys in the given map which are not present as parameters in the woking query.
     * 
     * @param params
     * @param q
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
    private void setQueryNamedParams(Map<String, Object> params, Query q) {
        for (Parameter p : q.getParameters()) {
            q.setParameter(p, params.get(p.getName()));
        }
    }

    /**
     * Generic method that traverses the list of parameters and pushes them into the given query in the order given by the list's iterator
     * 
     * @param params
     * @param q
     */
    @SuppressWarnings("unused")
    private void setQueryIndexedParams(List<Object> params, Query q) {
        int i = 0;
        for (Object param : params) {
            q.setParameter(i++, param);
        }
    }

    public CriteriaQuery<T> getCriteriaQuery(Class<T> clazz) {
        return getEntityManager().getCriteriaBuilder().createQuery(clazz);
    }

    public T findById(Serializable id, Class<T> clazz) {
        return getEntityManager().find(clazz, id);
    }

    /**
     * Will execute the jpa query and try a getStingleResult() in order to return not a list but a single instance. This method WILL fail if NOT
     * exactly ONE matching record was found for the given query.
     * 
     * @param jpa
     * @param params
     * @param clazz
     * @return The single instance found. Null if more than one or none found.
     */
    public Object singleJpaQuery(String jpa, Map<String, Object> params) {
        try {
            return getJPAQuery(jpa, params).getSingleResult();
        } catch (NoResultException nre) {
            LOGGER.info(nre.getMessage(), nre);
            return null;
        } catch (NoSuchElementException nsee) {
            LOGGER.info(nsee.getMessage(), nsee);
            return null;
        }
    }

    private Query getJPAQuery(String jpa, Map<String, Object> params) {
        Query q = getEntityManager().createQuery(jpa);
        setQueryNamedParams(params, q);
        return q;
    }

    public <E> E loadById(Serializable id, Class<E> clazz) {
        return getEntityManager().find(clazz, id);
    }
}