package mx.vw.swf.banner.persistencia.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import mx.vw.fwk.core.vo.BaseVO;

/**
 * Clase que sirve de base para los campos base de cualquier entidad de SICAM
 * 
 * @author fox101o
 *
 */
@MappedSuperclass
public class BaseModel extends BaseVO implements Serializable {

	private static final long serialVersionUID = 1L;

	@Basic(optional = false)
	@Column(name = "ESTATUS")
	protected Boolean estatus;
	@Basic(optional = false)
	@Column(name = "FECHA_CREACION")
	@Temporal(TemporalType.TIMESTAMP)
	protected Date fechaCreacion;
	@Basic(optional = false)
	@Column(name = "USR_CREACION")
	protected String usrCreacion;
	@Column(name = "FECHA_ACTUALIZACION")
	@Temporal(TemporalType.TIMESTAMP)
	protected Date fechaActualizacion;
	@Column(name = "USR_ACTUALIZA")
	protected String usrActualiza;

	public BaseModel() {
		// Default constructor
	}

	public BaseModel(Boolean estatus, Date fechaCreacion, String usrCreacion, Date fechaActualizacion,
			String usrActualiza) {
		this.estatus = estatus;
		this.fechaCreacion = fechaCreacion;
		this.usrCreacion = usrCreacion;
		this.fechaActualizacion = fechaActualizacion;
		this.usrActualiza = usrActualiza;
	}

	public Boolean getEstatus() {
		return estatus;
	}

	public void setEstatus(Boolean estatus) {
		this.estatus = estatus;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public String getUsrCreacion() {
		return usrCreacion;
	}

	public void setUsrCreacion(String usrCreacion) {
		this.usrCreacion = usrCreacion;
	}

	public Date getFechaActualizacion() {
		return fechaActualizacion;
	}

	public void setFechaActualizacion(Date fechaActualizacion) {
		this.fechaActualizacion = fechaActualizacion;
	}

	public String getUsrActualiza() {
		return usrActualiza;
	}

	public void setUsrActualiza(String usrActualiza) {
		this.usrActualiza = usrActualiza;
	}
	/**
	 * Metodo que permite guardar los campos en mayusculas
	 * 
	 * @param valor: valor a convertir
	 * @return Valor en mayusculas
	 */
	protected String toUpperCase(String valor) {
		if (null != valor) {
			return valor.toUpperCase().trim();
		}
		return valor;
	}
	@Transient
	public String getFechaCreacionString() {
		return null == fechaCreacion ? "" : sdfEsMx.format(fechaCreacion);
	}

	@Transient
	public String getFechaActualizacionString() {
		return null == fechaActualizacion ? "" : sdfEsMx.format(fechaActualizacion);
	}
	
}
