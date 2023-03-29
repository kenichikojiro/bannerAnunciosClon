package mx.vw.swf.banner.vo;

import java.io.Serializable;
import lombok.Data;

@Data
public class MesVO implements Serializable {
    private static final long serialVersionUID = 1L;
    
    private int numMes;
    private String nombreMes;
    private String abrevMes;
    
}
