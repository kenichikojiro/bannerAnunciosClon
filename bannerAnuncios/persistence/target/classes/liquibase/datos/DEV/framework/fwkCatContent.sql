ID_APP^ID_ADMIN^KEY_VALUE^VALUE^DESCRIPTION^CREATED_ON^CREATED_BY^UPDATED_ON^UPDATED_BY^STATUS

#--Creacion de FwkCatContents - Acceso
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.^^Parámetros de configuración para el acceso al sistema en modo de pruebas.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.AutoRegistro^false^Parámetros de configuración para determinar estatus de usuario en AutoRegistro.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.correoE^banner@vw.com.mx^Correo electrónico a emplear en un acceso en modo de pruebas.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.ipProduccion^https://10.148.13.54^Dirección IP del TAM de producción^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.accesoMenuPruebas^true^Indica si debe emplearse acceso de pruebas o validado por TAM^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.iplocal^https://localhost^Dirección IP del servidor de pruebas locales^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.hostnamePruebas^lvmxdeswp^Nombre del host de Pruebas de Usuario de SWF^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.hostnameIntegracion^lvmxfabswp^Nombre del host de Integración de Usuario de SWF^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.hostnameDesarrollo^CAXLP9228GSS,CAX-PRES77,CAX-PRES78,CAXL-HPSF03^Nombre de los equipos de desarrollo^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.ipPruebasUsuario^https://10.148.10.88^Dirección IP del servidor de pruebas de usuario^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.ipIntegracion^https://10.148.10.195^Dirección IP del servidor de integración^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.UsuarioPruebas.nc^1^Número de control a emplear durante un acceso de pruebas^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.TipoIngreso^4^Parámetro para tipo de ingreso a la aplicación: 1. Ingreso en modo desarrollo, 2. Ingreso con Active Directory, 3. Ingreso con Webseal/ISAM, 4.Ingreso con selección de usuario sin contraseña^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.PeriodoEstabilizacion^true^Parámetro de configuración en periodo de estabilizacion false cuando esta en produccion^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^acceso.reemplazosDeCorreo^true^Parámetro de reemplazo de correo cuando es ambientes no productivos^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creacion de FwkCatContents - BaseApp - Mail
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^mail.^^Parámetros de configuración y conexión al servidor de correos en sus componentes generales o framework.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^mail.smtp.fromMail^banner@vw.com.mx^Correo electrónico que se emplea como firma de quien envía^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^mail.smtp.Charset^ISO-8859-1^Codigo de página a emplear en el envío de correos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^mail.smtp.requieresUsrPwd^false^Indica si se requiere el usuario y password por parte del servidor^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^mail.smtp.port^25^Puerto de conexión al servidor de correo^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^mail.smtp.host^internalrelay.vwm.na.vwg^Nombre del servidor de correo^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^mail.smtp.debug^true^Indica si debe emplearse modo debug durante el envío de correos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^mail.smtp.ssl.enable^false^Indica si está habilitado el protocolo SSL en el servidor^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^mail.smtp.saveToDb^true^Indica si debe guardarse los correos que no hayan sido enviados en la base de datos^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creacion de FwkCatContents - BaseApp - Msg
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^msg.^^Parámetros de configuración de mensajeo del sistema en sus componentes generales o framework.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^msg.msgCountry^MX^Código de país para manejo de mensajes^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^msg.msgLanguage^es^Código de idioma para manejo de mensajes^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^msg.StackTrace^true^Indica si debe desplegarse el stacktrace de las excepciones o no^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^msg.DBProvider^SqlServer^Proveedor de la BD para el manejo de mensajes^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^msg.showSQL^true^Indica si debe mostrar el SQL en las excepciones o no^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^msg.pathToResources^https://localhost/baseapp-files/resource/^Ruta de acceso a los recursos estáticos del sistema^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creacion de FwkCatContents - BaseApp - Log
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.^^Parámetros de configuración de loggeo de la aplicación en sus componentes generales o framework.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.ConsolePattern^%5p - %m%n^Patrón de mensaje desplegado en el log^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.FileDatePattern^'.'''yyyy-MM-dd-a^Formato de la fecha empleado en el archivo^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.FILENAME^baseapp.log^Nombre del archivo log^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.LEVEL^INFO^Nivel de loggeo a emplear^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.MaxMessageLength^[NULL]^Máxima longitud de mensajes a registrar^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.MaxStackTraceLength^[NULL]^Máxima longitud de pila de errores a registrar^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.PackageStartsWith^mx.vw.^Cadena inicial del nombre de paquetes a detectar errores^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.PATH^/swf/baseapp/log/^ruta donde colocar los archivos log^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.SaveToDB^true^Indica si debe guardarse la información de log en la base de datos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^log.STACKTRACE^true^Indica si debe mostrarse la pila de errores en los mensajes o no^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creacion de FwkCatContents - BaseApp - Rutas
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.^^Parámetros de configuración de rutas de los diferentes recursos del sistema.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.Estaticos^https://10.148.10.195/baseapp-files/^Indica la ruta base de acceso a los archivos estáticos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.Estaticos.Reportes^https://10.148.10.195/baseapp-files/^Indica la ruta base de acceso a los archivos estáticos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.ayuda^ayuda^Ruta de archivos de ayuda, complementar con ruta estaticos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.CSS^css^Ruta de archivos de css, complementar con ruta estaticos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.contextoBase^/banner-web/^Nombre del contexto base de la aplicación^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.Exit^AutenticacionLSvlt^Nombre del servlet de logout, debe complementarse con el contexto base^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.ExitRedirect^https://ipservidor/pkmslogout?filename=testlogout.html^Nombre de la página para cerrar sesión en TAM, otorgado por AMS^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.Imagen^img^Ruta de archivos de imagen, complementar con ruta estaticos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.JQW^jqwidgets^Ruta de acceso a jqwidgets, complementar con ruta estaticos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.LoginError^baseapp/AccesoInvalido.jsf^Pantalla a mostrar cuando no se tiene acceso al recurso, complementar con el contexto base^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.LoginSuccess^baseapp/main.jsf^Pantalla principal del sistema, complementar con el contexto base^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.LogoVW^https://vw.com.mx^URL al que se redirige cuando se oprime el logotipo de VWM^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.Reportes^https://10.148.10.195/baseapp-files/reportes^Ruta de acceso a los reportes, complementar con ruta estaticos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.Sistema^https://localhost^Ruta base del sistema para redireccionamiento, complementar con ruta de contexto base^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.SWFactory^https://portalvwm.vwm.na.vwg/web/software-factory/inicio^URL al que se redirige cuando se oprime el vínculo de Software Factory^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.Resources^resource^Ruta de acceso a los archivos de recursos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^rutas.LoginPerfil^https://localhost/banner-web/baseapp/login.xhtml^Ruta de acceso a la pantalla de Login usando diferentes perfiles^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creacion de FwkCatContents - BaseApp - Timer
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF') )^timer.^^Parámetros del controlador de timers del sistema.^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creacion de FwkCatContents - BaseApp - Timer Controller
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF') )^timer.Controller.Intervalo^300^Intervalo en segundos para siguiente ejecucion del controlador de timers, <= 0 ocupa 5 * 60 (5 minutos)^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creacion de FwkCatContents - BaseApp - Timer EnvioPendiente
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.^^Parámetros de configuración del timer de envío de correos pendientes^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.Control^stopped^start = iniciar|stop = detener|started = servicio iniciado|stopped = servicio detenido^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.Enabled^true^Indica si el timer debe activarse o dejarse inactivo, cuando no está activo no indicará que deba ejecutar el método execute^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.ForceShut^false^False permance en ejecucion / True se detendra el servicio^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.DiaEspecifico^false^Si es true considerar parametro del Dia^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.Dia^-1^Dia de ejecucion de Timer, revisar parametro DiaEspecifico^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.Hora^-1^Hora de ejecucion de Timer, < 0 = misma hora^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.Minuto^-1^Minuto de ejecucion de Timer, < 0 = mismo minuto^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.Segundo^-1^Segundo de ejecucion de Timer, < 0 = mismos segundos mas 10^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^timer.EnvioPendiente.Intervalo^300^Intervalo en segundos para siguiente ejecuci???n, <= 0 ocupa 5 * 60 (5 minutos)^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creacion de FwkCatContents - BaseApp - App
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^app.DefaultTableRows^15^Número predeterminado de registros a mostrar en las tablas de datos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^app.ReloadResource^false^Indica si debe recargarse los recursos de la aplicación de forma automática en cada petición^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('BASE_APP'))^(select dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF'))^app.Timeout^18^Indica el tiempo de expiración de sesión^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creación de FwkCatContents - SWF - Mail
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^mail.^^Parámetros de configuración y conexión al servidor de correos en sus componentes generales o framework.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^mail.smtp.fromMail^banner@vw.com.mx^Correo electrónico que se emplea como firma de quien envía^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^mail.smtp.Charset^ISO-8859-1^Codigo de página a emplear en el envío de correos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^mail.smtp.requieresUsrPwd^false^Indica si se requiere el usuario y password por parte del servidor^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^mail.smtp.port^25^Puerto de conexión al servidor de correo^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^mail.smtp.host^internalrelay.vwm.na.vwg^Nombre del servidor de correo^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^mail.smtp.debug^true^Indica si debe emplearse modo debug durante el envío de correos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^mail.smtp.ssl.enable^false^Indica si está habilitado el protocolo SSL en el servidor^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^mail.smtp.saveToDb^true^Indica si debe guardarse los correos que no hayan sido enviados en la base de datos^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creación de FwkCatContents - SWF - Msg
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^msg.^^Parámetros de configuración de mensajeo del sistema en sus componentes generales o framework.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^msg.msgCountry^MX^Código de país para manejo de mensajes^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^msg.msgLanguage^es^Código de idioma para manejo de mensajes^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^msg.StackTrace^true^Indica si debe desplegarse el stacktrace de las excepciones o no^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^msg.DBProvider^SqlServer^Proveedor de la BD para el manejo de mensajes^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^msg.showSQL^true^Indica si debe mostrar el SQL en las excepciones o no^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^msg.pathToResources^https://localhost/baseapp-files/resource/^Ruta de acceso a los recursos estáticos del sistema^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creación de FwkCatContents - SWF - Log
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.^^Parámetros de configuración de loggeo de la aplicación en sus componentes generales o framework.^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.ConsolePattern^%5p - %m%n^Patrón de mensaje desplegado en el log^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.FileDatePattern^'.'''yyyy-MM-dd-a^Formato de la fecha empleado en el archivo^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.FILENAME^swf.log^Nombre del archivo log^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.LEVEL^INFO^Nivel de loggeo a emplear^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.MaxMessageLength^[NULL]^Máxima longitud de mensajes a registrar^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.MaxStackTraceLength^[NULL]^Máxima longitud de pila de errores a registrar^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.PackageStartsWith^mx.vw.^Cadena inicial del nombre de paquetes a detectar errores^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.PATH^/swf/baseapp/log/^ruta donde colocar los archivos log^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.SaveToDB^true^Indica si debe guardarse la información de log en la base de datos^CURRENT_TIMESTAMP^BASE_APP^^^1
(select dbo.NUM_SISTEMA('SWF'))^(select dbo.NUM_CATALOGO('SWF','PropiedadesSWF'))^log.STACKTRACE^true^Indica si debe mostrarse la pila de errores en los mensajes o no^CURRENT_TIMESTAMP^BASE_APP^^^1


#--Creación de FwkCatContents - BANNER - Mail
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^mail.^^Parámetros de configuración y conexión al servidor de correos en sus componentes generales o framework.^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^mail.smtp.fromMail^BANNER@vw.com.mx^Correo electrónico que se emplea como firma de quien envía^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^mail.smtp.Charset^ISO-8859-1^Codigo de página a emplear en el envío de correos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^mail.smtp.requieresUsrPwd^false^Indica si se requiere el usuario y password por parte del servidor^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^mail.smtp.port^25^Puerto de conexión al servidor de correo^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^mail.smtp.host^internalrelay.vwm.na.vwg^Nombre del servidor de correo^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^mail.smtp.debug^true^Indica si debe emplearse modo debug durante el envío de correos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^mail.smtp.ssl.enable^false^Indica si está habilitado el protocolo SSL en el servidor^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^mail.smtp.saveToDb^true^Indica si debe guardarse los correos que no hayan sido enviados en la base de datos^CURRENT_TIMESTAMP^BANNER^^^1

#--Creación de FwkCatContents - BANNER - Msg
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^msg.^^Parámetros de configuración de mensajeo del sistema en sus componentes generales o framework.^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^msg.msgCountry^MX^Código de país para manejo de mensajes^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^msg.msgLanguage^es^Código de idioma para manejo de mensajes^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^msg.StackTrace^true^Indica si debe desplegarse el stacktrace de las excepciones o no^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^msg.DBProvider^SqlServer^Proveedor de la BD para el manejo de mensajes^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^msg.showSQL^true^Indica si debe mostrar el SQL en las excepciones o no^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^msg.pathToResources^https://localhost/banner-files/resource/^Ruta de acceso a los recursos estáticos del sistema^CURRENT_TIMESTAMP^BANNER^^^1

#--Creación de FwkCatContents - BANNER - Log
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.^^Parámetros de configuración de loggeo de la aplicación en sus componentes generales o framework.^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.ConsolePattern^%5p - %m%n^Patrón de mensaje desplegado en el log^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.FileDatePattern^'.'''yyyy-MM-dd-a^Formato de la fecha empleado en el archivo^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.FILENAME^banner.log^Nombre del archivo log^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.LEVEL^INFO^Nivel de loggeo a emplear^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.MaxMessageLength^[NULL]^Máxima longitud de mensajes a registrar^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.MaxStackTraceLength^[NULL]^Máxima longitud de pila de errores a registrar^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.PackageStartsWith^mx.vw.^Cadena inicial del nombre de paquetes a detectar errores^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.PATH^/swf/banner/log/^ruta donde colocar los archivos log^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.SaveToDB^true^Indica si debe guardarse la información de log en la base de datos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^log.STACKTRACE^true^Indica si debe mostrarse la pila de errores en los mensajes o no^CURRENT_TIMESTAMP^BANNER^^^1

#--Creación de FwkCatContents - BANNER - Rutas
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.^^Parámetros de configuración de rutas de los diferentes recursos del sistema.^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.Estaticos^https://10.148.10.195/banner-files/^Indica la ruta base de acceso a los archivos estáticos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.Estaticos.Reportes^https://10.148.10.195/banner-files/^Indica la ruta base de acceso a los archivos estáticos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.ayuda^ayuda^Ruta de archivos de ayuda, complementar con ruta estaticos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.CSS^css^Ruta de archivos de css, complementar con ruta estaticos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.contextoBase^/banner-web/^Nombre del contexto base de la aplicación^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.Exit^AutenticacionLSvlt^Nombre del servlet de logout, debe complementarse con el contexto base^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.ExitRedirect^https://ipservidor/pkmslogout?filename=testlogout.html^Nombre de la página para cerrar sesión en TAM, otorgado por AMS^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.Imagen^img^Ruta de archivos de imagen, complementar con ruta estaticos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.JQW^jqwidgets^Ruta de acceso a jqwidgets, complementar con ruta estaticos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.LoginError^baseapp/AccesoInvalido.jsf^Pantalla a mostrar cuando no se tiene acceso al recurso, complementar con el contexto base^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.LoginSuccess^baseapp/main.jsf^Pantalla principal del sistema, complementar con el contexto base^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.LogoVW^https://vw.com.mx^URL al que se redirige cuando se oprime el logotipo de VWM^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.Reportes^https://10.148.10.195/banner-files/reportes^Ruta de acceso a los reportes, complementar con ruta estaticos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.Sistema^https://localhost^Ruta base del sistema para redireccionamiento, complementar con ruta de contexto base^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.SWFactory^https://portalvwm.vwm.na.vwg/web/software-factory/inicio^URL al que se redirige cuando se oprime el vínculo de Software Factory^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.Resources^resource^Ruta de acceso a los archivos de recursos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^rutas.LoginPerfil^https://localhost/banner-web/baseapp/login.xhtml^Ruta de acceso a la pantalla de Login usando diferentes perfiles^CURRENT_TIMESTAMP^BASE_APP^^^1

#--Creación de FwkCatContents - BANNER - App
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^app.DefaultTableRows^15^Número predeterminado de registros a mostrar en las tablas de datos^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^app.ReloadResource^false^Indica si debe recargarse los recursos de la aplicación de forma automática en cada petición^CURRENT_TIMESTAMP^BANNER^^^1
(select dbo.NUM_SISTEMA('BANNER'))^(select dbo.NUM_CATALOGO('BANNER','PropiedadesSWF'))^app.Timeout^18^Indica el tiempo de expiración de sesión^CURRENT_TIMESTAMP^BANNER^^^1