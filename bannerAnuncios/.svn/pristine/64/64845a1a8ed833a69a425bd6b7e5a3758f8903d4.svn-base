package mx.vw.swf.banner.persistencia.dao;

import java.io.Serializable;
import java.math.BigDecimal;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.persistence.EntityGraph;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Path;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mx.vw.swf.baseapp.BaseConstants;
import mx.vw.swf.baseapp.persistencia.AbstractFacade;

public class LazyLoadingDAO<T> extends AbstractFacade<T> implements Serializable {

	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = LoggerFactory.getLogger(LazyLoadingDAO.class);
	private Class<T> entityClass;
	private String graphLazy;

	// Constants
	private static final String DESC = "DESCENDING";
	private static final String PARAM_CLAUSE_WHERE = "WHERE";
	private static final String PARAM_CLAUSE_ORDER_BY = "ORDER BY";
	private static final String PARAM_CLAUSE_AND = "AND";
	private static final String PARAM_CLAUSE_BETWEEN = "BETWEEN";
	private static final String PARAM_CLAUSE_LIKE = "LIKE";
	private static final String PARAM_CLAUSE_IN = "IN";
	private static final String PARAM_CARACTER_EQUAL = "#";
	private static final String PARAM_CARACTER_BETWEEN = "&";
	private static final String PARAM_CARACTER_IN = "|";
	private static final String PARAM_CARACTER_MAYOR = ">";
	// Caracter utilizado para indicar que parametro viene de la consulta nativa
	// y no directamente de los filtros lazy
	private static final String PARAM_CARACTER_QUERY_ESPECIFICO = "*";
	private static final String PARAM_COMMA = ",";
	private static final String PARAM_PERCENT = "%";
	private static final String PARAM_DOT = ".";
	private static final String PARAM_DOUBLE_DOT = ":";

	public LazyLoadingDAO(Class<T> entityClass, String graphLazy) {
		super(entityClass);
		this.entityClass = entityClass;
		this.graphLazy = graphLazy;
	}

	public LazyLoadingDAO(Class<T> entityClass) {
		super(entityClass);
		this.entityClass = entityClass;
	}

	/**
	 * Metodo que realiza la búsqueda de las entidades a partir de Lazy
	 * 
	 * @param first:       Primer resultado
	 * @param pageSize:    Tamanio de los elementos de la paginacion (15 por
	 *                     defecto)
	 * @param paramSorted: Lista de los campos por los cuales se va a ordenar, junto
	 *                     si es Ascendente o descendente
	 * @param filters:     Filtros de busqueda
	 * @return Lista de entidades encontradas
	 */
	public List<T> findAllLazy(int first, int pageSize, List<String> paramSorted, Map<String, Object> filters) {
		try {
			CriteriaBuilder cb = entityManager.getCriteriaBuilder();
			CriteriaQuery<T> criteriaQuery = cb.createQuery(entityClass);
			Root<T> root = criteriaQuery.from(entityClass);
			CriteriaQuery<T> select = criteriaQuery.select(root);

			if (null != filters && !filters.isEmpty()) {
				List<Predicate> predicates = this.buildPredicatesFilter(cb, root, filters);
				if (!predicates.isEmpty()) {
					criteriaQuery.where(cb.and(predicates.toArray(new Predicate[predicates.size()])));
				}
			}

			if (null != paramSorted && !paramSorted.isEmpty()) {
				this.buildPredicatesOrder(cb, root, criteriaQuery, paramSorted);
			}
			TypedQuery<T> typedQuery = getEntityManager().createQuery(select).setFirstResult(first)
					.setMaxResults(pageSize);
			if (null != graphLazy) {
				EntityGraph<?> entityGraph;
				entityGraph = entityManager.getEntityGraph(graphLazy);
				typedQuery.setHint(BaseConstants.JAVAX_PERSISTENCE_LOADGRAPH, entityGraph);
			}
			return typedQuery.getResultList();
		} catch (RuntimeException e) {
			LOGGER.error("Lazy loading failed: ", e);
			throw e;
		}
	}

