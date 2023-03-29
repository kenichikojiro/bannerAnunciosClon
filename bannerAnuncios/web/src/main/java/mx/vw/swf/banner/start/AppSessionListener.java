package mx.vw.swf.banner.start;

import java.io.Serializable;

import javax.inject.Inject;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import mx.vw.swf.banner.cdi.SessionTimeout;

@WebListener
public class AppSessionListener implements HttpSessionListener, Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = LoggerFactory.getLogger(AppSessionListener.class);
    
    @Inject @SessionTimeout int sessionTimeout;
    
    @Override
    public void sessionCreated( HttpSessionEvent event) {
        //Set session timeout in seconds
        LOGGER.info("Setting timeout to: {} minutes.", sessionTimeout);
        event.getSession().setMaxInactiveInterval(sessionTimeout * 60);
        LOGGER.info("Timeout set to: {} minutes.", sessionTimeout);
    }
    
    @Override
    public void sessionDestroyed( HttpSessionEvent se) {
        //Metodo empleado al momento de destruir una sesion
    }
}
