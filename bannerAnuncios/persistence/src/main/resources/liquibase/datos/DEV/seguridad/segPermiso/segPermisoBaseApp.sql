ESTATUS^MOSTRARENMENU^PERMISO^DESCRIPCION
#--Creación de SegPermiso
1^1^BASEAPP_MAIN^Acceso a pantalla inicial del sistema.
1^0^BASEAPP_MAIN_INSERT^Acceso a pantalla inicial del sistema.
1^0^BASEAPP_DEV_OPTIONS^Acceso a las opciones de desarrollador (solo deben estar disponibles en ambientes de desarrollo y posiblemente QA).
1^0^MANUAL_USR_1_ADMINISTRADOR^Manual de usuario ADMINISTRADOR con mayor prioridad en caso de tener múltiples manuales o perfiles asignados.
1^0^MANUAL_USR_2_AUTORIZADOR^Manual de usuario AUTORIZADOR, asignado a perfiles de autorizadores.
1^0^MANUAL_USR_3_AMS^Manual de usuario AMS, asignado a perfiles de usuarios AMS.
1^0^MANUAL_USR_4_UM^Manual de usuario UM, asignado a perfiles de usuario del User Management.

#--Permisos para Administración
1^1^BASEAPP_ADMINISTRACION^Menú de Opciones Administración.
#--Permisos para Seguridad
1^1^BASEAPP_SEGURIDAD^Sub menú de seguridad.
1^1^BASEAPP_SEGURIDAD_PERFIL^Acceso a pantalla de administración de perfiles de usuario.
1^0^BASEAPP_SEGURIDAD_PERFIL_DELETE^Pantalla de administración de perfiles, posibilidad de desactivar un perfil de usuario.
1^0^BASEAPP_SEGURIDAD_PERFIL_INSERT^Pantalla de administración de perfiles, posibilidad de insertar un nuevo perfil de usuario.
1^0^BASEAPP_SEGURIDAD_PERFIL_PERMISO^Pantalla de administración de perfiles, posibilidad de pasar a la administración de permisos desde esta pantalla.
1^0^BASEAPP_SEGURIDAD_PERFIL_UPDATE^Pantalla de administración de perfiles, posibilidad de actualizar la información de un perfil de usuario.
1^1^BASEAPP_SEGURIDAD_PERMISO^Acceso a pantalla de administración de permisos del sistema.
1^0^BASEAPP_SEGURIDAD_PERMISO_ASIGNAR^Pantalla de administración de permisos, posibilidad de asignar permisos al perfil seleccionado.
1^0^BASEAPP_SEGURIDAD_PERMISO_DELETE^Pantalla de administración de permisos, posibilidad de desactivar un permiso registrado.
1^0^BASEAPP_SEGURIDAD_PERMISO_INSERT^Pantalla de administración de permisos, posibilidad de insertar un nuevo permiso.
1^0^BASEAPP_SEGURIDAD_PERMISO_UPDATE^Pantalla de administración de permisos, posibilidad de actualizar un permiso registrado.
1^1^BASEAPP_SEGURIDAD_MENUCONFIG^Acceso a la pantalla de configuración del menú de opciones.
1^0^BASEAPP_SEGURIDAD_MENUCONFIG_DELETE^Pantalla de administración de opciones de menú, posibilidad de desactivar una opción.
1^0^BASEAPP_SEGURIDAD_MENUCONFIG_INSERT^Pantalla de administración de opciones de menú, posibilidad de insertar una opción.
1^0^BASEAPP_SEGURIDAD_MENUCONFIG_UPDATE^Pantalla de administración de opciones de menú, posibilidad de actualizar una opción.
#--Permisos para AMS
1^1^BASEAPP_CONFIGURA^Sub menú de configuración para AMS.
1^1^BASEAPP_CONFIGURA_IDIOMA^Acceso a pantalla de administración de idiomas.
1^0^BASEAPP_CONFIGURA_IDIOMA_DELETE^Pantalla de administración de idiomas, posibilidad de desactivar idiomas.
1^0^BASEAPP_CONFIGURA_IDIOMA_INSERT^Pantalla de administración de idiomas, posibilidad de insertar nuevos idiomas.
1^0^BASEAPP_CONFIGURA_IDIOMA_UPDATE^Pantalla de administración de idiomas, posibilidad de actualizar información de idiomas.
1^1^BASEAPP_CONFIGURA_TEMPLATECORREO^Acceso a pantalla de configuración de template de correos.
1^0^BASEAPP_CONFIGURA_TEMPLATECORREO_DELETE^Pantalla de configuración de template de correos, posibilidad de desactivar templates de correos.
1^0^BASEAPP_CONFIGURA_TEMPLATECORREO_INSERT^Pantalla de configuración de template de correos, posibilidad de insertar un nuevo template de correo.
1^0^BASEAPP_CONFIGURA_TEMPLATECORREO_UPDATE^Pantalla de configuración de template de correos, posibilidad de actualizar la información de un template de correo existente.

