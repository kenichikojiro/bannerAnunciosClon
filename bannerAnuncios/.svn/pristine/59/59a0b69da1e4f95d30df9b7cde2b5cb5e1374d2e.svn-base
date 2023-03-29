/* Create Comments */

--Comentarios de Tabla: FWK_ACCESO_USR
COMMENT ON TABLE "FWK_ACCESO_USR" IS 'Esta tabla almacena los diferentes accesos que un usuario realiza en el sistema, así como también la fecha y hora de salida del mismo.';
COMMENT ON COLUMN "FWK_ACCESO_USR"."ID_ACCESO" IS 'Identificador del evento de acceso';
COMMENT ON COLUMN "FWK_ACCESO_USR"."ID_NUMCONTROL" IS 'Identificador del usuario que ingresa al sistema.';
COMMENT ON COLUMN "FWK_ACCESO_USR"."FH_ACCESO" IS 'Fecha y hora de inicio de sesión del usuario en el sistema.';
COMMENT ON COLUMN "FWK_ACCESO_USR"."FH_SALIDA" IS 'Fecha y hora de fin de sesión del usuario en el sistema, puede ser nulo si el usuario no cierra su sesión adecuadamente.';
    
--Comentarios de Tabla: FWK_ACTION_ITEM
COMMENT ON TABLE "FWK_ACTION_ITEM" IS 'Esta tabla almacena la información de la estructura del menú de opciones, el estado activo o inactivo, la dependencia entre elementos de menú, el orden de presentación y el permiso asociado a dicha opción de menú.';
COMMENT ON COLUMN "FWK_ACTION_ITEM"."ID" IS 'Identificador de la opción de menú.';
COMMENT ON COLUMN "FWK_ACTION_ITEM"."ENABLED" IS 'Indica si la opción de menú está activa o no.';
COMMENT ON COLUMN "FWK_ACTION_ITEM"."ICONURL" IS 'Url del icono a emplear en la opción de menú.';
COMMENT ON COLUMN "FWK_ACTION_ITEM"."LABEL" IS 'Etiqueta que debe ser empleada en la opción de menú, equivale a una cadena del sistema para opción multi idioma.';
COMMENT ON COLUMN "FWK_ACTION_ITEM"."URL" IS 'Url al que debe dirigirse el sistema cuando eligen la opción del menú.';
COMMENT ON COLUMN "FWK_ACTION_ITEM"."PARENT_ID" IS 'Identificador de la opción de menú de la cual depende esta opción.';
COMMENT ON COLUMN "FWK_ACTION_ITEM"."ORDERHINT" IS 'Orden en que debe presentarse la opción de menú dentro del menú de opciones, dos dígitos por cada nivel de menú.';
COMMENT ON COLUMN "FWK_ACTION_ITEM"."ID_PERMISO" IS 'Identificador del permiso en el sistema que permite el acceso a esta opción de menú.';
    
--Comentarios de Tabla: FWK_CADENA_IDIOMA
COMMENT ON TABLE "FWK_CADENA_IDIOMA" IS 'Esta tabla almacena todas las cadenas del sistema en los diferentes idiomas registrados en el sistema.';
COMMENT ON COLUMN "FWK_CADENA_IDIOMA"."ID" IS 'Identificador de la cadena dentro del sistema, es un número consecutivo';
COMMENT ON COLUMN "FWK_CADENA_IDIOMA"."CLAVE" IS 'Clave de texto con la que se conoce la cadena del sistema, no debe cambiarse porque los programas tienen asociado este identificador.';
COMMENT ON COLUMN "FWK_CADENA_IDIOMA"."ID_IDIOMA" IS 'Identificador del idioma dentro del sistema al cual pertenece la cadena.';
COMMENT ON COLUMN "FWK_CADENA_IDIOMA"."VALOR" IS 'Valor de la cadena en el idioma seleccionado, es el texto que desplegará el sistema.';
    