	/**
	 * Metodo que permite formar los filtros de la busqueda lazy
	 * 
	 * @param cb:      Criteria Builder utilizado para formar el query
	 * @param root:    Elemento raíz de la consulta para criteria builder
	 * @param filters: Filtros para la busqueda
	 * @return
	 */
	protected List<Predicate> buildPredicatesFilter(CriteriaBuilder cb, Root<?> root, Map<String, Object> filters) {
		// Verificar si se utiliza SQL SERVER
		String dbProvider = System.getProperty("liquibaseDBprovider");
		String funcPrefix = dbProvider.equalsIgnoreCase("SQLSERVER") ? "dbo." : "";

		List<Predicate> predicates = new ArrayList<>();

		for (Map.Entry<String, Object> entry : filters.entrySet()) {
			String field = entry.getKey();
			LOGGER.trace("field:{}", field);
			Object value = giveValue(field, entry.getValue());
			LOGGER.trace("value:{}", value);
			String[] split = field.split("\\.");
			Expression<String> expression = null;
			if (value != null && split != null) {
				expression = getExpression(cb, value, field, split, root, funcPrefix);
				Predicate like = appendQuery(value.toString().toLowerCase(), cb, expression, field);
				predicates.add(like);
			}
		}
		return predicates;
	}

	/**
	 * Metodo que permite formar el query para ordenar los elementos
	 * 
	 * @param cb:            Criteria Builder utilizado para formar el query
	 * @param root:          Elemento raíz de la consulta para criteria builder
	 * @param criteriaQuery: Query formado
	 * @param paramSorted:   Parametros de ordenamiento
	 */
	protected void buildPredicatesOrder(CriteriaBuilder cb, Root<?> root, CriteriaQuery<?> criteriaQuery,
			List<String> paramSorted) {
		List<Order> multipleOrder = new ArrayList<>();
		for (String sorted : paramSorted) {
			Order order = null;
			String[] split = sorted.split("\\.");
			if (split != null && split.length > 2) {
				order = orderCriteriaSplit(split, root, cb);
			} else if (split != null && split.length <= 2) {
				order = orderCriteriaSplitLength(split[1], split[0], root, cb);
			}
			if (null != order) {
				multipleOrder.add(order);
			}
		}
		criteriaQuery.orderBy(multipleOrder);
	}

	/**
	 * Metodo que permite obtener la cantidad de registros obtenidos a partir del
	 * filtro
	 * 
	 * @param filters: Filtros a aplicar
	 * @return Numero total de elementos correspondientes a la busqueda
	 */
	public int countRecords(Map<String, Object> filters) {
		try {
			CriteriaBuilder cb = entityManager.getCriteriaBuilder();
			CriteriaQuery<Long> cq = cb.createQuery(Long.class);
			Root<T> root = cq.from(entityClass);
			CriteriaQuery<Long> select = cq.select(cb.count(root));

			if (null != filters && !filters.isEmpty()) {
				List<Predicate> predicates = buildPredicatesFilter(cb, root, filters);
				if (!predicates.isEmpty()) {
					cq.where(cb.and(predicates.toArray(new Predicate[predicates.size()])));
				}
			}
			TypedQuery<Long> createQuery = entityManager.createQuery(select);
			return createQuery.getSingleResult().intValue();
		} catch (RuntimeException e) {
			LOGGER.error(e.getMessage(), e);
			throw e;
		}
	}

	/**
	 * Metodo que permite formar la expresion utilizada en criteria builder para el
	 * query
	 * 
	 * @param cb:            Criteria builder para la query principal
	 * @param value:         Valor para filtrado
	 * @param field:         Campo a filtrar
	 * @param split:         Permite detectar si los campos son llaves foraneas
	 * @param root:          Elemento raíz de la consulta para criteria builder
	 * @param prefix:Prefijo utilizado para convertir fechas en SQL SERVER
	 * @return Expresiones formadas por los filtros coresspondientes para la
	 *         consulta
	 */
	private Expression<String> getExpression(CriteriaBuilder cb, Object value, String field, String[] split,
			Root<?> root, String prefix) {
		extraerBusquedaEspecifica(split);
		Path<?> path;
		if (split.length > 1) {
			Join<Object, Object> mainJoin = root.join(split[0], JoinType.INNER);
			if (split.length > 2) {
				for (int i = 1; i < split.length - 1; i++) {
					mainJoin = mainJoin.join(split[i], JoinType.INNER);
				}
			}
			path = mainJoin.get(split[split.length - 1]);
		} else {
			path = root.get(split[split.length - 1]);
		}
		return extractDatesQuery(cb, field, path, prefix, value);
	}