#--Creacion de SegPermiso para Administrador de Catálogos
1^1^BASEAPP_CONFIGURA_PARAMETRO^Acceso a pantalla de configuración de parámetros del sistema.
1^0^BASEAPP_CONFIGURA_PARAMETRO_DELETE^Pantalla de configuración de parámetros, posibilidad de desactivar parámetros.
1^0^BASEAPP_CONFIGURA_PARAMETRO_INSERT^Pantalla de configuración de parámetros, posibilidad de insertar nuevos parámetros.
1^0^BASEAPP_CONFIGURA_PARAMETRO_UPDATE^Pantalla de configuración de parámetros, posibilidad de actualizar la información de parámetros existentes.

#--Permisos de administrador de catálogos aplicación BASE_APP
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP^Configuración de parámetros, aplicación BASE_APP
#--Iconlist
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_ICONLIST^Configuración de parámetros de aplicación BASE_APP, catálogo de Iconos
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_ICONLIST_TODOS^Configuración de parámetros de aplicación BASE_APP, catálogo de Iconos, mostrar todos los iconos
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_ICONLIST_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de Iconos, desactivar icono
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_ICONLIST_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de Iconos, insertar icono
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_ICONLIST_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de Iconos, actualizar icono
#--ThemeList
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_THEMESLIST^Configuración de parámetros de aplicación BASE_APP, catálogo de temas
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_THEMESLIST_TODOS^Configuración de parámetros de aplicación BASE_APP, catálogo de temas, mostrar todos los temas
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_THEMESLIST_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de temas, desactivar tema
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_THEMESLIST_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de temas, insertar tema
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_THEMESLIST_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de temas, actualizar tema
#--PropiedadesSWF
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TODOS^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, mostrar todas las propiedades
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TODOS_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TODOS_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TODOS_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, actualizar propiedad
#--Acceso
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_ACCESO^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de acceso
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_ACCESO_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de acceso, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_ACCESO_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de acceso, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_ACCESO_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de acceso, actualizar propiedad
#--Mail
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_MAIL^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de correo
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_MAIL_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de correo, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_MAIL_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de correo, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_MAIL_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de correo, actualizar propiedad
#--Mensajes
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_MSG^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de mensajes
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_MSG_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de mensajes, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_MSG_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de mensajes, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_MSG_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de mensajes, actualizar propiedad
#--Logger
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_LOG^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de log
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_LOG_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de log, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_LOG_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de log, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_LOG_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de log, actualizar propiedad
#--Rutas
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_RUTAS^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de rutas
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_RUTAS_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de rutas, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_RUTAS_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de rutas, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_RUTAS_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de rutas, actualizar propiedad
#--Timer Controller
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TIMER^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de timer
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TIMER_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de timer, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TIMER_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de timer, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TIMER_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de timer, actualizar propiedad
#--Timer Envio Pendiente
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TIMER_ENVIOPENDIENTE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de timer envío pendiente
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TIMER_ENVIOPENDIENTE_DELETE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de timer envío pendiente, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TIMER_ENVIOPENDIENTE_INSERT^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de timer envío pendiente, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BASE_APP_PROPIEDADESSWF_TIMER_ENVIOPENDIENTE_UPDATE^Configuración de parámetros de aplicación BASE_APP, catálogo de propiedades, grupo de timer envío pendiente, actualizar propiedad

