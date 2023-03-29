package mx.vw.swf.banner;

import java.io.Serializable;

import javax.annotation.Resource;
import javax.enterprise.context.Dependent;
import javax.enterprise.inject.Produces;
import javax.sql.DataSource;

import liquibase.integration.cdi.CDILiquibaseConfig;
import liquibase.integration.cdi.annotations.LiquibaseType;
import liquibase.resource.ClassLoaderResourceAccessor;
import liquibase.resource.ResourceAccessor;

@Dependent
public class LiquibaseProducer implements Serializable {
    private static final long serialVersionUID = 1L;
    
    @Resource (lookup="java:jboss/datasources/bannerLiquiBaseDS")
    private DataSource dataSrc;
    
    @Produces @LiquibaseType
    public CDILiquibaseConfig createConfig() {
        CDILiquibaseConfig config = new CDILiquibaseConfig();
        config.setChangeLog("liquibase/ddl-"+System.getProperty("bannerLiquibaseEnvironment")+".xml");
        return config;
    }

    @Produces @LiquibaseType
    public DataSource createDataSource() {
        return dataSrc;
    }

    @Produces @LiquibaseType
    public ResourceAccessor create() {
        return new ClassLoaderResourceAccessor(getClass().getClassLoader());
    }

}
