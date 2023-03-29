package mx.vw.swf.banner.intf;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import java.io.Serializable;

public class BANNERDataRepository<T> extends BANNERJPADataRepository<T> implements Serializable {
    private static final long serialVersionUID = 1L;

    @Inject
    @Override
    public void setEntityManager(EntityManager entityManager) {
        super.setEntityManager(entityManager);
    }
}