--Comentarios de Tabla: FWK_CAT_ADMIN
COMMENT ON TABLE "FWK_CAT_ADMIN" IS 'Esta tabla almacena los diferentes grupos de información que pueden registrarse en el sistema, cada grupo debe estar asociado a una aplicación.';
COMMENT ON COLUMN "FWK_CAT_ADMIN"."ID_ADMIN" IS 'Identificador del catálogo dentro del sistema.';
COMMENT ON COLUMN "FWK_CAT_ADMIN"."ID_APP" IS 'Identificador de la aplicación a la cual pertenece el catálogo del sistema.';
COMMENT ON COLUMN "FWK_CAT_ADMIN"."DESCRIPTION" IS 'Nombre del catálogo que se registra en el sistema.';
COMMENT ON COLUMN "FWK_CAT_ADMIN"."CREATED_ON" IS 'Fecha de creación del registro.';
COMMENT ON COLUMN "FWK_CAT_ADMIN"."CREATED_BY" IS 'Usuario que realizó el registro inicial de información.';
COMMENT ON COLUMN "FWK_CAT_ADMIN"."UPDATED_ON" IS 'Fecha de actualización de la información.';
COMMENT ON COLUMN "FWK_CAT_ADMIN"."UPDATED_BY" IS 'Usuario que realizó la actualización de la información.';
COMMENT ON COLUMN "FWK_CAT_ADMIN"."STATUS" IS 'Estatus del catálogo dentro del sistema, un catálogo con estatus cero no estará disponible.';
    
--Comentarios de Tabla: FWK_CAT_APPS
COMMENT ON TABLE "FWK_CAT_APPS" IS 'Esta tabla contiene la información de las aplicaciones que se registran en el sistema. Esto permitirá tener configurados diferentes sistemas en la misma base de datos.';
COMMENT ON COLUMN "FWK_CAT_APPS"."ID_APP" IS 'Identificador de la aplicación dentro del sistema, se pueden tener registradas más de una aplicación.';
COMMENT ON COLUMN "FWK_CAT_APPS"."APPLICATION_NAME" IS 'Nombre de la aplicación, este valor no debe ser cambiado ya que es la forma de realizar la búsqueda del identificador para poder rastrear el resto de la información relacionada.';
COMMENT ON COLUMN "FWK_CAT_APPS"."CREATED_ON" IS 'Fecha de creación del registro.';
COMMENT ON COLUMN "FWK_CAT_APPS"."CREATED_BY" IS 'Usuario que realizó el registro inicial de información.';
COMMENT ON COLUMN "FWK_CAT_APPS"."UPDATED_ON" IS 'Fecha de actualización del registro.';
COMMENT ON COLUMN "FWK_CAT_APPS"."UPDATED_BY" IS 'Usuario que realizó la actualización del registro.';
COMMENT ON COLUMN "FWK_CAT_APPS"."STATUS" IS 'Estatus del registro, una aplicación con estatus cero estará inactiva dentro del sistema.';
    
--Comentarios de Tabla: FWK_CAT_CONTENT
COMMENT ON TABLE "FWK_CAT_CONTENT" IS 'Esta tabla almacena la información de cada grupo de información registrado para una aplicación. La llave de la información y el valor no pueden repetirse para el mismo grupo de información de un sistema.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."ID_CONTENT" IS 'Identificador del contenido dentro del sistema.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."ID_APP" IS 'Identificador de la aplicación a la cual pertenece el contenido que se está registrando.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."ID_ADMIN" IS 'Identificador del catálogo al cual pertenece el contenido que se está registrando.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."KEY_VALUE" IS 'Identificador o llave primaria del contenido para el catálogo y aplicación indicados.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."VALUE" IS 'Valor del contenido registrado para el catálogo y aplicación indicados.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."DESCRIPTION" IS 'Descripción del contenido registrado para el catálogo y aplicación indicados.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."CREATED_ON" IS 'Fecha de creación del contenido.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."CREATED_BY" IS 'Usuario que realizó el registro inicial de información en el sistema.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."UPDATED_ON" IS 'Fecha de actualización de la información del contenido.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."UPDATED_BY" IS 'Usuario que realizó la modificación de información dentro del sistema.';
COMMENT ON COLUMN "FWK_CAT_CONTENT"."STATUS" IS 'Estatus del contenido dentro del sistema, un contenido con estatus cero no estará disponible para selección.';
    
