package mx.vw.swf.banner.persistencia.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;

import mx.vw.fwk.core.vo.BaseVO;
import mx.vw.swf.baseapp.persistencia.modelo.CmDocumento;

/**
 * Clase que sirve de base para las entidades que utilizan carga a CM_DOCUMENTO
 * 
 * @author fox101o
 *
 */
@MappedSuperclass
public class BaseDocumentModel extends BaseVO implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Basic(optional = false)
	@Column(name = "ID")
	protected Integer id;

	@JoinColumn(name = "ID_DOCUMENTO", referencedColumnName = "ID")
	@OneToOne
	protected CmDocumento idDocumento;

	public BaseDocumentModel() {
		// Empty constructor
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public CmDocumento getIdDocumento() {
		return idDocumento;
	}

	public void setIdDocumento(CmDocumento idDocumento) {
		this.idDocumento = idDocumento;
	}

}
