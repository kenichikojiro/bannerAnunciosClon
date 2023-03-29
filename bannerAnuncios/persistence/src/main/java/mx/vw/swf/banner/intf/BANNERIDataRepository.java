package mx.vw.swf.banner.intf;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

public interface BANNERIDataRepository<T extends Serializable> {
    void setEntityManager(EntityManager entityManager);

    EntityManager getEntityManager();

    void persist(T entity);

    void remove(T entity);

    void merge(T entity);

    List<T> listJpaQuery(String jpa, Map<String, Object> params);

    List<T> listSqlQuery(String jpa, Map<String, Object> params);

    T singleJpaQuery(String jpa, Map<String, Object> params);

    T singleSqlQuery(String jpa, Map<String, Object> params);
}