--Comentarios de Tabla: FWK_CORREO_PEND
COMMENT ON TABLE "FWK_CORREO_PEND" IS 'Esta tabla almacena los correos que por alguna razón no fueron enviados en su primer intento, existe un timer que toma todos los pendientes, y en cuanto son enviados cambia su bansera lEnviado a valor 1.';
COMMENT ON COLUMN "FWK_CORREO_PEND"."ID" IS 'Identificador del correo pendiente de enviar.';
COMMENT ON COLUMN "FWK_CORREO_PEND"."APPS_ID" IS 'Identificador de la aplicación a la cual pertenece el correo pendiente de envío.';
COMMENT ON COLUMN "FWK_CORREO_PEND"."TSMENSAJE" IS 'Fecha y hora del mensaje que quedó pendiente de enviar.';
COMMENT ON COLUMN "FWK_CORREO_PEND"."LENVIADO" IS 'Indica si el mensaje ya fue enviado o aún está pendiente de enviarse.';
COMMENT ON COLUMN "FWK_CORREO_PEND"."BMENSAJE" IS 'Mensaje que fue generado en su momento y no pudo enviarse, ya tiene formato de arreglo de bytes.';
COMMENT ON COLUMN "FWK_CORREO_PEND"."TSENVIADO" IS 'Fecha y hora en la que fue enviado el mensaje después de que originalmente no se pudo enviar.';
    
--Comentarios de Tabla: FWK_CORREO_TEMPLATE
COMMENT ON TABLE "FWK_CORREO_TEMPLATE" IS 'Esta tabla almacena los diferentes templates de correo que se emplean en el sistema.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."ID" IS 'Identificador del template de correo';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."NUM_CORREO" IS 'Número de correo, por este número se reliza la búsqueda del template en el sistema, independientemente del Id que haya asignado la base de datos.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."ID_IDIOMA" IS 'Identificador del idioma al que pertenece el template de correo.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."APPS_ID" IS 'Identificador de la aplicación a la que pertenece el template de correo.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."MAILTO" IS 'Destinatario o lista de destinatarios predeterminados para el envío de correo, puede ser nulo, si es una lista se separa por comas.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."MAILCC" IS 'Destinatario o lista de destinatarios predeterminados que serán copiados para el envío de correo, puede ser nulo, si es una lista se separa por comas.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."MAILBCC" IS 'Destinatario o lista de destinatarios que recibirán una copia oculta en el envío de correo, puede ser nulo, si es una lista se separa por comas.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."MAILSUBJECT" IS 'Título del correo que será enviado.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."MAILBODY" IS 'Contenido del correo que será enviado, de manera predeterminada es un correo de texto, a menos que inicie con el tag <html>';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."MAILATTACH" IS 'Lista de documentos que serán adjuntadas en el correo, se mantiene por compatibilidad, la forma de adjuntar es de manera dinámica actualmente.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."MAILIMAGES" IS 'Lista de imágenes que serán adjuntadas en el correo, se les asigna un identificador de forma predeterminada.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."FECHACREACION" IS 'Fecha de creación del template de correo.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."USUARIOCREACION" IS 'Usuario que crea el template de correo.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."FECHAACTUALIZA" IS 'Fecha de actualización del template de correo.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."USUARIOACTUALIZA" IS 'Usuario que actualiza el template de correo.';
COMMENT ON COLUMN "FWK_CORREO_TEMPLATE"."ESTATUS" IS 'Estatus del template de correo, un template con estatus cero no será enviado.';
    