#--Permisos de administrador de catálogos aplicación SWF
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF^Configuración de parámetros, aplicación SWF
#--PropiedadesSWF
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF^Configuración de parámetros de aplicación SWF, catálogo de propiedades
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_TODOS^Configuración de parámetros de aplicación SWF, catálogo de propiedades, mostrar todas las propiedades
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_TODOS_DELETE^Configuración de parámetros de aplicación SWF, catálogo de propiedades, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_TODOS_INSERT^Configuración de parámetros de aplicación SWF, catálogo de propiedades, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_TODOS_UPDATE^Configuración de parámetros de aplicación SWF, catálogo de propiedades, actualizar propiedad
#--Mail
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_MAIL^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de correo
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_MAIL_DELETE^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de correo, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_MAIL_INSERT^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de correo, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_MAIL_UPDATE^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de correo, actualizar propiedad
#--Mensajes
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_MSG^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de mensajes
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_MSG_DELETE^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de mensajes, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_MSG_INSERT^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de mensajes, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_MSG_UPDATE^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de mensajes, actualizar propiedad
#--Logger
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_LOG^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de log
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_LOG_DELETE^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de log, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_LOG_INSERT^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de log, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_SWF_PROPIEDADESSWF_LOG_UPDATE^Configuración de parámetros de aplicación SWF, catálogo de propiedades, grupo de log, actualizar propiedad


#--Permisos de administrador de catálogos aplicación BANNER
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER^Configuración de parámetros, aplicación BANNER
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_TODOS^Configuración de parámetros de aplicación BANNER, todos los catálogos
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_TODOS_DELETE^Configuración de parámetros de aplicación BANNER, todos los catálogos, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_TODOS_INSERT^Configuración de parámetros de aplicación BANNER, todos los catálogos, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_TODOS_UPDATE^Configuración de parámetros de aplicación BANNER, todos los catálogos, actualizar propiedad
#--PropiedadesSWF
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF^Configuración de parámetros de aplicación BANNER, catálogo de propiedades
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_DELETE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_INSERT^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_UPDATE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, actualizar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_TODOS^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, mostrar todas las propiedades
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_TODOS_DELETE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_TODOS_INSERT^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_TODOS_UPDATE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, actualizar propiedad
#--Mail
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_MAIL^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de correo
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_MAIL_DELETE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de correo, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_MAIL_INSERT^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de correo, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_MAIL_UPDATE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de correo, actualizar propiedad
#--Mensajes
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_MSG^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de mensajes
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_MSG_DELETE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de mensajes, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_MSG_INSERT^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de mensajes, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_MSG_UPDATE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de mensajes, actualizar propiedad
#--Logger
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_LOG^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de log
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_LOG_DELETE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de log, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_LOG_INSERT^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de log, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_LOG_UPDATE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de log, actualizar propiedad
#--Rutas
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_RUTAS^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de rutas
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_RUTAS_DELETE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de rutas, desactivar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_RUTAS_INSERT^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de rutas, insertar propiedad
1^0^BASEAPP_CONFIGURA_PARAMETRO_BANNER_PROPIEDADESSWF_RUTAS_UPDATE^Configuración de parámetros de aplicación BANNER, catálogo de propiedades, grupo de rutas, actualizar propiedad

