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
public class BaseIdLongModel extends BaseModel implements Serializable {

	private static final long serialVersionUID = -1966827398838488350L;

	@Id
	@Basic(optional = false)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	protected Long id;

	public BaseIdLongModel() {
		// Emtpy constructor by Id long
	}

	public BaseIdLongModel(Long id, Boolean estatus, Date fechaCreacion, String usrCreacion,
			Date fechaActualizacion, String usrActualiza) {
		super(estatus, fechaCreacion, usrCreacion, fechaActualizacion, usrActualiza);
		this.id = id;
	}

	public BaseIdLongModel(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

}
