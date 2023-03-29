--Comentarios de Tabla: FWK_ACCESO_USR
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los diferentes accesos que un usuario realiza en el sistema, así como también la fecha y hora de salida del mismo.', 'Schema', [dbo], 'table', [FWK_ACCESO_USR];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del evento de acceso', 'Schema', [dbo], 'table', [FWK_ACCESO_USR], 'column', [ID_ACCESO];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del usuario que ingresa al sistema.', 'Schema', [dbo], 'table', [FWK_ACCESO_USR], 'column', [ID_NUMCONTROL];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha y hora de inicio de sesión del usuario en el sistema.', 'Schema', [dbo], 'table', [FWK_ACCESO_USR], 'column', [FH_ACCESO];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha y hora de fin de sesión del usuario en el sistema, puede ser nulo si el usuario no cierra su sesión adecuadamente.', 'Schema', [dbo], 'table', [FWK_ACCESO_USR], 'column', [FH_SALIDA];
    
--Comentarios de Tabla: FWK_ACTION_ITEM
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena la información de la estructura del menú de opciones, el estado activo o inactivo, la dependencia entre elementos de menú, el orden de presentación y el permiso asociado a dicha opción de menú.', 'Schema', [dbo], 'table', [FWK_ACTION_ITEM];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador de la opción de menú.', 'Schema', [dbo], 'table', [FWK_ACTION_ITEM], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si la opción de menú está activa o no.', 'Schema', [dbo], 'table', [FWK_ACTION_ITEM], 'column', [ENABLED];
EXEC sp_addextendedproperty 'MS_Description', 'Url del icono a emplear en la opción de menú.', 'Schema', [dbo], 'table', [FWK_ACTION_ITEM], 'column', [ICONURL];
EXEC sp_addextendedproperty 'MS_Description', 'Etiqueta que debe ser empleada en la opción de menú, equivale a una cadena del sistema para opción multi idioma.', 'Schema', [dbo], 'table', [FWK_ACTION_ITEM], 'column', [LABEL];
EXEC sp_addextendedproperty 'MS_Description', 'Url al que debe dirigirse el sistema cuando eligen la opción del menú.', 'Schema', [dbo], 'table', [FWK_ACTION_ITEM], 'column', [URL];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador de la opción de menú de la cual depende esta opción.', 'Schema', [dbo], 'table', [FWK_ACTION_ITEM], 'column', [PARENT_ID];
EXEC sp_addextendedproperty 'MS_Description', 'Orden en que debe presentarse la opción de menú dentro del menú de opciones, dos dígitos por cada nivel de menú.', 'Schema', [dbo], 'table', [FWK_ACTION_ITEM], 'column', [ORDERHINT];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del permiso en el sistema que permite el acceso a esta opción de menú.', 'Schema', [dbo], 'table', [FWK_ACTION_ITEM], 'column', [ID_PERMISO];
    
--Comentarios de Tabla: FWK_CADENA_IDIOMA
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena todas las cadenas del sistema en los diferentes idiomas registrados en el sistema.', 'Schema', [dbo], 'table', [FWK_CADENA_IDIOMA];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador de la cadena dentro del sistema, es un número consecutivo', 'Schema', [dbo], 'table', [FWK_CADENA_IDIOMA], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Clave de texto con la que se conoce la cadena del sistema, no debe cambiarse porque los programas tienen asociado este identificador.', 'Schema', [dbo], 'table', [FWK_CADENA_IDIOMA], 'column', [CLAVE];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del idioma dentro del sistema al cual pertenece la cadena.', 'Schema', [dbo], 'table', [FWK_CADENA_IDIOMA], 'column', [ID_IDIOMA];
EXEC sp_addextendedproperty 'MS_Description', 'Valor de la cadena en el idioma seleccionado, es el texto que desplegará el sistema.', 'Schema', [dbo], 'table', [FWK_CADENA_IDIOMA], 'column', [VALOR];
    
