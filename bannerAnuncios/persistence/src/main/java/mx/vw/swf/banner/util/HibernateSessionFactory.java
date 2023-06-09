package mx.vw.swf.banner.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.Serializable;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.service.ServiceRegistry;

/**
 * Configures and provides access to Hibernate sessions, tied to the current thread of execution. Follows the Thread Local Session pattern, see
 * {@link http://hibernate.org/42.html }.
 */
public class HibernateSessionFactory implements Serializable {
    private static final long serialVersionUID = 1L;
    private static final String ERROR_CREATING_SESSION_FACTORY = "%%%% Error Creating SessionFactory %%%%";
    private static final Logger LOGGER = LoggerFactory.getLogger(HibernateSessionFactory.class);
    /**
     * Location of hibernate.cfg.xml file. Location should be on the classpath as Hibernate uses #resourceAsStream style lookup for its configuration
     * file. The default classpath location of the hibernate config file is in the default package. Use #setConfigFile() to update the location of the
     * configuration file for the current session.
     */
    private static final ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();
    private static org.hibernate.SessionFactory sessionFactory;

    private static Configuration configuration = new Configuration();
    private static ServiceRegistry serviceRegistry;

    static {
        try {
            configuration.configure();
            serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        } catch (Exception e) {
            LOGGER.debug(ERROR_CREATING_SESSION_FACTORY, e);
        }
    }

    private HibernateSessionFactory() {
    }

    /**
     * Returns the ThreadLocal Session instance. Lazy initialize the <code>SessionFactory</code> if needed.
     * 
     * @return Session
     * @throws HibernateException
     */
    public static Session getSession() throws HibernateException {
        Session session = (Session) threadLocal.get();

        if (session == null || !session.isOpen()) {
            if (sessionFactory == null) {
                rebuildSessionFactory();
            }
            session = (sessionFactory != null) ? sessionFactory.openSession() : null;
            threadLocal.set(session);
        }

        return session;
    }

    /**
     * Rebuild hibernate session factory
     * 
     */
    public static void rebuildSessionFactory() {
        try {
            configuration.configure();
            serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        } catch (Exception e) {
            LOGGER.debug(ERROR_CREATING_SESSION_FACTORY, e);
        }
    }

    /**
     * Close the single hibernate session instance.
     * 
     * @throws HibernateException
     */
    public static void closeSession() throws HibernateException {
        Session session = (Session) threadLocal.get();
        threadLocal.set(null);

        if (session != null) {
            session.close();
        }
    }

    /**
     * return session factory
     * 
     */
    public static org.hibernate.SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    /**
     * return hibernate configuration
     * 
     */
    public static Configuration getConfiguration() {
        return configuration;
    }

}