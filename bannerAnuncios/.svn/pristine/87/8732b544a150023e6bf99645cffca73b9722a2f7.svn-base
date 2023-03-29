package mx.vw.swf.banner.persistencia.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class BaseIdIntegerModel extends BaseModel implements Serializable {

	private static final long serialVersionUID = 3152650422573361524L;

	@Id
	@Basic(optional = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Integer id;

	public BaseIdIntegerModel() {
		// Empty Constructor to superclass Id Integer
	}

	public BaseIdIntegerModel(Integer id) {
		this.id = id;
	}

	public BaseIdIntegerModel(Integer id, Boolean estatus, Date fechaCreacion, String usrCreacion,
			Date fechaActualizacion, String usrActualiza) {
		super(estatus, fechaCreacion, usrCreacion, fechaActualizacion, usrActualiza);
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

}