	@SuppressWarnings("unchecked")
	private Expression<String> extractDatesQuery(CriteriaBuilder cb, String field, Path<?> path, String prefix,
			Object value) {
		if (field.contains("fecha") || field.contains("fh")) {
			Expression<String> literal = cb.literal(BaseConstants.FORMATO_FECHA);
			return cb.function(prefix + "to_char", String.class, path, literal);
		}
		return (Expression<String>) path.as(value.getClass());
	}

	/**
	 * Metodo que permite juntar todas las condiciones de filtrado para la busqueda
	 * 
	 * @param field:      Campo a hacer el filtro
	 * @param cb:         Criteria Builder principal para la busqueda
	 * @param expression: Expresion formada por los filtros predefinidos
	 * @return Condiciones formadas para la busqueda
	 */
	private Predicate appendQuery(String value, CriteriaBuilder cb, Expression<String> expression, String field) {
		if (field.contains(PARAM_CARACTER_EQUAL)) {
			return cb.equal(expression, value);
		} else if (field.contains(PARAM_CARACTER_BETWEEN)) {
			String[] dates = value.split(PARAM_CARACTER_BETWEEN);
			return cb.between(expression, dates[0], dates[1]);
		} else if (field.contains(PARAM_CARACTER_MAYOR)) {
			return cb.greaterThan(expression, value);

		} else if (field.contains(PARAM_CARACTER_IN)) {
			String[] str = value.split("\\|");
			List<String> lista = Arrays.asList(str);
			return expression.in(lista);

		} else {
			StringBuilder sb = new StringBuilder();
			sb.append(PARAM_PERCENT).append(value).append(PARAM_PERCENT);
			return cb.like(cb.lower(expression), sb.toString());
		}

	}

	/**
	 * Metodo que verifica el campo y regresa un valor correspondiente para la
	 * busqueda
	 * 
	 * @param field: Campo a verificar
	 * @param value: Valor a convertir
	 * @return Objeto convertido para la busqueda
	 */
	private Object giveValue(String field, Object value) {
		if (field.contains("estatus") || field.contains("estado")) {
			return getEstado(String.valueOf(value));
		}
		return value;
	}

	/**
	 * Metodo que permie convertir un valor boleano en entero en formato String
	 * 
	 * @param value: Valor a convertir
	 * @return Elemento convertido en formato String
	 */
	private String getEstado(String value) {
		if ("true".equals(value)) {
			return "1";
		} else if ("false".equals(value)) {
			return "0";
		}
		return value;
	}

	/**
	 * 
	 * 
	 * @param split
	 */
	private void extraerBusquedaEspecifica(String[] split) {
		for (int i = 0; i < split.length; i++) {
			if (split[i].contains(PARAM_CARACTER_EQUAL)) {
				split[i] = split[i].replace(PARAM_CARACTER_EQUAL, "");
			}
			if (split[i].contains(PARAM_CARACTER_BETWEEN)) {
				split[i] = split[i].replace(PARAM_CARACTER_BETWEEN, "");
			}
			if (split[i].contains(PARAM_CARACTER_IN)) {
				split[i] = split[i].replace(PARAM_CARACTER_IN, "");
			}
			if (split[i].contains(PARAM_CARACTER_MAYOR)) {
				split[i] = split[i].replace(PARAM_CARACTER_MAYOR, "");
			}
		}
	}

	private Order orderCriteriaSplit(String[] split, Root<?> root, CriteriaBuilder cb) {
		if (split.length > 3) {
			if (DESC.equals(split[3])) {
				return cb.desc(root.join(split[0]).join(split[1]).get(split[2]));
			} else {
				return cb.asc(root.join(split[0]).join(split[1]).get(split[2]));
			}
		} else {
			if (DESC.equals(split[2])) {
				return cb.desc(root.join(split[0]).get(split[1]));
			} else {
				return cb.asc(root.join(split[0]).get(split[1]));
			}
		}
	}