--Comentarios de Tabla: FWK_CAT_ADMIN
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los diferentes grupos de información que pueden registrarse en el sistema, cada grupo debe estar asociado a una aplicación.', 'Schema', [dbo], 'table', [FWK_CAT_ADMIN];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del catálogo dentro del sistema.', 'Schema', [dbo], 'table', [FWK_CAT_ADMIN], 'column', [ID_ADMIN];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador de la aplicación a la cual pertenece el catálogo del sistema.', 'Schema', [dbo], 'table', [FWK_CAT_ADMIN], 'column', [ID_APP];
EXEC sp_addextendedproperty 'MS_Description', 'Nombre del catálogo que se registra en el sistema.', 'Schema', [dbo], 'table', [FWK_CAT_ADMIN], 'column', [DESCRIPTION];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha de creación del registro.', 'Schema', [dbo], 'table', [FWK_CAT_ADMIN], 'column', [CREATED_ON];
EXEC sp_addextendedproperty 'MS_Description', 'Usuario que realizó el registro inicial de información.', 'Schema', [dbo], 'table', [FWK_CAT_ADMIN], 'column', [CREATED_BY];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha de actualización de la información.', 'Schema', [dbo], 'table', [FWK_CAT_ADMIN], 'column', [UPDATED_ON];
EXEC sp_addextendedproperty 'MS_Description', 'Usuario que realizó la actualización de la información.', 'Schema', [dbo], 'table', [FWK_CAT_ADMIN], 'column', [UPDATED_BY];
EXEC sp_addextendedproperty 'MS_Description', 'Estatus del catálogo dentro del sistema, un catálogo con estatus cero no estará disponible.', 'Schema', [dbo], 'table', [FWK_CAT_ADMIN], 'column', [STATUS];
    
--Comentarios de Tabla: FWK_CAT_APPS
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla contiene la información de las aplicaciones que se registran en el sistema. Esto permitirá tener configurados diferentes sistemas en la misma base de datos.', 'Schema', [dbo], 'table', [FWK_CAT_APPS];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador de la aplicación dentro del sistema, se pueden tener registradas más de una aplicación.', 'Schema', [dbo], 'table', [FWK_CAT_APPS], 'column', [Id_App];
EXEC sp_addextendedproperty 'MS_Description', 'Nombre de la aplicación, este valor no debe ser cambiado ya que es la forma de realizar la búsqueda del identificador para poder rastrear el resto de la información relacionada.', 'Schema', [dbo], 'table', [FWK_CAT_APPS], 'column', [APPLICATION_NAME];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha de creación del registro.', 'Schema', [dbo], 'table', [FWK_CAT_APPS], 'column', [CREATED_ON];
EXEC sp_addextendedproperty 'MS_Description', 'Usuario que realizó el registro inicial de información.', 'Schema', [dbo], 'table', [FWK_CAT_APPS], 'column', [CREATED_BY];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha de actualización del registro.', 'Schema', [dbo], 'table', [FWK_CAT_APPS], 'column', [UPDATED_ON];
EXEC sp_addextendedproperty 'MS_Description', 'Usuario que realizó la actualización del registro.', 'Schema', [dbo], 'table', [FWK_CAT_APPS], 'column', [UPDATED_BY];
EXEC sp_addextendedproperty 'MS_Description', 'Estatus del registro, una aplicación con estatus cero estará inactiva dentro del sistema.', 'Schema', [dbo], 'table', [FWK_CAT_APPS], 'column', [STATUS];
    
--Comentarios de Tabla: FWK_CAT_CONTENT
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena la información de cada grupo de información registrado para una aplicación. La llave de la información y el valor no pueden repetirse para el mismo grupo de información de un sistema.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del contenido dentro del sistema.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [Id_Content];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador de la aplicación a la cual pertenece el contenido que se está registrando.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [ID_APP];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del catálogo al cual pertenece el contenido que se está registrando.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [ID_ADMIN];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador o llave primaria del contenido para el catálogo y aplicación indicados.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [KEY_VALUE];
EXEC sp_addextendedproperty 'MS_Description', 'Valor del contenido registrado para el catálogo y aplicación indicados.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [VALUE];
EXEC sp_addextendedproperty 'MS_Description', 'Descripción del contenido registrado para el catálogo y aplicación indicados.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [DESCRIPTION];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha de creación del contenido.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [CREATED_ON];
EXEC sp_addextendedproperty 'MS_Description', 'Usuario que realizó el registro inicial de información en el sistema.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [CREATED_BY];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha de actualización de la información del contenido.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [UPDATED_ON];
EXEC sp_addextendedproperty 'MS_Description', 'Usuario que realizó la modificación de información dentro del sistema.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [UPDATED_BY];
EXEC sp_addextendedproperty 'MS_Description', 'Estatus del contenido dentro del sistema, un contenido con estatus cero no estará disponible para selección.', 'Schema', [dbo], 'table', [FWK_CAT_CONTENT], 'column', [STATUS];
    