#--Otros Catálogos
1^1^BASEAPP_CATALOGOS_CONFIGURACION^Acceso a la pantalla de configuracion
1^0^BASEAPP_CATALOGOS_CONFIGURACION_INSERT^Acceso a la pantalla
1^0^BASEAPP_CATALOGOS_CONFIGURACION_UPDATE^Acceso a la pantalla
1^0^BASEAPP_CATALOGOS_CONFIGURACION_DELETE^Acceso a la pantalla
#--Auditoría
1^1^BASEAPP_AUDITORIA^Acceso a la pantalla de Auditoria
1^0^BASEAPP_AUDITORIA_INSERT^Acceso a la pantalla
1^0^BASEAPP_AUDITORIA_UPDATE^Acceso a la pantalla
1^0^BASEAPP_AUDITORIA_DELETE^Acceso a la pantalla
#--Aprobaciones
1^1^BASEAPP_APROBACIONES^Acceso a la pantalla de aprobaciones
1^0^BASEAPP_APROBACIONES_INSERT^Acceso a la pantalla		
1^0^BASEAPP_APROBACIONES_UPDATE^Acceso a la pantalla
1^0^BASEAPP_APROBACIONES_DELETE^Acceso a la pantalla
#--Funcionalidades de Aprobaciones
1^1^BASEAPP_FUNCIONALIDADES_APROBACIONES^Acceso a la pantalla de aprobaciones
1^0^BASEAPP_FUNCIONALIDADES_APROBACIONES_INSERT^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_APROBACIONES_UPDATE^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_APROBACIONES_DELETE^Acceso a la pantalla
1^1^BASEAPP_FUNCIONALIDADES_APROBACIONES_APROBACIONREASIGNARTAREAS^Acceso a pantalla de Reasignar tareas.
1^0^BASEAPP_FUNCIONALIDADES_APROBACIONES_APROBACIONREASIGNARTAREAS_UPDATE^Pantalla de Reasignar tareas, posibilidad de actualizar información de Aprobación Registro Detalle-usr_debe_aprobar.


#--Notificaciones
1^1^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES^Acceso a pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_INSERT^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_UPDATE^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_DELETE^Acceso a la pantalla

1^1^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ADMINISTRACION^Acceso a pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ADMINISTRACION_INSERT^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ADMINISTRACION_UPDATE^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ADMINISTRACION_DELETE^Acceso a la pantalla

1^1^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESPORPERFIL^Acceso a pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESPORPERFIL_INSERT^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESPORPERFIL_UPDATE^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESPORPERFIL_DELETE^Acceso a la pantalla

1^1^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESUSUARIOSSISTEMA^Acceso a pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESUSUARIOSSISTEMA_INSERT^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESUSUARIOSSISTEMA_UPDATE^Acceso a la pantalla
1^0^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESUSUARIOSSISTEMA_DELETE^Acceso a la pantalla

1^1^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_BANDEJA^Acceso a pantalla de Bandeja de asuntos pendientes
1^1^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_BANDEJA_INSERT^InserciÃ³n en pantalla de Bandeja de asuntos pendientes
1^1^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_BANDEJA_UPDATE^ActualizaciÃ³n en pantalla de Bandeja de asuntos pendientes
1^1^BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_BANDEJA_DELETE^Borrado en pantalla de Bandeja de asuntos pendientes


#--Reportes
1^1^BASEAPP_CATALOGOS_REPORTES_CATALOGOREPORTESJASPER^Acceso a pantalla
1^0^BASEAPP_CATALOGOS_REPORTES_CATALOGOREPORTESJASPER_INSERT^Acceso a la pantalla
1^0^BASEAPP_CATALOGOS_REPORTES_CATALOGOREPORTESJASPER_UPDATE^Acceso a la pantalla
1^0^BASEAPP_CATALOGOS_REPORTES_CATALOGOREPORTESJASPER_DELETE^Acceso a la pantalla

1^1^BASEAPP_CONFIGURA_REPORTE^Sub menú de configuracion de reportes

1^1^BASEAPP_CONFIGURA_REPORTE_CATALOGOPANTALLAS^Acceso a pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CATALOGOPANTALLAS_INSERT^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CATALOGOPANTALLAS_UPDATE^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CATALOGOPANTALLAS_DELETE^Acceso a la pantalla

1^1^BASEAPP_CONFIGURA_REPORTE_CATALOGOREPORTES^Acceso a pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CATALOGOREPORTES_INSERT^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CATALOGOREPORTES_UPDATE^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CATALOGOREPORTES_DELETE^Acceso a la pantalla