	/**
	 * Metodo que forma el query en criteria para el ordenamiento de la consulta
	 * 
	 * @param sortOrder: Forma de ordenamiento (ASC o DESC)
	 * @param sortField: Campo a ordenar
	 * @param root:      Elemento raiz de la consulta
	 * @param cb:        Criteria builder principal para el query
	 * @return Ordenamiento para criteria
	 */
	private Order orderCriteriaSplitLength(String sortOrder, String sortField, Root<?> root, CriteriaBuilder cb) {
		if (DESC.equals(sortOrder)) {
			return cb.desc(root.get(sortField));
		} else {
			return cb.asc(root.get(sortField));
		}
	}

	/**
	 * Metodo que se encarga de ejecutar el query nativo para una carga Lazy
	 * 
	 * @param first:       Numero del primer registro
	 * @param pageSize:    Tamanio de los registros a mostrar
	 * @param paramSorted: Lista de parametros a ordenar
	 * @param filters:     Lista de filtros a buscar
	 * @param query:       Query a ejecutar
	 * @return: Lista de registros encontrados
	 */
	@SuppressWarnings("unchecked")
	protected List<T> findAllLazyBySpecificNativeQuery(int first, int pageSize, List<String> paramSorted,
			Map<String, Object> filters, String query) {
		try {
			StringBuilder q = new StringBuilder(query);
			formerFiltersTypedQuery(filters, q);
			formerSortedTypedQuery(paramSorted, q);
			LOGGER.debug("Query with filters and order: {}", q);
			Query nativeQuery = getEntityManager().createNativeQuery(q.toString(), entityClass).setFirstResult(first)
					.setMaxResults(pageSize);
			if (null != filters && !filters.isEmpty()) {
				for (Map.Entry<String, Object> entry : filters.entrySet()) {
					getParamValue(nativeQuery, entry.getKey(), entry.getValue());
				}
			}
			return nativeQuery.getResultList();
		} catch (Exception e) {
			LOGGER.error("findAllLazyBySpecificNativeQuery :", e);
			throw e;
		}
	}

	/**
	 * Metodo que se encarga de obtener el total de registros a mostra en la
	 * consulta Lazy
	 * 
	 * @param filters: Filtros a aplicar
	 * @param query:   Query a ejecutar
	 * @return Numero que indica cuantos registros seran msotrados
	 */
	protected int countRecordSpecificNativeQuery(Map<String, Object> filters, String query) {
		try {
			StringBuilder q = new StringBuilder(query);
			formerFiltersTypedQuery(filters, q);
			LOGGER.debug("Query count with filters: {}", q);
			Query nativeQuery = getEntityManager().createNativeQuery(q.toString());
			if (null != filters && !filters.isEmpty()) {
				for (Map.Entry<String, Object> entry : filters.entrySet()) {
					getParamValue(nativeQuery, entry.getKey(), entry.getValue());
				}
			}
			return (int) nativeQuery.getSingleResult();
		} catch (Exception e) {
			LOGGER.error("countRecordSpecificNativeQuery :", e);
			throw e;
		}
	}

	/**
	 * Metodo que se encarga de formar el query de acuerdo a los filtros dados
	 * 
	 * @param filters: Filtros a aplicar
	 * @param query:   Query a ejecutar
	 */
	private void formerFiltersTypedQuery(Map<String, Object> filters, StringBuilder query) {
		if (null != filters && !filters.isEmpty()) {
			addClauseLazyQuery(query, PARAM_CLAUSE_WHERE, PARAM_CLAUSE_AND);
			query.append(filters.entrySet().stream().filter(e -> !e.getKey().contains(PARAM_CARACTER_QUERY_ESPECIFICO))
					.map(e -> appenTypedQuery(e.getKey()))
					.collect(Collectors.joining(" ".concat(PARAM_CLAUSE_AND).concat(" "))));
		}
	}

	/**
	 * Metodo que encarga de formar el query de acuerdo a los valores a ordenar
	 * 
	 * @param paramSorted: Lista de elementos a ordenar
	 * @param query:       Query a ejecutar
	 */
	private void formerSortedTypedQuery(List<String> paramSorted, StringBuilder query) {
		if (null != paramSorted && !paramSorted.isEmpty()) {
			addClauseLazyQuery(query, PARAM_CLAUSE_ORDER_BY, ",");
			int count = 1;
			for (String s : paramSorted) {
				query.append(" ").append(splitOrderFields(s));
				if (count < paramSorted.size()) {
					query.append(PARAM_COMMA);
				}
				count++;
			}

		}
	}