--Comentarios de Tabla: FWK_CORREO_PEND
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los correos que por alguna razón no fueron enviados en su primer intento, existe un timer que toma todos los pendientes, y en cuanto son enviados cambia su bansera lEnviado a valor 1.', 'Schema', [dbo], 'table', [FWK_CORREO_PEND];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del correo pendiente de enviar.', 'Schema', [dbo], 'table', [FWK_CORREO_PEND], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador de la aplicación a la cual pertenece el correo pendiente de envío.', 'Schema', [dbo], 'table', [FWK_CORREO_PEND], 'column', [APPS_ID];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha y hora del mensaje que quedó pendiente de enviar.', 'Schema', [dbo], 'table', [FWK_CORREO_PEND], 'column', [TSMENSAJE];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si el mensaje ya fue enviado o aún está pendiente de enviarse.', 'Schema', [dbo], 'table', [FWK_CORREO_PEND], 'column', [LENVIADO];
EXEC sp_addextendedproperty 'MS_Description', 'Mensaje que fue generado en su momento y no pudo enviarse, ya tiene formato de arreglo de bytes.', 'Schema', [dbo], 'table', [FWK_CORREO_PEND], 'column', [BMENSAJE];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha y hora en la que fue enviado el mensaje después de que originalmente no se pudo enviar.', 'Schema', [dbo], 'table', [FWK_CORREO_PEND], 'column', [TSENVIADO];
    
--Comentarios de Tabla: FWK_CORREO_TEMPLATE
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los diferentes templates de correo que se emplean en el sistema.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del template de correo', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Número de correo, por este número se reliza la búsqueda del template en el sistema, independientemente del Id que haya asignado la base de datos.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [NUM_CORREO];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del idioma al que pertenece el template de correo.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [ID_IDIOMA];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador de la aplicación a la que pertenece el template de correo.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [APPS_ID];
EXEC sp_addextendedproperty 'MS_Description', 'Destinatario o lista de destinatarios predeterminados para el envío de correo, puede ser nulo, si es una lista se separa por comas.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [MAILTO];
EXEC sp_addextendedproperty 'MS_Description', 'Destinatario o lista de destinatarios predeterminados que serán copiados para el envío de correo, puede ser nulo, si es una lista se separa por comas.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [MAILCC];
EXEC sp_addextendedproperty 'MS_Description', 'Destinatario o lista de destinatarios que recibirán una copia oculta en el envío de correo, puede ser nulo, si es una lista se separa por comas.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [MAILBCC];
EXEC sp_addextendedproperty 'MS_Description', 'Título del correo que será enviado.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [MAILSUBJECT];
EXEC sp_addextendedproperty 'MS_Description', 'Contenido del correo que será enviado, de manera predeterminada es un correo de texto, a menos que inicie con el tag <html>', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [MAILBODY];
EXEC sp_addextendedproperty 'MS_Description', 'Lista de documentos que serán adjuntadas en el correo, se mantiene por compatibilidad, la forma de adjuntar es de manera dinámica actualmente.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [MAILATTACH];
EXEC sp_addextendedproperty 'MS_Description', 'Lista de imágenes que serán adjuntadas en el correo, se les asigna un identificador de forma predeterminada.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [MAILIMAGES];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha de creación del template de correo.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [FECHACREACION];
EXEC sp_addextendedproperty 'MS_Description', 'Usuario que crea el template de correo.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [USUARIOCREACION];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha de actualización del template de correo.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [FECHAACTUALIZA];
EXEC sp_addextendedproperty 'MS_Description', 'Usuario que actualiza el template de correo.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [USUARIOACTUALIZA];
EXEC sp_addextendedproperty 'MS_Description', 'Estatus del template de correo, un template con estatus cero no será enviado.', 'Schema', [dbo], 'table', [FWK_CORREO_TEMPLATE], 'column', [ESTATUS];
    