1^1^BASEAPP_CONFIGURA_REPORTE_CATALOGOTIPOEXPORTACION^Acceso a pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CATALOGOTIPOEXPORTACION_INSERT^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CATALOGOTIPOEXPORTACION_UPDATE^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CATALOGOTIPOEXPORTACION_DELETE^Acceso a la pantalla

1^1^BASEAPP_CONFIGURA_REPORTE_ASIGNAREPORTEPANTALLA^Acceso a pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_ASIGNAREPORTEPANTALLA_INSERT^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_ASIGNAREPORTEPANTALLA_UPDATE^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_ASIGNAREPORTEPANTALLA_DELETE^Acceso a la pantalla

1^1^BASEAPP_CONFIGURA_REPORTE_CALENDARIO^Acceso a pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CALENDARIO_INSERT^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CALENDARIO_UPDATE^Acceso a la pantalla
1^0^BASEAPP_CONFIGURA_REPORTE_CALENDARIO_DELETE^Acceso a la pantalla


#--Consultas dinámicas
#--Configuración de consultas dinámicas
1^1^BASEAPP_CONSULTAS_CONSULTASDINAMICASCATALOGO^Acceso a pantalla
1^0^BASEAPP_CONSULTAS_CONSULTASDINAMICASCATALOGO_INSERT^Acceso a la pantalla
1^0^BASEAPP_CONSULTAS_CONSULTASDINAMICASCATALOGO_UPDATE^Acceso a la pantalla
1^0^BASEAPP_CONSULTAS_CONSULTASDINAMICASCATALOGO_DELETE^Acceso a la pantalla
#--Ejecución de consultas dinámicas
1^1^BASEAPP_CONSULTAS_CONSULTASDINAMICAS^Acceso a pantalla
1^0^BASEAPP_CONSULTAS_CONSULTASDINAMICAS_INSERT^Acceso a la pantalla
1^0^BASEAPP_CONSULTAS_CONSULTASDINAMICAS_UPDATE^Acceso a la pantalla
1^0^BASEAPP_CONSULTAS_CONSULTASDINAMICAS_DELETE^Acceso a la pantalla


#--Seguimiento perfil
1^1^BASEAPP_SEGURIDAD_SEGUIMIENTOPERFILUSUARIO^Acceso a pantalla
1^0^BASEAPP_SEGURIDAD_SEGUIMIENTOPERFILUSUARIO_INSERT^Acceso a la pantalla
1^0^BASEAPP_SEGURIDAD_SEGUIMIENTOPERFILUSUARIO_UPDATE^Acceso a la pantalla
1^0^BASEAPP_SEGURIDAD_SEGUIMIENTOPERFILUSUARIO_DELETE^Acceso a la pantalla


#--Delegación de permisos
1^1^BASEAPP_SEGURIDAD_DELEGACIONPERMISOS^Acceso a pantalla
1^0^BASEAPP_SEGURIDAD_DELEGACIONPERMISOS_INSERT^Acceso a la pantalla
1^0^BASEAPP_SEGURIDAD_DELEGACIONPERMISOS_UPDATE^Acceso a la pantalla
1^0^BASEAPP_SEGURIDAD_DELEGACIONPERMISOS_DELETE^Acceso a la pantalla


#--Auditoría
1^1^BASEAPP_AUDITORIA_AUDITORIAREPORTES^Acceso a pantalla
1^0^BASEAPP_AUDITORIA_AUDITORIAREPORTES_INSERT^Acceso a la pantalla
1^0^BASEAPP_AUDITORIA_AUDITORIAREPORTES_UPDATE^Acceso a la pantalla
1^0^BASEAPP_AUDITORIA_AUDITORIAREPORTES_DELETE^Acceso a la pantalla
#--Auditoría Servicios Web
1^1^BASEAPP_AUDITORIA_AUDITORIASERVICIOSWEB^Acceso a pantalla
1^0^BASEAPP_AUDITORIA_AUDITORIASERVICIOSWEB_INSERT^Acceso a la pantalla
1^0^BASEAPP_AUDITORIA_AUDITORIASERVICIOSWEB_UPDATE^Acceso a la pantalla
1^0^BASEAPP_AUDITORIA_AUDITORIASERVICIOSWEB_DELETE^Acceso a la pantalla


