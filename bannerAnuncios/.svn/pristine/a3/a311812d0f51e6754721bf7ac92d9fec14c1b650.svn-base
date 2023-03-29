/* Create Tables */
CREATE TABLE "SEG_PERFIL"
(
	"ID" NUMBER(5) NOT NULL,    -- Identificador del perfil dentro del sistema.
	"PERFIL" VARCHAR2(50) NOT NULL,    -- Nombre del perfil en el sistema, es una cadena �nica dentro de la tabla.
	"ESTATUS" NUMBER(1) DEFAULT 1 NOT NULL,    -- Estatus del perfil en el sistema, valores posibles 0=inactivo, 1=activo. Si est� inactivo el perfil sus permisos no deben considerarse.
	"DESCRIPCION" VARCHAR2(250) DEFAULT '' NULL    -- Descripci�n del perfil en el sistema, este valor se ocupa para generar el manual de user management.
)
;

CREATE TABLE "SEG_PERFIL_USR"
(
	"IDUSUARIO" NUMBER(10) NOT NULL,    -- Identificador del usuario en el sistema, el usuario debe estar registrado en SEG_Usuario
	"IDPERFIL" NUMBER(5) NOT NULL    -- Identificador del perfil de usuario que se asigna, debe estar registrado en la tabla SEG_Perfil
)
;

CREATE TABLE "SEG_PERMISO"
(
	"ID" NUMBER(5) NOT NULL,    -- Identificador del permiso en el sistema.
	"PERMISO" VARCHAR2(150),    -- Nombre del permiso en el sistema, posteriormente se asignar� a los perfiles.
	"ESTATUS" NUMBER(1) DEFAULT 1 NOT NULL,    -- Estatus del permiso en el sistema, valores posibles 0=inactivo, 1=activo. Si est� inactivo el permiso no debe agregarse a los accesos del usuario.
	"MOSTRARENMENU" NUMBER(1) DEFAULT 0 NOT NULL, -- Estatus que indica si debe mostrarse el permiso en la pantalla de asignaci�n de permisos de la configuracion del menu 
	"DESCRIPCION" VARCHAR2(250) DEFAULT '' NULL    -- Descripci�n del permiso en el sistema, este valor se ocupa para generar el manual de user management.
)
;

CREATE TABLE "SEG_PERMISO_PERFIL"
(
	"IDPERFIL" NUMBER(5) NOT NULL,    -- Identificador del perfil al que se asocia el permiso
	"IDPERMISO" NUMBER(5) NOT NULL    -- Identificador del permiso asociado al perfil.
)
;

CREATE TABLE "SEG_USUARIO"
(
	"ID" NUMBER(10) NOT NULL,    -- Identificador del usuario en el sistema, permite vincular informaci�n en el sistema
	"USER_ID" VARCHAR2(20) NOT NULL,    -- Identificador del usuario en el sistema, empleado solo para la validaci�n en el directorio activo y obtener el ID para el resto de las operaciones.
	"NOMBREUSUARIO" VARCHAR2(75),    -- Nombre del usuario.
	"APPATERNO" VARCHAR2(75),    -- Apellido Paterno del usuario
	"APMATERNO" VARCHAR2(75),    -- Apellido Materno del usuario
	"CORREOE" VARCHAR2(100),    -- Correo electr�nico del usuario
	"ESTATUS" NUMBER(1) DEFAULT 1 NOT NULL    -- Estatus del usuario en el sistema, valores posibles 0=inactivo, 1=activo
)
;

CREATE TABLE "FWK_ACCESO_USR"
(
	"ID_ACCESO" NUMBER(12) NOT NULL,
	"ID_NUMCONTROL" NUMBER(10) NOT NULL,
	"FH_ACCESO" DATE NOT NULL,
	"FH_SALIDA" DATE
)
;

CREATE TABLE "FWK_ACTION_ITEM"
(
	"ID" NUMBER(5) NOT NULL,
	"ENABLED" NUMBER(1) DEFAULT 1 NOT NULL,
	"ICONURL" VARCHAR2(100),
	"LABEL" VARCHAR2(255),
	"URL" VARCHAR2(255),
	"PARENT_ID" NUMBER(5),
	"ORDERHINT" NUMBER(8),
	"ID_PERMISO" NUMBER(5)
)
;

CREATE TABLE "FWK_CAT_ADMIN"
(
	"ID_ADMIN" NUMBER(6) NOT NULL,
	"ID_APP" NUMBER(4) NOT NULL,
	"DESCRIPTION" VARCHAR2(100),
	"CREATED_ON" DATE,
	"CREATED_BY" VARCHAR2(15),
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(15),
	"STATUS" NUMBER(1) DEFAULT 1 NOT NULL
)
;

CREATE TABLE "FWK_CAT_APPS"
(
	"ID_APP" NUMBER(4) NOT NULL,
	"APPLICATION_NAME" VARCHAR2(50) NOT NULL,
	"CREATED_ON" DATE,
	"CREATED_BY" VARCHAR2(15),
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(15),
	"STATUS" NUMBER(1) DEFAULT 1 NOT NULL
)
;