--Comentarios de Tabla: FWK_DBTRACER
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los diferentes movimientos registrados en la base de datos de acuerdo a su configuración de nivel de confidencialidad de la información.', 'Schema', [dbo], 'table', [FWK_DBTRACER];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del registro de trazabilidad.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha y hora en que ocurre el evento.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [TSEVENTO];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del usuario que ingresó al sistema cuando ocurre el evento.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [USERID];
EXEC sp_addextendedproperty 'MS_Description', 'Esquema al que pertenece la tabla que registra el evento.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [ESQUEMA];
EXEC sp_addextendedproperty 'MS_Description', 'Tabla en la cual se registra el evento.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [TABLA];
EXEC sp_addextendedproperty 'MS_Description', 'Nivel de seguridad configurado para la tabla.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [NIVEL];
EXEC sp_addextendedproperty 'MS_Description', 'Evento que ocurre en la tabla indicada.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [EVENTO];
EXEC sp_addextendedproperty 'MS_Description', 'Lista de campos llave existentes al momento en que ocurre el evento.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [CAMPOSLLAVE];
EXEC sp_addextendedproperty 'MS_Description', 'Lista de campos existentes al momento en que ocurre el evento.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [CAMPOS];
EXEC sp_addextendedproperty 'MS_Description', 'Tipos de dato de los campos al momento en que ocurre el evento.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [TIPODATO];
EXEC sp_addextendedproperty 'MS_Description', 'Opciones de nulidad de los campos al momento en que ocurre el evento.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [NULIDADCAMPOS];
EXEC sp_addextendedproperty 'MS_Description', 'Valores que contenían los campos al momento en que ocurre el evento.', 'Schema', [dbo], 'table', [FWK_DBTRACER], 'column', [VALORESCAMPOS];
    
--Comentarios de Tabla: FWK_IDIOMA
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los diferentes idiomas que pueden emplearse en el sistema.', 'Schema', [dbo], 'table', [FWK_IDIOMA];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del idioma dentro del sistema.', 'Schema', [dbo], 'table', [FWK_IDIOMA], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Descripción o nombre del idioma empleado para reconocimiento del usuario.', 'Schema', [dbo], 'table', [FWK_IDIOMA], 'column', [DESCRIPCION];
EXEC sp_addextendedproperty 'MS_Description', 'Código empleado para el idioma indicado, ejemplo es=Español', 'Schema', [dbo], 'table', [FWK_IDIOMA], 'column', [COD_IDIOMA];
EXEC sp_addextendedproperty 'MS_Description', 'Código de país registrado para el idioma, generalmente son dos letras mayúsculas, ejemplo MX=México', 'Schema', [dbo], 'table', [FWK_IDIOMA], 'column', [COD_PAIS];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si el idioma se encuentra activo en el sistema, un idioma con estatus cero estará desactivado.', 'Schema', [dbo], 'table', [FWK_IDIOMA], 'column', [ESTATUS];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si es el idioma predeterminado o no lo es. Solo un registro puede tener Predeterminado igual a uno, los demás por omisión serán cero. Este es el idioma en que se presenta al usuario la aplicación si es que aún no realiza su selección de idioma.', 'Schema', [dbo], 'table', [FWK_IDIOMA], 'column', [PREDETERMINADO];
    
--Comentarios de Tabla: FWK_LAYOUT_CARGA
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los diferentes layouts de carga que pueden configurarse y emplearse en el sistema', 'Schema', [dbo], 'table', [FWK_LAYOUT_CARGA];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del layout de carga en el sistema.', 'Schema', [dbo], 'table', [FWK_LAYOUT_CARGA], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Número de layout empleado para realizar las selección dentro de los procesos del sistema', 'Schema', [dbo], 'table', [FWK_LAYOUT_CARGA], 'column', [NUMERO_LAYOUT];
EXEC sp_addextendedproperty 'MS_Description', 'Nombre del layout en el sistema.', 'Schema', [dbo], 'table', [FWK_LAYOUT_CARGA], 'column', [NOMBRE_LAYOUT];
EXEC sp_addextendedproperty 'MS_Description', 'Descripción del uso del layout dentro del sistema', 'Schema', [dbo], 'table', [FWK_LAYOUT_CARGA], 'column', [DESC_LAYOUT];
EXEC sp_addextendedproperty 'MS_Description', 'Estatus del layout de carga en el sistema, valores posibles 0=inactivo, 1=activo. Si está inactivo el permiso no debe emplearse.', 'Schema', [dbo], 'table', [FWK_LAYOUT_CARGA], 'column', [ESTATUS];
    