#--Trazabilidad
1^1^BASEAPP_AUDITORIA_TRAZABILIDAD^Acceso a pantalla
1^0^BASEAPP_AUDITORIA_TRAZABILIDAD_INSERT^Acceso a la pantalla
1^0^BASEAPP_AUDITORIA_TRAZABILIDAD_UPDATE^Acceso a la pantalla
1^0^BASEAPP_AUDITORIA_TRAZABILIDAD_DELETE^Acceso a la pantalla


#--Aprobaciones
1^1^BASEAPP_CATALOGOS_APROBACION_APROBACIONCONFIGURAFLUJO^Acceso a pantalla de Aprobación Configura Flujo.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONCONFIGURAFLUJO_INSERT^Pantalla de Aprobación Configura Flujo, posibilidad de insertar nuevo registro de Aprobación Configura Flujo.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONCONFIGURAFLUJO_UPDATE^Pantalla de Aprobación Configura Flujo, posibilidad de actualizar información de Aprobación Configura Flujo.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONCONFIGURAFLUJO_DELETE^Pantalla de Aprobación Configura Flujo, posibilidad de desactivar registro de Aprobación Configura Flujo.

1^1^BASEAPP_CATALOGOS_APROBACION_APROBACIONCONFIGURAFLUJODET^Acceso a pantalla de Aprobación Configura Flujo Detalle.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONCONFIGURAFLUJODET_INSERT^Pantalla de Aprobación Configura Flujo Detalle, posibilidad de insertar nuevo registro de Aprobación Configura Flujo Detalle.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONCONFIGURAFLUJODET_UPDATE^Pantalla de Aprobación Configura Flujo Detalle, posibilidad de actualizar información de Aprobación Configura Flujo Detalle.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONCONFIGURAFLUJODET_DELETE^Pantalla de Aprobación Configura Flujo Detalle, posibilidad de desactivar registro de Aprobación Configura Flujo Detalle.

#--Craecion de SEG_PERMISO de la Tabla APROBACION_REGISTRO
1^1^BASEAPP_CATALOGOS_APROBACION_APROBACIONREGISTRO^Acceso a pantalla de Aprobación Registro.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONREGISTRO_INSERT^Pantalla de Aprobación Registro, posibilidad de insertar nuevo registro de Aprobación Registro.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONREGISTRO_UPDATE^Pantalla de Aprobación Registro, posibilidad de actualizar información de Aprobación Registro.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONREGISTRO_DELETE^Pantalla de Aprobación Registro, posibilidad de desactivar registro de Aprobación Registro.

#--Craecion de SEG_PERMISO de la Tabla APROBACION_REGISTRO_DETALLE
1^1^BASEAPP_CATALOGOS_APROBACION_APROBACIONREGISTRODETALLE^Acceso a pantalla de Aprobación Registro Detalle.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONREGISTRODETALLE_INSERT^Pantalla de Aprobación Registro Detalle, posibilidad de insertar nuevo registro de Aprobación Registro Detalle.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONREGISTRODETALLE_UPDATE^Pantalla de Aprobación Registro Detalle, posibilidad de actualizar información de Aprobación Registro Detalle.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONREGISTRODETALLE_DELETE^Pantalla de Aprobación Registro Detalle, posibilidad de desactivar registro de Aprobación Registro Detalle.

#--Craecion de SEG_PERMISO de la Tabla CATALOGO_METODO_COMUNICACION
1^1^BASEAPP_CATALOGOS_NOTIFICA_CATALOGOMETODOCOMUNICACION^Acceso a pantalla de catálogo Método Comunicación.
1^0^BASEAPP_CATALOGOS_NOTIFICA_CATALOGOMETODOCOMUNICACION_INSERT^Pantalla de catálogo Método Comunicación, posibilidad de insertar nuevo registro de catálogo Método Comunicación.
1^0^BASEAPP_CATALOGOS_NOTIFICA_CATALOGOMETODOCOMUNICACION_UPDATE^Pantalla de catálogo Método Comunicación, posibilidad de actualizar información de catálogo Método Comunicación.
1^0^BASEAPP_CATALOGOS_NOTIFICA_CATALOGOMETODOCOMUNICACION_DELETE^Pantalla de catálogo Método Comunicación, posibilidad de desactivar registro de catálogo Método Comunicación.