CREATE TABLE "FWK_CAT_CONTENT"
(
	"ID_CONTENT" NUMBER(8) NOT NULL,
	"ID_APP" NUMBER(4) NOT NULL,
	"ID_ADMIN" NUMBER(6) NOT NULL,
	"KEY_VALUE" VARCHAR2(75),
	"VALUE" VARCHAR2(150),
	"DESCRIPTION" VARCHAR2(250),
	"CREATED_ON" DATE,
	"CREATED_BY" VARCHAR2(15),
	"UPDATED_ON" DATE,
	"UPDATED_BY" VARCHAR2(15),
	"STATUS" NUMBER(1) DEFAULT 1 NOT NULL
)
;

CREATE TABLE "FWK_CORREO_PEND"
(
	"ID" NUMBER(12) NOT NULL,    -- Identificador del correo pendiente, es un consecutivo.
	"APPS_ID" NUMBER(4) NOT NULL,    -- Identificador de la aplicaci�n al que pertenece el correo pendiente.
	"TSMENSAJE" DATE NOT NULL,    -- Fecha y hora en la que fue enviado el mensaje originalmente.
	"LENVIADO" NUMBER(1) DEFAULT 0 NOT NULL,    -- Estatus que indica si el correo ya fue enviado o sigue pendiente de env�o. 0=No enviado; 1=Enviado.
	"BMENSAJE" BLOB,    -- Datos del correo electr�nico, incluye archivos adjuntos, im�genes y lo necesario para poder enviar posteriormente.
	"TSENVIADO" DATE    -- Fecha y hora de env�o del correo, una vez que se recibe respuesta de haber sido procesado.
)
;

CREATE TABLE "FWK_CORREO_TEMPLATE"
(
	"ID" NUMBER(5) NOT NULL,
	"NUM_CORREO" NUMBER(4) NOT NULL,
	"ID_IDIOMA" NUMBER(5) NOT NULL,
	"APPS_ID" NUMBER(4) NOT NULL,
	"MAILTO" VARCHAR2(200),
	"MAILCC" VARCHAR2(200),
	"MAILBCC" VARCHAR2(200),
	"MAILSUBJECT" VARCHAR2(150),
	"MAILBODY" VARCHAR2(2500),
	"MAILATTACH" VARCHAR2(2500),
	"MAILIMAGES" VARCHAR2(200),
	"FECHACREACION" DATE,
	"USUARIOCREACION" VARCHAR2(20),
	"FECHAACTUALIZA" DATE,
	"USUARIOACTUALIZA" VARCHAR2(20),
	"ESTATUS" NUMBER(1) DEFAULT 1 NOT NULL
)
;

CREATE TABLE "FWK_DBTRACER"
(
	"ID" NUMBER(12) NOT NULL,    -- Identificador del evento que se esta registrando
	"TSEVENTO" DATE NOT NULL,    -- Fecha y hora en la que esta ocurriendo el evento de la base de datos.
	"USERID" VARCHAR2(20) NOT NULL,    -- Identificador del usuario con el que se ingreso al sistema.
	"ESQUEMA" VARCHAR2(50) NOT NULL,    -- Nombre del esquema de la base de datos al cual se esta configurando la trazabilidad.
	"TABLA" VARCHAR2(50) NOT NULL,    -- Nombre de la tabla sobre la cual se esta generando un evento.
	"NIVEL" VARCHAR2(20) NOT NULL,    -- Nivel de trazabilidad configurado en el momento en que ocurre el evento.
	"EVENTO" VARCHAR2(20) NOT NULL,    -- Evento que esta ocurriendo en la base de datos, puede ser insert, rea, update, delete.
	"CAMPOSLLAVE" VARCHAR2(500),    -- Nombres de los campos llave de la tabla de base de datos. No se genera para todos los niveles de trazabilidad.
	"CAMPOS" VARCHAR2(1000),    -- Nombres de los campos de la tabla de base de datos. No se genera para todos los niveles de trazabilidad.
	"TIPODATO" VARCHAR2(1000),    -- Nombres de los tipos de dato de la tabla de base de datos. No se genera para todos los niveles de trazabilidad.
	"NULIDADCAMPOS" VARCHAR2(200),    -- Indicador de la nulidad de cada campo de la tabla de base de datos. No se genera para todos los niveles de trazabilidad.
	"VALORESCAMPOS" VARCHAR2(4000)    -- Valor de cada campo de la tabla de base de datos. No se genera para todos los niveles de trazabilidad.
)
;