--Comentarios de Tabla: FWK_LAYOUT_POSICIONES
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los diferentes elementos de un layout de carga', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del elemento del layout de carga', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del layout de carga al que pertenece el elemento', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [ID_LAYOUT];
EXEC sp_addextendedproperty 'MS_Description', 'Orden en que debe emplearse el elemento dentro del layout de carga', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [ORDEN];
EXEC sp_addextendedproperty 'MS_Description', 'Nombre que se da a la columna del elemento del layout de carga', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [NOMBRE_COLUMNA];
EXEC sp_addextendedproperty 'MS_Description', 'Posición inicial para la lectura del elemento en un archivo de ancho fijo', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [POSICION_INICIAL];
EXEC sp_addextendedproperty 'MS_Description', 'Posición final para la lectura del elemento en un archivo de ancho fijo', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [POSICION_FINAL];
EXEC sp_addextendedproperty 'MS_Description', 'Logitud del elemento en un archivo de ancho fijo', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [LONGITUD];
EXEC sp_addextendedproperty 'MS_Description', 'Tipo de dato que debe interpretarse durante la lectura del elemento', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [TIPO_DATO];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si se debe convertir el elemento al tipo de dato indicado', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [DEFINE_TIPO_VALOR];
EXEC sp_addextendedproperty 'MS_Description', 'Formato con el que viene la información en el layout del archivo', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [FORMATO_INFORMACION];
EXEC sp_addextendedproperty 'MS_Description', 'Nombre del campo al cual se mapeará la información en una clase java', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [NOMBRE_CAMPO];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si es un elemento obligatorio en el archivo de carga', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [OBLIGATORIO];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si el elemento se encuentra activo dentro del layout de carga', 'Schema', [dbo], 'table', [FWK_LAYOUT_POSICIONES], 'column', [ACTIVO];
    
--Comentarios de Tabla: FWK_LOGGER
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena todo el loggeo de mensajes del sistema de acuerdo al nivel configurado en los parámetros.', 'Schema', [dbo], 'table', [FWK_LOGGER];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del registro de loggeo en el sistema.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador de la aplicación a la cual pertenece el evento.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [APPS_ID];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha y hora en que ocurre el evento.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [TSEVENTO];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha y hora del servidor de base de datos.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [TSBASEDATOS];
EXEC sp_addextendedproperty 'MS_Description', 'Nivel de loggeo configurado cuando ocurre el evento.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [NIVEL];
EXEC sp_addextendedproperty 'MS_Description', 'Nombre de la clase en la cual ocurre el evento.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [CLASE];
EXEC sp_addextendedproperty 'MS_Description', 'Método que generó el evento.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [METODO];
EXEC sp_addextendedproperty 'MS_Description', 'Número de línea en la que se generó el evento.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [LINEA];
EXEC sp_addextendedproperty 'MS_Description', 'Mensaje que se arroja en el evento.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [MENSAJE];
EXEC sp_addextendedproperty 'MS_Description', 'Pila de mensajes generados durante el error.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [STACKTRACE];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del usuario que ingresó al sistema cuando ocurrió el evento.', 'Schema', [dbo], 'table', [FWK_LOGGER], 'column', [USERID];
    