--Comentarios de Tabla: FWK_DBTRACER
COMMENT ON TABLE "FWK_DBTRACER" IS 'Esta tabla almacena los diferentes movimientos registrados en la base de datos de acuerdo a su configuración de nivel de confidencialidad de la información.';
COMMENT ON COLUMN "FWK_DBTRACER"."ID" IS 'Identificador del registro de trazabilidad.';
COMMENT ON COLUMN "FWK_DBTRACER"."TSEVENTO" IS 'Fecha y hora en que ocurre el evento.';
COMMENT ON COLUMN "FWK_DBTRACER"."USERID" IS 'Identificador del usuario que ingresó al sistema cuando ocurre el evento.';
COMMENT ON COLUMN "FWK_DBTRACER"."ESQUEMA" IS 'Esquema al que pertenece la tabla que registra el evento.';
COMMENT ON COLUMN "FWK_DBTRACER"."TABLA" IS 'Tabla en la cual se registra el evento.';
COMMENT ON COLUMN "FWK_DBTRACER"."NIVEL" IS 'Nivel de seguridad configurado para la tabla.';
COMMENT ON COLUMN "FWK_DBTRACER"."EVENTO" IS 'Evento que ocurre en la tabla indicada.';
COMMENT ON COLUMN "FWK_DBTRACER"."CAMPOSLLAVE" IS 'Lista de campos llave existentes al momento en que ocurre el evento.';
COMMENT ON COLUMN "FWK_DBTRACER"."CAMPOS" IS 'Lista de campos existentes al momento en que ocurre el evento.';
COMMENT ON COLUMN "FWK_DBTRACER"."TIPODATO" IS 'Tipos de dato de los campos al momento en que ocurre el evento.';
COMMENT ON COLUMN "FWK_DBTRACER"."NULIDADCAMPOS" IS 'Opciones de nulidad de los campos al momento en que ocurre el evento.';
COMMENT ON COLUMN "FWK_DBTRACER"."VALORESCAMPOS" IS 'Valores que contenían los campos al momento en que ocurre el evento.';
    
--Comentarios de Tabla: FWK_IDIOMA
COMMENT ON TABLE "FWK_IDIOMA" IS 'Esta tabla almacena los diferentes idiomas que pueden emplearse en el sistema.';
COMMENT ON COLUMN "FWK_IDIOMA"."ID" IS 'Identificador del idioma dentro del sistema.';
COMMENT ON COLUMN "FWK_IDIOMA"."DESCRIPCION" IS 'Descripción o nombre del idioma empleado para reconocimiento del usuario.';
COMMENT ON COLUMN "FWK_IDIOMA"."COD_IDIOMA" IS 'Código empleado para el idioma indicado, ejemplo es=Español';
COMMENT ON COLUMN "FWK_IDIOMA"."COD_PAIS" IS 'Código de país registrado para el idioma, generalmente son dos letras mayúsculas, ejemplo MX=México';
COMMENT ON COLUMN "FWK_IDIOMA"."ESTATUS" IS 'Indica si el idioma se encuentra activo en el sistema, un idioma con estatus cero estará desactivado.';
COMMENT ON COLUMN "FWK_IDIOMA"."PREDETERMINADO" IS 'Indica si es el idioma predeterminado o no lo es. Solo un registro puede tener Predeterminado igual a uno, los demás por omisión serán cero. Este es el idioma en que se presenta al usuario la aplicación si es que aún no realiza su selección de idioma.';
    