1^1^BASEAPP_CATALOGOS_APROBACION_APROBACIONDETALLEEVIDENCIA^Acceso a pantalla de Aprobacion Detalle Evidencia.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONDETALLEEVIDENCIA_INSERT^Pantalla de Aprobacion Detalle Evidencia, posibilidad de insertar nuevo registro de Aprobacion Detalle Evidencia.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONDETALLEEVIDENCIA_UPDATE^Pantalla de Aprobacion Detalle Evidencia, posibilidad de actualizar información de Aprobacion Detalle Evidencia.
1^0^BASEAPP_CATALOGOS_APROBACION_APROBACIONDETALLEEVIDENCIA_DELETE^Pantalla de Aprobacion Detalle Evidencia, posibilidad de desactivar registro de Aprobacion Detalle Evidencia.


#--Procesos
1^1^BASEAPP_CATALOGOS_PROCESO^Acceso a pantalla de catálogo de Proceso.
#--Catálogo de procesos
1^1^BASEAPP_CATALOGOS_PROCESO_CATALOGOPROCESO^Acceso a pantalla de catálogo de Proceso.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOPROCESO_INSERT^Pantalla de catálogo de Proceso, posibilidad de insertar nuevo registro de Proceso.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOPROCESO_UPDATE^Pantalla de catálogo de Proceso, posibilidad de actualizar información de Proceso.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOPROCESO_DELETE^Pantalla de catálogo de Proceso, posibilidad de desactivar registro de Proceso.
#--Orden del proceso
1^1^BASEAPP_CATALOGOS_PROCESO_CATALOGOORDENPROCESO^Acceso a pantalla de catálogo de Orden de Proceso.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOORDENPROCESO_INSERT^Pantalla de catálogo de Orden de Proceso, posibilidad de insertar nuevo registro de Orden de Proceso.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOORDENPROCESO_UPDATE^Pantalla de catálogo de Orden de Proceso, posibilidad de actualizar información de Orden de Proceso.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOORDENPROCESO_DELETE^Pantalla de catálogo de Orden de Proceso, posibilidad de desactivar registro de Orden de Proceso.
#--Estados del proceso
1^1^BASEAPP_CATALOGOS_PROCESO_CATALOGOESTADOSPROCESO^Acceso a el catálogo de estados de proceso.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOESTADOSPROCESO_INSERT^Permiso para insertar un estado de proceso.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOESTADOSPROCESO_UPDATE^Permiso para actualizar un estado de proceso.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOESTADOSPROCESO_DELETE^Permiso para eliminar un estado de proceso.
#--Motivos de Rechazo
1^1^BASEAPP_CATALOGOS_PROCESO_CATALOGOMOTIVOSRECHAZO^Acceso a el catálogo de Motivos de Rechazo.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOMOTIVOSRECHAZO_INSERT^Permiso para insertar un motivo de rechazo.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOMOTIVOSRECHAZO_UPDATE^Permiso para actualizar un motivo de rechazo.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOMOTIVOSRECHAZO_DELETE^Permiso para eliminar un motivo de rechazo.
#--Origen de solicitud
1^1^BASEAPP_CATALOGOS_PROCESO_CATALOGOORIGENSOLICITUD^Acceso a pantalla de catálogo de Origen de Solicitud.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOORIGENSOLICITUD_INSERT^Pantalla de catálogo de Origen de Solicitud, posibilidad de insertar nuevo registro de Origen de Solicitud.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOORIGENSOLICITUD_UPDATE^Pantalla de catálogo de Origen de Solicitud, posibilidad de actualizar información de Origen de Solicitud.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOORIGENSOLICITUD_DELETE^Pantalla de catálogo de Origen de Solicitud, posibilidad de desactivar registro de Origen de Solicitud.
#--Asignación de tipos de documento por proceso
1^1^BASEAPP_CATALOGOS_PROCESO_CATALOGOASOCIARTIPODOCUMAPROCESO^Acceso a la pantalla de catálogo de Asignacion de tipo de documento a un proceso
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOASOCIARTIPODOCUMAPROCESO_INSERT^Pantalla de catálogo para asociar un tipo de documento a un proceso, posibilidad de insertar nuevo registro.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOASOCIARTIPODOCUMAPROCESO_UPDATE^Pantalla de catálogo para asociar un tipo de documento a un proceso, posibilidad de actualizar información.
1^0^BASEAPP_CATALOGOS_PROCESO_CATALOGOASOCIARTIPODOCUMAPROCESO_DELETE^Pantalla de catálogo para asociar un tipo de documento a un proceso, posibilidad de desactivar registros.


