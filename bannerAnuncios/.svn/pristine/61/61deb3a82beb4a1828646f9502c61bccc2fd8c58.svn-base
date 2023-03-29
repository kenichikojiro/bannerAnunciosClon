package mx.vw.swf.banner.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.inject.Named;

import mx.vw.swf.banner.vo.MesVO;
import mx.vw.fwk.core.model.FwkCatAdmin;
import mx.vw.fwk.core.model.FwkCatApps;
import mx.vw.swf.baseapp.controller.ConfigBean;
import mx.vw.swf.baseapp.controller.UserBean;
import mx.vw.swf.baseapp.start.BeanInterceptorBinding;
import mx.vw.swf.banner.cdi.Application;

/**
 * Clase encargada de manejar la administracion de atributos genericos.
 *
 */

@Named
@SessionScoped
@BeanInterceptorBinding
public class CommonBean implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Inject UserBean userBean;
    @Inject ConfigBean configBean;
    @Inject @Application FwkCatApps currentApp;
    @Inject @Application Collection<FwkCatAdmin> catAdmins;
    
    private List<MesVO> listMeses;
    
    /**
     * Obtiene todos los meses del año
     */
    @PostConstruct
    public void inicializa() {
        listMeses = new ArrayList<>();
        for(int i = 1; i <= 12; i++){
            MesVO mes = new MesVO();
            mes.setNumMes(i);
            mes.setAbrevMes(userBean.getAbrevMes(i));
            mes.setNombreMes(userBean.getNombreMes(i));
            listMeses.add(mes);
        }
    }
    
    //Getters y Setters
    public Long getIdApp(){
        return currentApp.getId();
    }

    public List<MesVO> getListMeses() {
        return listMeses;
    }

    public void setListMeses( List<MesVO> listMeses) {
        this.listMeses = listMeses;
    }

    
}