--Comentarios de Tabla: FWK_LAYOUT_CARGA
COMMENT ON TABLE "FWK_LAYOUT_CARGA" IS 'Esta tabla almacena los diferentes layouts de carga que pueden configurarse y emplearse en el sistema';
COMMENT ON COLUMN "FWK_LAYOUT_CARGA"."ID" IS 'Identificador del layout de carga en el sistema.';
COMMENT ON COLUMN "FWK_LAYOUT_CARGA"."NUMERO_LAYOUT" IS 'Número de layout empleado para realizar las selección dentro de los procesos del sistema';
COMMENT ON COLUMN "FWK_LAYOUT_CARGA"."NOMBRE_LAYOUT" IS 'Nombre del layout de carga.';
COMMENT ON COLUMN "FWK_LAYOUT_CARGA"."DESC_LAYOUT" IS 'Descripción del uso del layout dentro del sistema';
COMMENT ON COLUMN "FWK_LAYOUT_CARGA"."ESTATUS" IS 'Estatus del layout de carga en el sistema, valores posibles 0=inactivo, 1=activo. Si está inactivo el layout no debe emplearse.';
    
--Comentarios de Tabla: FWK_LAYOUT_POSICIONES
COMMENT ON TABLE "FWK_LAYOUT_POSICIONES" IS 'Esta tabla almacena los diferentes elementos de un layout de carga';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."ID" IS 'Identificador del elemento del layout de carga';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."ID_LAYOUT" IS 'Identificador del layout de carga al que pertenece el elemento';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."ORDEN" IS 'Orden en que debe emplearse el elemento dentro del layout de carga';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."NOMBRE_COLUMNA" IS 'Nombre que se da a la columna del elemento del layout de carga';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."POSICION_INICIAL" IS 'Posición inicial para la lectura del elemento en un archivo de ancho fijo';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."POSICION_FINAL" IS 'Posición final para la lectura del elemento en un archivo de ancho fijo';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."LONGITUD" IS 'Logitud del elemento en un archivo de ancho fijo';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."TIPO_DATO" IS 'Tipo de dato que debe interpretarse durante la lectura del elemento';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."DEFINE_TIPO_VALOR" IS 'Indica si se debe convertir el elemento al tipo de dato indicado';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."FORMATO_INFORMACION" IS 'Formato con el que viene la información en el layout del archivo';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."NOMBRE_CAMPO" IS 'Nombre del campo al cual se mapeará la información en una clase java';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."OBLIGATORIO" IS 'Indica si es un elemento obligatorio en el archivo de carga';
COMMENT ON COLUMN "FWK_LAYOUT_POSICIONES"."ACTIVO" IS 'Indica si el elemento se encuentra activo dentro del layout de carga';
    
--Comentarios de Tabla: FWK_LOGGER
COMMENT ON TABLE "FWK_LOGGER" IS 'Esta tabla almacena todo el loggeo de mensajes del sistema de acuerdo al nivel configurado en los parámetros.';
COMMENT ON COLUMN "FWK_LOGGER"."ID" IS 'Identificador del registro de loggeo en el sistema.';
COMMENT ON COLUMN "FWK_LOGGER"."APPS_ID" IS 'Identificador de la aplicación a la cual pertenece el evento.';
COMMENT ON COLUMN "FWK_LOGGER"."TSEVENTO" IS 'Fecha y hora en que ocurre el evento.';
COMMENT ON COLUMN "FWK_LOGGER"."TSBASEDATOS" IS 'Fecha y hora del servidor de base de datos.';
COMMENT ON COLUMN "FWK_LOGGER"."NIVEL" IS 'Nivel de loggeo configurado cuando ocurre el evento.';
COMMENT ON COLUMN "FWK_LOGGER"."CLASE" IS 'Nombre de la clase en la cual ocurre el evento.';
COMMENT ON COLUMN "FWK_LOGGER"."METODO" IS 'Método que generó el evento.';
COMMENT ON COLUMN "FWK_LOGGER"."LINEA" IS 'Número de línea en la que se generó el evento.';
COMMENT ON COLUMN "FWK_LOGGER"."MENSAJE" IS 'Mensaje que se arroja en el evento.';
COMMENT ON COLUMN "FWK_LOGGER"."STACKTRACE" IS 'Pila de mensajes generados durante el error.';
COMMENT ON COLUMN "FWK_LOGGER"."USERID" IS 'Identificador del usuario que ingresó al sistema cuando ocurrió el evento.';
    