CREATE TABLE "FWK_IDIOMA"
(
	"ID" NUMBER(5) NOT NULL,    -- Identificador del idioma.
	"DESCRIPCION" VARCHAR2(100) NOT NULL,    -- Nombre o descripci�n del idioma.
	"COD_IDIOMA" VARCHAR2(3) NOT NULL,    -- C�digo de idioma empleado en los Locale.
	"COD_PAIS" VARCHAR2(3) NOT NULL,    -- C�digo de Pa�s empleado en los Locale.
	"ESTATUS" NUMBER(1) DEFAULT 1 NOT NULL,    -- Indica si el idioma est� activo o no.
	"PREDETERMINADO" NUMBER(1) DEFAULT 0 NOT NULL    -- Indica si es el idioma predeterminado a emplear por la aplicaci�n. Solo puede existir un idioma predeterminado.
	"FORMATO_FECHA" VARCHAR2(20) DEFAULT 'dd/MMM/yyyy' -- Indica el formato predetermiando de fechas para despliegue de información en tablas
)
;

CREATE TABLE "FWK_CADENA_IDIOMA"
(
	"ID" NUMBER(5) NOT NULL,
	"CLAVE" VARCHAR2(100) NOT NULL,
	"ID_IDIOMA" NUMBER(5) NOT NULL,
	"VALOR" VARCHAR2(250) NOT NULL
)
;

CREATE TABLE "FWK_LOGGER"
(
	"ID" NUMBER(12) NOT NULL,
	"APPS_ID" NUMBER(4),
	"TSEVENTO" DATE,
	"TSBASEDATOS" DATE,
	"NIVEL" VARCHAR2(10),
	"CLASE" VARCHAR2(100),
	"METODO" VARCHAR2(100),
	"LINEA" NUMBER(8),
	"MENSAJE" VARCHAR2(1000),
	"STACKTRACE" VARCHAR2(4000),
	"USERID" VARCHAR2(20)
)
;

CREATE TABLE "FWK_PREFERENCIAS_USR"
(
	"ID_NUM_CONTROL" NUMBER(7) NOT NULL,    -- N�mero de control del empleado a guardar sus preferencias.
	"ID_IDIOMA" NUMBER(5),    -- Identificador del idioma seleccionado por el usuario para su aplicaci�n.
	"POSICION_MENU" VARCHAR2(5) DEFAULT 'north' NOT NULL, -- Posici�n seleccionada por el usuario para el men� de opciones
	"TEMPLATE" VARCHAR2(30) DEFAULT 'template' NOT NULL, -- Template que ser� empleado por el usuario en el sistema
	"THEME" VARCHAR2(30) DEFAULT 'aristo' NOT NULL, -- Tema que ser� empleado por el usuario en el sistema
	"FAVORITES" VARCHAR2(100), --Opciones favoritas agregadas por el usuario
	"MENU_TYPE" VARCHAR2(30) DEFAULT 'STACK' --Tipo de menu seleccionado por el usuario, opcion predeterminada apilado
)
;

CREATE TABLE "FWK_TINY_URL"
(
	"ID"                   NUMERIC(10) NOT NULL ,
	"TINY_URL"             VARCHAR2(50) NOT NULL ,
	"FULL_URL"             VARCHAR2(255) NOT NULL ,
	"UN_SOLO_USO"          SMALLINT DEFAULT  0  NOT NULL ,
	"USADO"                SMALLINT DEFAULT  0  NOT NULL ,
	"EXPIRA"               SMALLINT DEFAULT  0  NOT NULL ,
	"FECHA_INICIAL"        DATE NULL ,
	"FECHA_FINAL"          DATE NULL 
);


CREATE TABLE "FWK_LAYOUT_CARGA"
( 
	"ID"                 NUMERIC(10)  NOT NULL ,
	"NOMBRE_LAYOUT"      VARCHAR2(150)  NULL ,
	"ESTATUS"            SMALLINT DEFAULT 1 NOT NULL,
	"NUMERO_LAYOUT"      NUMERIC(5)  NULL ,
	"DESC_LAYOUT"        VARCHAR2(150)  NULL 
);

CREATE TABLE "FWK_LAYOUT_POSICIONES"
( 
	"ID"                 NUMERIC(10)  NOT NULL ,
	"ID_LAYOUT"          NUMERIC(10)  NULL ,
	"ORDEN"              NUMERIC(5)  NULL ,
	"NOMBRE_COLUMNA"     VARCHAR2(50)  NULL ,
	"POSICION_INICIAL"   NUMERIC(5)  NULL ,
	"POSICION_FINAL"     NUMERIC(5)  NULL ,
	"LONGITUD"           NUMERIC(5)  NULL ,
	"TIPO_DATO"          NUMERIC(5)  NULL ,
	"DEFINE_TIPO_VALOR"  SMALLINT DEFAULT 0 NOT NULL,
	"FORMATO_INFORMACION" VARCHAR2(20)  NULL ,
	"NOMBRE_CAMPO"       VARCHAR2(50)  NULL ,
	"OBLIGATORIO"        SMALLINT DEFAULT 0 NOT NULL,
	"ACTIVO"             SMALLINT DEFAULT 1 NOT NULL 
);
