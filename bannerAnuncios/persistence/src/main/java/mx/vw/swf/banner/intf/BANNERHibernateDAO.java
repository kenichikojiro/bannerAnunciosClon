package mx.vw.swf.banner.intf;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.ejb.Stateless;

import org.hibernate.query.NativeQuery;
import org.hibernate.transform.Transformers;
import org.hibernate.type.StandardBasicTypes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mx.vw.fwk.core.intf.SWFGeneric;

/**
 * Data access object (DAO) for domain model
 * 
 * @author MyEclipse Persistence Tools
 */

@Stateless
public class BANNERHibernateDAO<T> extends BANNERHibernateDataRepository<T> {
    private static final long serialVersionUID = 565824736775700282L;
    private static final Logger LOGGER = LoggerFactory.getLogger(BANNERHibernateDAO.class);
    
    /**
     * Método encargado de crear un query y agregrle los atributos y tipos de dato correspondiente para poder realizar mapeo rápido hacia un bean.
     * 
     * @param queryObject Objeto Query creado a partir de una sentencia SQL, ejemplo getSession().createSQLQuery(query)
     * @param atributos Lista de atributos que deberán agregarse a la opción scalar, ejemplo Arrays.asList(atributos.split(","))
     * @param tiposDato Tipos de datos para cada atributo que deberá emplearse en scalar, ejemplo Arrays.asList(tiposDato.split(","))
     * @return QueryObject con todos los tipos de dato agregados para cada campo
     */
    public NativeQuery<T> getQueryWithScalar( NativeQuery<T> queryObject,
                                        List<String> atributos,
                                        List<String> tiposDato) {
        NativeQuery<T> queryScaled = queryObject;
        if (null != queryScaled && null != atributos && !atributos.isEmpty() && null != tiposDato && !tiposDato.isEmpty() && atributos.size() == tiposDato.size()) {
            for (int i = 0; i < atributos.size(); i++) {
                if ("integer".equalsIgnoreCase(tiposDato.get(i))) {
                    queryScaled.addScalar(atributos.get(i), StandardBasicTypes.INTEGER);
                } else if ("timestamp".equalsIgnoreCase(tiposDato.get(i))) {
                    queryScaled.addScalar(atributos.get(i), StandardBasicTypes.TIMESTAMP);
                } else if ("long".equalsIgnoreCase(tiposDato.get(i))) {
                    queryScaled.addScalar(atributos.get(i), StandardBasicTypes.LONG);
                } else if ("bigdecimal".equalsIgnoreCase(tiposDato.get(i))) {
                    queryScaled.addScalar(atributos.get(i), StandardBasicTypes.BIG_DECIMAL);
                } else if ("double".equalsIgnoreCase(tiposDato.get(i))) {
                    queryScaled.addScalar(atributos.get(i), StandardBasicTypes.DOUBLE);
                } else if ("string".equalsIgnoreCase(tiposDato.get(i))) {
                    queryScaled.addScalar(atributos.get(i), StandardBasicTypes.STRING);
                } else if ("boolean".equalsIgnoreCase(tiposDato.get(i))) {
                    queryScaled.addScalar(atributos.get(i), StandardBasicTypes.BOOLEAN);
                } else if ("biginteger".equalsIgnoreCase(tiposDato.get(i))) {
                    queryScaled.addScalar(atributos.get(i), StandardBasicTypes.BIG_INTEGER);
                }
            }
        }
        return queryScaled;
    }

    public NativeQuery<T> getQueryWithScalar(NativeQuery<T> queryObject, Class<T> clase){
        return this.getQueryWithScalar(queryObject, Arrays.asList(SWFGeneric.getDeclaredFields(clase).split(",")), Arrays.asList(SWFGeneric.getDeclaredFieldsTypes(clase).toLowerCase().split(",")));
    }

    public List<T> getConsultaAsVO(String query, Class<T> clase, Map<String,Object> params) {
        LOGGER.debug("Finding getConsultaAsVO instance");
        try {
            NativeQuery<T> queryObject = getQueryWithScalar(getSession().createNativeQuery(query, clase), clase);
            for(Entry<String, Object> parametro : params.entrySet()){
                queryObject.setParameter(parametro.getKey(), parametro.getValue());
            }
            queryObject.setResultTransformer(Transformers.aliasToBean(clase));
            return queryObject.list();
        } catch (RuntimeException re) {
            LOGGER.error("Finding getConsultaAsVO error", re);
            throw re;
        }
    }

}