--Comentarios de Tabla: FWK_PREFERENCIAS_USR
COMMENT ON TABLE "FWK_PREFERENCIAS_USR" IS 'Esta tabla almacena los valores de las preferencias del usuario, entre las preferencias se encuentra el idioma, el template, la posición, el tema empleado y las opciones de menú favoritas.';
COMMENT ON COLUMN "FWK_PREFERENCIAS_USR"."ID_NUM_CONTROL" IS 'Identificador del usuario en el sistema, este identificador es el que se emplea para buscar las preferencias del usuario.';
COMMENT ON COLUMN "FWK_PREFERENCIAS_USR"."ID_IDIOMA" IS 'Identificador del idioma seleccionado por el usuario dentro del sistema.';
COMMENT ON COLUMN "FWK_PREFERENCIAS_USR"."POSICION_MENU" IS 'Indica la posición que debe emplear el menú de acuerdo a las preferencias del usuario, los valores permitidos son north, east, west.';
COMMENT ON COLUMN "FWK_PREFERENCIAS_USR"."TEMPLATE" IS 'Indica el template que debe emplearse al desplegar el sistema para el usuario, los valores válidos son template y templateMenuMovil';
COMMENT ON COLUMN "FWK_PREFERENCIAS_USR"."THEME" IS 'Indica el tema que ha seleccionado el usuario, solo es válido cuando se cuenta con un template llamado templateMenuMovil. Los valores válidos son vw-theme-petrol';
COMMENT ON COLUMN "FWK_PREFERENCIAS_USR"."FAVORITES" IS 'Indica las opciones de menú que mas emplea el usuario y él mismo ha marcado como frecuentes, solo está disponible en el template con menu móvil.';
    
--Comentarios de Tabla: FWK_TINY_URL
COMMENT ON TABLE "FWK_TINY_URL" IS 'Esta tabla almacena los url completos asociados a un url breve empleado para redireccionamiento en login.';
COMMENT ON COLUMN "FWK_TINY_URL"."ID" IS 'Identificador del url abreviado.';
COMMENT ON COLUMN "FWK_TINY_URL"."TINY_URL" IS 'Url abreviado.';
COMMENT ON COLUMN "FWK_TINY_URL"."FULL_URL" IS 'Url completo al cual será redireccionado el usuario.';
COMMENT ON COLUMN "FWK_TINY_URL"."UN_SOLO_USO" IS 'Url que solo puede usarse una vez.';
COMMENT ON COLUMN "FWK_TINY_URL"."USADO" IS 'Indica si el url ya fue usado o no, bloqueante para cuando es un solo uso.';
COMMENT ON COLUMN "FWK_TINY_URL"."EXPIRA" IS 'Indica si el url expira o no.';
COMMENT ON COLUMN "FWK_TINY_URL"."FECHA_INICIAL" IS 'Fecha inicial de vigencia, por omision es la fecha de creacion del url.';
COMMENT ON COLUMN "FWK_TINY_URL"."FECHA_FINAL" IS 'Fecha final de vigencia del url.';
    
--Comentarios de Tabla: SEG_PERFIL
COMMENT ON TABLE "SEG_PERFIL" IS 'Esta tabla almacena todos los perfiles que pueden asignarse a los usuarios en el sistema. Para el caso de aplicaciones con TAM el perfil que reporta TAM debe estar registrado en esta tabla para poder asociar las funciones del sistema.';
COMMENT ON COLUMN "SEG_PERFIL"."ID" IS 'Identificador del perfil dentro del sistema';
COMMENT ON COLUMN "SEG_PERFIL"."PERFIL" IS 'Nombre del perfil en el sistema, es una cadena única dentro de la tabla';
COMMENT ON COLUMN "SEG_PERFIL"."ESTATUS" IS 'Estatus del perfil en el sistema, valores posibles 0=inactivo, 1=activo. Si está inactivo el perfil sus permisos no deben considerarse';
    