--Comentarios de Tabla: FWK_PREFERENCIAS_USR
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los valores de las preferencias del usuario, entre las preferencias se encuentra el idioma, el template, la posición, el tema empleado y las opciones de menú favoritas.', 'Schema', [dbo], 'table', [FWK_PREFERENCIAS_USR];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del usuario en el sistema, este identificador es el que se emplea para buscar las preferencias del usuario.', 'Schema', [dbo], 'table', [FWK_PREFERENCIAS_USR], 'column', [ID_NUM_CONTROL];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del idioma seleccionado por el usuario dentro del sistema.', 'Schema', [dbo], 'table', [FWK_PREFERENCIAS_USR], 'column', [ID_IDIOMA];
EXEC sp_addextendedproperty 'MS_Description', 'Indica la posición que debe emplear el menú de acuerdo a las preferencias del usuario, los valores permitidos son north, east, west.', 'Schema', [dbo], 'table', [FWK_PREFERENCIAS_USR], 'column', [POSICION_MENU];
EXEC sp_addextendedproperty 'MS_Description', 'Indica el template que debe emplearse al desplegar el sistema para el usuario, los valores válidos son template y templateMenuMovil', 'Schema', [dbo], 'table', [FWK_PREFERENCIAS_USR], 'column', [TEMPLATE];
EXEC sp_addextendedproperty 'MS_Description', 'Indica el tema que ha seleccionado el usuario, solo es válido cuando se cuenta con un template llamado templateMenuMovil. Los valores válidos son vw-theme-petrol', 'Schema', [dbo], 'table', [FWK_PREFERENCIAS_USR], 'column', [THEME];
EXEC sp_addextendedproperty 'MS_Description', 'Indica las opciones de menú que mas emplea el usuario y él mismo ha marcado como frecuentes, solo está disponible en el template con menu móvil.', 'Schema', [dbo], 'table', [FWK_PREFERENCIAS_USR], 'column', [FAVORITES];
    
--Comentarios de Tabla: FWK_TINY_URL
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los url completos asociados a un url breve empleado para redireccionamiento en login.', 'Schema', [dbo], 'table', [FWK_TINY_URL];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del url abreviado.', 'Schema', [dbo], 'table', [FWK_TINY_URL], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Url abreviado.', 'Schema', [dbo], 'table', [FWK_TINY_URL], 'column', [TINY_URL];
EXEC sp_addextendedproperty 'MS_Description', 'Url completo al cual será redireccionado el usuario.', 'Schema', [dbo], 'table', [FWK_TINY_URL], 'column', [FULL_URL];
EXEC sp_addextendedproperty 'MS_Description', 'Url que solo puede usarse una vez.', 'Schema', [dbo], 'table', [FWK_TINY_URL], 'column', [UN_SOLO_USO];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si el url ya fue usado o no, bloqueante para cuando es un solo uso.', 'Schema', [dbo], 'table', [FWK_TINY_URL], 'column', [USADO];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si el url expira o no.', 'Schema', [dbo], 'table', [FWK_TINY_URL], 'column', [EXPIRA];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha inicial de vigencia, por omision es la fecha de creacion del url.', 'Schema', [dbo], 'table', [FWK_TINY_URL], 'column', [FECHA_INICIAL];
EXEC sp_addextendedproperty 'MS_Description', 'Fecha final de vigencia del url.', 'Schema', [dbo], 'table', [FWK_TINY_URL], 'column', [FECHA_FINAL];
    
--Comentarios de Tabla: SEG_PERFIL
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena todos los perfiles que pueden asignarse a los usuarios en el sistema. Para el caso de aplicaciones con TAM el perfil que reporta TAM debe estar registrado en esta tabla para poder asociar las funciones del sistema.', 'Schema', [dbo], 'table', [SEG_PERFIL];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del perfil dentro del sistema', 'Schema', [dbo], 'table', [SEG_PERFIL], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Nombre del perfil en el sistema, es una cadena única dentro de la tabla', 'Schema', [dbo], 'table', [SEG_PERFIL], 'column', [PERFIL];
EXEC sp_addextendedproperty 'MS_Description', 'Estatus del perfil en el sistema, valores posibles 0=inactivo, 1=activo. Si está inactivo el perfil sus permisos no deben considerarse', 'Schema', [dbo], 'table', [SEG_PERFIL], 'column', [ESTATUS];
    
--Comentarios de Tabla: SEG_PERFIL_USR
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los perfiles asociados al usuario, no se guarda históricos, solo la información vigente es necesaria. Esta tabla estará vacía para los sistemas que empleen TAM para autenticar, ya que la asignación de perfiles al usuario ocurre en TAM.', 'Schema', [dbo], 'table', [SEG_PERFIL_USR];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del usuario en el sistema, permite vincular información en el sistema', 'Schema', [dbo], 'table', [SEG_PERFIL_USR], 'column', [IDUSUARIO];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del perfil dentro del sistema', 'Schema', [dbo], 'table', [SEG_PERFIL_USR], 'column', [IDPERFIL];
    