	/**
	 * Metodo que se encarga de formar las condiciones de un query de acuerdo al
	 * campo y la busqueda a aplicar, ademas de utilizar caracteres para indicar que
	 * tipo de condicion y busqueda se aplica
	 * 
	 * '#': Con este caracter se indica que sera una igualdad (Usar '=') '&': Con
	 * este caracter en el campo indica si sera un rango (BETWEEN) '|': Con este
	 * caracter en el campo indica si sera utilizando la clausual IN
	 * 
	 * @param field: Campo a formar la busqueda y condicion
	 * @return Cadena con la condicion a buscar
	 */
	private String appenTypedQuery(String field) {
		if (field.contains(PARAM_CARACTER_EQUAL)) {
			field = getFieldWithReplace(field, PARAM_CARACTER_EQUAL);
			return field.concat(" = ").concat(PARAM_DOUBLE_DOT).concat(extractFieldFromJoin(field));
		} else if (field.contains(PARAM_CARACTER_BETWEEN)) {
			field = getFieldWithReplace(extractFieldFromJoin(field), PARAM_CARACTER_BETWEEN);
			return field.concat(" " + PARAM_CLAUSE_BETWEEN + " ").concat(PARAM_DOUBLE_DOT)
					.concat(extractFieldFromJoin(field) + "1").concat(" " + PARAM_CLAUSE_AND + " ").concat(field + "2");
		} else if (field.contains(PARAM_CARACTER_IN)) {
			field = getFieldWithReplace(field, PARAM_CARACTER_IN);
			return field.concat(" " + PARAM_CLAUSE_IN + " ").concat(" (").concat(PARAM_DOUBLE_DOT)
					.concat(extractFieldFromJoin(field).concat(") "));
		} else if (field.contains(PARAM_CARACTER_MAYOR)) {
			field = getFieldWithReplace(field, PARAM_CARACTER_MAYOR);
			return field.concat(" = ").concat(PARAM_DOUBLE_DOT).concat(extractFieldFromJoin(field));
		} else {
			field = getFieldWithReplace(field, PARAM_PERCENT);
			return field.concat(" " + PARAM_CLAUSE_LIKE + " ").concat(PARAM_DOUBLE_DOT)
					.concat(extractFieldFromJoin(field)).concat(" ");
		}
	}

	/**
	 * Metodo que se encarga de reemplazar los caracteres especiales para agregarlos
	 * a la query
	 * 
	 * @param field: Campo a modificar
	 * @return Nombre del campo sin el caracter especial
	 */
	private String replaceParamQuery(String field) {
		if (field.contains(PARAM_CARACTER_EQUAL)) {
			return field.replace(PARAM_CARACTER_EQUAL, "");
		} else if (field.contains(PARAM_CARACTER_BETWEEN)) {
			return field.replace(PARAM_CARACTER_BETWEEN, "");
		} else if (field.contains(PARAM_CARACTER_IN)) {
			return field.replace(PARAM_CARACTER_IN, "");
		} else if (field.contains(PARAM_CARACTER_MAYOR)) {
			return field.replace(PARAM_CARACTER_MAYOR, "");
		} else if (field.contains(PARAM_CARACTER_QUERY_ESPECIFICO)) {
			return field.replace(PARAM_CARACTER_QUERY_ESPECIFICO, "");
		} else if (field.contains(PARAM_PERCENT)) {
			return field.replace(PARAM_PERCENT, "");
		}
		return field;
	}