--Comentarios de Tabla: SEG_PERFIL_USR
COMMENT ON TABLE "SEG_PERFIL_USR" IS 'Esta tabla almacena los perfiles asociados al usuario, no se guarda históricos, solo la información vigente es necesaria. Esta tabla estará vacía para los sistemas que empleen TAM para autenticar, ya que la asignación de perfiles al usuario ocurre en TAM.';
COMMENT ON COLUMN "SEG_PERFIL_USR"."IDUSUARIO" IS 'Identificador del usuario en el sistema, permite vincular información en el sistema';
COMMENT ON COLUMN "SEG_PERFIL_USR"."IDPERFIL" IS 'Identificador del perfil dentro del sistema';
    
--Comentarios de Tabla: SEG_PERMISO
COMMENT ON TABLE "SEG_PERMISO" IS 'Tabla que almacena la lista de permisos posibles a asignar en el sistema. Cada permiso tiene la posibilidad de indicar si permite solo lectura o no, así como también indicar si es un permiso que pueda seleccionarse en la configuración del menú de opciones.';
COMMENT ON COLUMN "SEG_PERMISO"."ID" IS 'Identificador del permiso en el sistema.';
COMMENT ON COLUMN "SEG_PERMISO"."PERMISO" IS 'Nombre del permiso en el sistema, posteriormente se asignará a los perfiles.';
COMMENT ON COLUMN "SEG_PERMISO"."ESTATUS" IS 'Estatus del permiso en el sistema, valores posibles 0=inactivo, 1=activo. Si está inactivo el permiso no debe agregarse a los accesos del usuario.';
COMMENT ON COLUMN "SEG_PERMISO"."MOSTRARENMENU" IS 'Indica si el permiso debe mostrarse o no en la pantalla de configuración de menú para asignación de permiso a opción.';
    
--Comentarios de Tabla: SEG_PERMISO_PERFIL
COMMENT ON TABLE "SEG_PERMISO_PERFIL" IS 'Esta tabla almacena los diferentes permisos que se asocian a un perfil de usuario. Si se tiene asignado permisos o perfiles que estén inactivos, el permiso no debe agregarse al usuario. Si el permiso se asigna a un perfil, se puede indicar si para dicho perfil es de solo lectura o es de escritura.';
COMMENT ON COLUMN "SEG_PERMISO_PERFIL"."IDPERFIL" IS 'Identificador del perfil dentro del sistema';
COMMENT ON COLUMN "SEG_PERMISO_PERFIL"."IDPERMISO" IS 'Identificador del permiso en el sistema.';
    
--Comentarios de Tabla: SEG_USUARIO
COMMENT ON TABLE "SEG_USUARIO" IS 'Tabla que almacena la información de los usuarios que están registrados en el sistema. Esta tabla estará vacía para los sistemas que empleen TAM para autenticar. La tabla puede contener información para sistemas que emplean TAM, sin embargo es solo información que se puede relacionar en el sistema, en este caso no otorgará acceso alguno.';
COMMENT ON COLUMN "SEG_USUARIO"."ID" IS 'Identificador del usuario en el sistema, permite vincular información en el sistema';
COMMENT ON COLUMN "SEG_USUARIO"."USER_ID" IS 'Identificador del usuario en el sistema, empleado solo para la validación en el directorio activo y obtener el ID para el resto de las operaciones';
COMMENT ON COLUMN "SEG_USUARIO"."NOMBREUSUARIO" IS 'Nombre del usuario';
COMMENT ON COLUMN "SEG_USUARIO"."APPATERNO" IS 'Apellido Paterno del usuario';
COMMENT ON COLUMN "SEG_USUARIO"."APMATERNO" IS 'Apellido Materno del usuario';
COMMENT ON COLUMN "SEG_USUARIO"."CORREOE" IS 'Correo electrónico del usuario';
COMMENT ON COLUMN "SEG_USUARIO"."ESTATUS" IS 'Estatus del usuario en el sistema, valores posibles 0=inactivo, 1=activo';
