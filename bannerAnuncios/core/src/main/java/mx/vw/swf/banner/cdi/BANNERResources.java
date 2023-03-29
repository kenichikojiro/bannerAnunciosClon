package mx.vw.swf.banner.cdi;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Produces;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mx.vw.fwk.core.dao.FwkCatAdminDAO;
import mx.vw.fwk.core.dao.FwkCatAppsDAO;
import mx.vw.fwk.core.dao.FwkCatContentDAO;
import mx.vw.fwk.core.dao.FwkIdiomaDAO;
import mx.vw.fwk.core.model.FwkCatAdmin;
import mx.vw.fwk.core.model.FwkCatApps;
import mx.vw.fwk.core.model.FwkCatContent;
import mx.vw.fwk.core.model.FwkIdioma;
import mx.vw.swf.baseapp.cdi.AppPropertyAdmin;
import mx.vw.swf.baseapp.cdi.Perfil;
import mx.vw.swf.baseapp.persistencia.dao.SegPerfilDAO;
import mx.vw.swf.baseapp.persistencia.modelo.SegPerfil;

@ApplicationScoped
public class BANNERResources implements Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = LoggerFactory.getLogger(BANNERResources.class);
    
    ArrayList<FwkCatAdmin> admins = new ArrayList<>();
    
    @Inject FwkCatAdminDAO adminDAO;
    @Inject FwkCatAppsDAO appsDAO;
    @Inject FwkCatContentDAO contentDao;
    @Inject FwkIdiomaDAO idiomaDao;
    @Inject SegPerfilDAO segPerfilDAO;
    
    FwkCatApps currentApp;
    FwkCatAdmin propAdmin;
    FwkIdioma idiomaPred;
    FwkCatAdmin propAdminBANNER;
    SegPerfil perfilPredeterminado;
    
    @Produces
    @Application
    public FwkCatApps getCurrentApp() {
        LOGGER.info("Inicializando recurso currentApp");
        if(null == currentApp) {
            currentApp = appsDAO.findByProperty("nombreaplicacion", "BANNER").get(0);
        }
        return currentApp;
    }
    
    @Produces
    @PropertyAdmin
    public FwkCatAdmin getPropAdmin() {
        LOGGER.info("Inicializando recurso propAdmin");
        if(null == propAdmin) {
            propAdmin = adminDAO.findByAppAndDesc(getCurrentApp(), "PropiedadesSWF").get(0);
        }
        return propAdmin;
    }
    
	@Produces
	@AppPropertyAdmin
	public FwkCatAdmin getPropAdminBANNER() {
		LOGGER.info("Inicializando recurso propAdminBANNER");
		if (null == propAdminBANNER) {
			List<FwkCatAdmin> list = adminDAO.findByAppAndDesc(getCurrentApp(), "PropiedadesBANNER");
			if (list != null && !list.isEmpty()) {
				propAdminBANNER = adminDAO.findByAppAndDesc(getCurrentApp(), "PropiedadesBANNER").get(0);
			}
		}
		LOGGER.info("PropiedadesBANNER:{}", propAdminBANNER);
		return propAdminBANNER;
	}
	
	@Produces
	@Perfil(name = "PERFIL_PREDETERMINADO")
	public SegPerfil getPerfilPredeterminado() {
		LOGGER.info("Inicializando getPerfilBANNER");
		if (perfilPredeterminado == null) {
			perfilPredeterminado = segPerfilDAO.perfilByNombre("BANNER");
		}
		return perfilPredeterminado;
	}
    
    @Produces
    @Application
    public ArrayList<FwkCatAdmin> getAdmins() {
        if (admins.isEmpty()) {
            admins.addAll(adminDAO.findAll());
        }
        return admins;
    }
    
    private FwkCatAdmin getCatalogo( String nombreBusca) {
        for (FwkCatAdmin catAdmin : getAdmins()) {
            if (catAdmin.getDescripcion().equalsIgnoreCase(nombreBusca)) {
                return catAdmin;
            }
        }
        return null;
    }
    
    @Produces
    @SessionTimeout
    public int getSessionTimeout() {
        FwkCatContent parametro = contentDao.findByKeyAndIdAdminIdAppActive("app.Timeout", getPropAdmin().getId(), getCurrentApp().getId());
        return null != parametro ? Integer.valueOf(parametro.getValue(), 10) : 2;
    }
    
    @Produces
    @DefaultLang
    public FwkIdioma getDefaultLang() {
        if (null == idiomaPred) {
            idiomaPred = idiomaDao.findIdiomaPredeterminado();
        }
        if (null == idiomaPred) {
            idiomaPred = new FwkIdioma();
            idiomaPred.setCodIdioma("es");
            idiomaPred.setCodPais("MX");
        }
        return idiomaPred;
    }
}