--Comentarios de Tabla: SEG_PERMISO
EXEC sp_addextendedproperty 'MS_Description', 'Tabla que almacena la lista de permisos posibles a asignar en el sistema. Cada permiso tiene la posibilidad de indicar si permite solo lectura o no, así como también indicar si es un permiso que pueda seleccionarse en la configuración del menú de opciones.', 'Schema', [dbo], 'table', [SEG_PERMISO];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del permiso en el sistema.', 'Schema', [dbo], 'table', [SEG_PERMISO], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Nombre del permiso en el sistema, posteriormente se asignará a los perfiles.', 'Schema', [dbo], 'table', [SEG_PERMISO], 'column', [PERMISO];
EXEC sp_addextendedproperty 'MS_Description', 'Estatus del permiso en el sistema, valores posibles 0=inactivo, 1=activo. Si está inactivo el permiso no debe agregarse a los accesos del usuario.', 'Schema', [dbo], 'table', [SEG_PERMISO], 'column', [ESTATUS];
EXEC sp_addextendedproperty 'MS_Description', 'Indica si el permiso debe mostrarse o no en la pantalla de configuración de menú para asignación de permiso a opción.', 'Schema', [dbo], 'table', [SEG_PERMISO], 'column', [MOSTRARENMENU];
    
--Comentarios de Tabla: SEG_PERMISO_PERFIL
EXEC sp_addextendedproperty 'MS_Description', 'Esta tabla almacena los diferentes permisos que se asocian a un perfil de usuario. Si se tiene asignado permisos o perfiles que estén inactivos, el permiso no debe agregarse al usuario. Si el permiso se asigna a un perfil, se puede indicar si para dicho perfil es de solo lectura o es de escritura.', 'Schema', [dbo], 'table', [SEG_PERMISO_PERFIL];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del perfil dentro del sistema', 'Schema', [dbo], 'table', [SEG_PERMISO_PERFIL], 'column', [IDPERFIL];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del permiso en el sistema.', 'Schema', [dbo], 'table', [SEG_PERMISO_PERFIL], 'column', [IDPERMISO];
    
--Comentarios de Tabla: SEG_USUARIO
EXEC sp_addextendedproperty 'MS_Description', 'Tabla que almacena la información de los usuarios que están registrados en el sistema. Esta tabla estará vacía para los sistemas que empleen TAM para autenticar. La tabla puede contener información para sistemas que emplean TAM, sin embargo es solo información que se puede relacionar en el sistema, en este caso no otorgará acceso alguno.', 'Schema', [dbo], 'table', [SEG_USUARIO];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del usuario en el sistema, permite vincular información en el sistema', 'Schema', [dbo], 'table', [SEG_USUARIO], 'column', [ID];
EXEC sp_addextendedproperty 'MS_Description', 'Identificador del usuario en el sistema, empleado solo para la validación en el directorio activo y obtener el ID para el resto de las operaciones', 'Schema', [dbo], 'table', [SEG_USUARIO], 'column', [USER_ID];
EXEC sp_addextendedproperty 'MS_Description', 'Nombre del usuario', 'Schema', [dbo], 'table', [SEG_USUARIO], 'column', [NombreUsuario];
EXEC sp_addextendedproperty 'MS_Description', 'Apellido Paterno del usuario', 'Schema', [dbo], 'table', [SEG_USUARIO], 'column', [APPATERNO];
EXEC sp_addextendedproperty 'MS_Description', 'Apellido Materno del usuario', 'Schema', [dbo], 'table', [SEG_USUARIO], 'column', [APMATERNO];
EXEC sp_addextendedproperty 'MS_Description', 'Correo electrónico del usuario', 'Schema', [dbo], 'table', [SEG_USUARIO], 'column', [CORREOE];
EXEC sp_addextendedproperty 'MS_Description', 'Estatus del usuario en el sistema, valores posibles 0=inactivo, 1=activo', 'Schema', [dbo], 'table', [SEG_USUARIO], 'column', [ESTATUS];