#--Modo vacaciones
1^1^BASEAPP_CATALOGOS_SEGVACATIONMODE^Acceso a pantalla de Seguridad Vacation Mode.
1^0^BASEAPP_CATALOGOS_SEGVACATIONMODE_INSERT^Pantalla de Seguridad Vacation Mode, posibilidad de insertar nuevo registro de Seguridad Vacation Mode.
1^0^BASEAPP_CATALOGOS_SEGVACATIONMODE_UPDATE^Pantalla de Seguridad Vacation Mode, posibilidad de actualizar información de Seguridad Vacation Mode.
1^0^BASEAPP_CATALOGOS_SEGVACATIONMODE_DELETE^Pantalla de Seguridad Vacation Mode, posibilidad de desactivar registro de Seguridad Vacation Mode.


#--Gestión de usuarios
1^1^BASEAPP_SEGURIDAD_GESTIONUSUARIOS^Acceso a la pantalla de Seguimiento Perfil Usuario
1^0^BASEAPP_SEGURIDAD_GESTIONUSUARIOS_ASIGNAR^Pantalla de Seguimiento Perfil Usuario  del menú, posibilidad de asignar una opción.
1^0^BASEAPP_SEGURIDAD_GESTIONUSUARIOS_DELETE^Pantalla de Seguimiento Perfil Usuario  del menú, posibilidad de desactivar una opción.
1^0^BASEAPP_SEGURIDAD_GESTIONUSUARIOS_INSERT^Pantalla de Seguimiento Perfil Usuario  del menú, posibilidad de insertar una opción.
1^0^BASEAPP_SEGURIDAD_GESTIONUSUARIOS_UPDATE^Pantalla de Seguimiento Perfil Usuario  del menú, posibilidad de actualizar una opción.


#--Tipos de archivo
1^1^BASEAPP_CATALOGOS_ARCHIVO_CATALOGOARCHIVO^Acceso a pantalla de catálogo de Tipos de Archivo.
1^0^BASEAPP_CATALOGOS_ARCHIVO_CATALOGOARCHIVO_INSERT^Pantalla de catálogo de Estados de Proceso, posibilidad de insertar nuevo registro de Tipo de Archivo.
1^0^BASEAPP_CATALOGOS_ARCHIVO_CATALOGOARCHIVO_UPDATE^Pantalla de catálogo de Estados de Proceso, posibilidad de actualizar nuevo registro de Tipo de Archivo.
1^0^BASEAPP_CATALOGOS_ARCHIVO_CATALOGOARCHIVO_DELETE^Pantalla de catálogo de Estados de Proceso, posibilidad de desactivar nuevo registro de Tipo de Archivo.


#--Gestion de timers
1^1^BASEAPP_ADMINISTRACION_GESTIONTIMERS^Acceso a pantalla de gestión de timers.
1^0^BASEAPP_ADMINISTRACION_GESTIONTIMERS_EXECUTE^Pantalla de gestión de timers, posibilidad de ejecutar manualmente un timer.