	/**
	 * Metodo que se encarga de formar los parametros a formar para realizar la
	 * busqueda lazy
	 * 
	 * 
	 * @param nativeQuery: Query nativa a agregar los parametros
	 * @param field:       Campo a aplicar
	 * @param value:       Valor del campo aplicado
	 */
	private void getParamValue(Query nativeQuery, String field, Object value) {
		if (field.contains(PARAM_CARACTER_EQUAL) || field.contains(PARAM_CARACTER_QUERY_ESPECIFICO)
				|| field.contains(PARAM_CARACTER_MAYOR) || field.contains(PARAM_PERCENT)) {
			nativeQuery.setParameter(replaceParamQuery(extractFieldFromJoin(field)), value);
		} else if (field.contains(PARAM_CARACTER_BETWEEN)) {
			String[] datesValue = value.toString().split(PARAM_CARACTER_BETWEEN);
			for (int i = 0; i < datesValue.length; i++) {
				nativeQuery.setParameter(replaceParamQuery(extractFieldFromJoin(field + (i + 1))),
						getLikeParamValue(datesValue[i]));
			}
		} else if (field.contains(PARAM_CARACTER_IN)) {
			String[] valueSplit = value.toString().split("\\|");
			List<String> paramsIn = Arrays.asList(valueSplit);
			nativeQuery.setParameter(replaceParamQuery(extractFieldFromJoin(field)), paramsIn);
		} else {
			nativeQuery.setParameter(replaceParamQuery(extractFieldFromJoin(field)), getLikeParamValue(value));
		}
	}

	/**
	 * Metodo que se encarga de agregar los caracteres '%' para una busqueda LIKE
	 * 
	 * @param value: Valor a agregar caracteres
	 * @return Valor con caracteres '%' agregados
	 */
	private String getLikeParamValue(Object value) {
		return PARAM_PERCENT + value + PARAM_PERCENT;
	}

	/**
	 * Metodo que se encarga de reemplazar un caracter especial de un campo
	 * 
	 * @param field:           Campo a quitar caracter especial
	 * @param caracterReplace: Caracter a quitar
	 * @return Campo sin el caracter especial
	 */
	private String getFieldWithReplace(String field, String caracterReplace) {
		if (field.contains(caracterReplace)) {
			return field.replace(caracterReplace, "");
		}
		return field;
	}

	/**
	 * Metodo que reemplaza los caracteres '.' por '_' para las variables de una
	 * query
	 * 
	 * @param field: Campo a reemplazar
	 * @return Campo con los caracteres reemplazados
	 */
	private String extractFieldFromJoin(String field) {
		if (field.contains(PARAM_DOT)) {
			return field.replace(PARAM_DOT, "_");
		}
		return field;
	}

	/**
	 * Metodo que separa los campos a ordenar de la forma de ordenamiento
	 * 
	 * @param field: Campo a obtener el ordenamiento
	 * @return Campo ordenado con su forma de ordenamiento
	 */
	private String splitOrderFields(String field) {
		String[] fieldSplit = field.split(PARAM_COMMA);
		StringBuilder fieldComplete = new StringBuilder();
		for (String s : fieldSplit) {
			fieldComplete.append(s).append(" ");
		}
		return fieldComplete.toString();
	}

	/**
	 * Metodo que se encarga de agregar alguna clausula a un query si es que no la
	 * tiene agregada
	 * 
	 * 
	 * @param query:         Querya agregar una clausula
	 * @param clause:        Clausula a agregar
	 * @param replaceClause: Caracteres a agregar en caso de que el query cuente con
	 *                       la clausula indicada
	 */
	private void addClauseLazyQuery(StringBuilder query, String clause, String replaceClause) {
		if (query.toString().contains(clause)) {
			query.append(" ").append(replaceClause).append(" ");
		} else {
			query.append(" ").append(clause).append(" ");
		}
	}

	protected String removerComaNumerico(Object campo) {
		String value;
		if (null == campo) {
			return null;
		}
		if (campo instanceof BigDecimal) {
			value = campo.toString();
		} else {
			value = String.valueOf(campo);
		}
		if (value.contains(",")) {
			return value.replace(",", "");
		}
		return value;
	}

	protected String removerComaString(String campo) {
		if (null == campo) {
			return "";
		} else if (campo.contains("'")) {
			return campo.replace("'", "''").replace("\n", "").replace("\r", "");
		}
		return campo.replace("\n", "").replace("\r", "");
	}

	protected Integer convertirBooleanoANumerico(Boolean num) {
		return num.booleanValue() ? 1 : 0;
	}

	protected String agregarCampoStringFecha(Date campo) {
		if (null != campo) {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd-yyyy HH:mm:ss a");
			return MessageFormat.format(" CAST(''{0}'' AS DATETIME) ", simpleDateFormat.format(campo));
		}
		return "''";
	}

}
