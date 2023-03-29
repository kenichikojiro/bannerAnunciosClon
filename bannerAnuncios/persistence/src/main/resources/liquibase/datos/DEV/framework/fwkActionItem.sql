Enabled^OrderHint^Parent_Id^IconURL^Label^URL^Id_Permiso^Id
#--Creación de FwkActionItem AppBase
1^100000^NULL^home^MENU.INICIO^/banner-web/baseapp/main.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_MAIN')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
 
1^110000^NULL^star^MENU.PRINCIPAL^NULL^(select ID from SEG_PERMISO where permiso = 'BASEAPP_MAIN')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^119999^(select ID from FWK_ACTION_ITEM where label = 'MENU.PRINCIPAL')^NULL^MENU.SALIR^/banner-web/AutenticacionLSvlt^(select ID from SEG_PERMISO where permiso = 'BASEAPP_MAIN')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)

1^990000^NULL^admin^MENU.ADMINISTRACION^NULL^(select ID from SEG_PERMISO where permiso = 'BASEAPP_ADMINISTRACION')^(SELECT COALESCE((SELECT ID FROM FWK_ACTION_ITEM WHERE LABEL = 'MENU.ADMINISTRACION'),(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)))
1^999100^(select ID from FWK_ACTION_ITEM where label = 'MENU.ADMINISTRACION')^NULL^MENU.AUTORIZACIONES^NULL^(select ID from SEG_PERMISO where permiso = 'BASEAPP_FUNCIONALIDADES_APROBACIONES')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999110^(select ID from FWK_ACTION_ITEM where label = 'MENU.AUTORIZACIONES')^NULL^MENU.APROBACIONCONFIGURAFLUJO^/banner-web/baseapp/catalogos/aprobacion/aprobacionConfiguraFlujo.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CATALOGOS_APROBACION_APROBACIONCONFIGURAFLUJO')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999120^(select ID from FWK_ACTION_ITEM where label = 'MENU.AUTORIZACIONES')^NULL^MENU.NOTIFICACIONES.BANDEJA^/banner-web/baseapp/funcionalidades/notificaciones/bandeja.jsf^(select ID from SEG_PERMISO WHERE permiso = 'BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_BANDEJA')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999130^(select ID from FWK_ACTION_ITEM where label = 'MENU.AUTORIZACIONES')^NULL^MENU.APROBACIONES^/banner-web/baseapp/funcionalidades/aprobaciones/aprobaciones.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_FUNCIONALIDADES_APROBACIONES_APROBACIONES')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999140^(select ID from FWK_ACTION_ITEM where label = 'MENU.AUTORIZACIONES')^NULL^MENU.APROBACIONREASIGNARTAREAS^/banner-web/baseapp/funcionalidades/aprobaciones/aprobacionReasignarTareas.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_FUNCIONALIDADES_APROBACIONES_APROBACIONREASIGNARTAREAS')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)

1^999200^(select ID from FWK_ACTION_ITEM where label = 'MENU.ADMINISTRACION')^NULL^MENU.NOTIFICACIONES^NULL^(select ID from SEG_PERMISO where permiso = 'BASEAPP_FUNCIONALIDADES_NOTIFICACIONES')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999210^(select ID from FWK_ACTION_ITEM where label = 'MENU.NOTIFICACIONES')^NULL^MENU.NOTIFICACIONES.ADMINISTRACION^/banner-web/baseapp/funcionalidades/notificaciones/administracion.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ADMINISTRACION')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999220^(select ID from FWK_ACTION_ITEM where label = 'MENU.NOTIFICACIONES')^NULL^MENU.NOTIFICACIONES.ADMINISTRACION.ENVIARNOTIFICACIONESPORPERFIL^/banner-web/baseapp/funcionalidades/notificaciones/enviarnotificacionesPorPerfil.jsf^(select ID from SEG_PERMISO WHERE permiso = 'BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESPORPERFIL')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999230^(select ID from FWK_ACTION_ITEM where label = 'MENU.NOTIFICACIONES')^NULL^MENU.NOTIFICACIONES.ADMINISTRACION.ENVIARNOTIFICACIONESUSUARIOSSISTEMA^/banner-web/baseapp/funcionalidades/notificaciones/enviarNotificacionesUsuariosSistema.jsf^(select ID from SEG_PERMISO WHERE permiso = 'BASEAPP_FUNCIONALIDADES_NOTIFICACIONES_ENVIARNOTIFICACIONESUSUARIOSSISTEMA')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)

1^999200^(select ID from FWK_ACTION_ITEM where label = 'MENU.ADMINISTRACION')^NULL^MENU.AUDITORIA^null^(select ID from SEG_PERMISO where permiso = 'BASEAPP_AUDITORIA')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999210^(select ID from FWK_ACTION_ITEM where label = 'MENU.AUDITORIA')^NULL^MENU.AUDITORIAREPORTES^/banner-web/baseapp/auditoria/auditoriaReportes.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_AUDITORIA_AUDITORIAREPORTES')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999220^(select ID from FWK_ACTION_ITEM where label = 'MENU.AUDITORIA')^NULL^MENU.AUDITORIATRAZABILIDAD^/banner-web/baseapp/auditoria/trazabilidad.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_AUDITORIA_TRAZABILIDAD')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999230^(select ID from FWK_ACTION_ITEM where label = 'MENU.AUDITORIA')^NULL^MENU.GESTIONTIMERS^/banner-web/baseapp/administracion/gestionTimers.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_ADMINISTRACION_GESTIONTIMERS')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)

1^999300^(select ID from FWK_ACTION_ITEM where label = 'MENU.ADMINISTRACION')^NULL^MENU.CONFIGURAREPORTES^NULL^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA_REPORTE')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999310^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURAREPORTES')^NULL^MENU.CATALOGOPANTALLAS^/banner-web/baseapp/configura/reporte/catalogoPantallas.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA_REPORTE_CATALOGOPANTALLAS')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999320^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURAREPORTES')^NULL^MENU.CATALOGOREPORTES^/banner-web/baseapp/configura/reporte/catalogoReportes.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA_REPORTE_CATALOGOREPORTES')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999330^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURAREPORTES')^NULL^MENU.CATALOGOTIPOEXPORTACION^/banner-web/baseapp/configura/reporte/catalogoTipoExportacion.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA_REPORTE_CATALOGOTIPOEXPORTACION')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999340^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURAREPORTES')^NULL^MENU.REPORTEPANTALLA^/banner-web/baseapp/configura/reporte/asignaReportePantalla.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA_REPORTE_ASIGNAREPORTEPANTALLA')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999350^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURAREPORTES')^NULL^MENU.CALENDARIO.REPORTE^/banner-web/baseapp/configura/reporte/calendario.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA_REPORTE_CALENDARIO')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999360^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURAREPORTES')^NULL^MENU.CONSULTASDINAMICASCATALOGO^/banner-web/baseapp/consultas/consultasDinamicasCatalogo.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONSULTAS_CONSULTASDINAMICASCATALOGO')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999370^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURAREPORTES')^NULL^MENU.CONSULTASDINAMICAS^/banner-web/baseapp/consultas/consultasDinamicas.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONSULTAS_CONSULTASDINAMICAS')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)

1^999400^(select ID from FWK_ACTION_ITEM where label = 'MENU.ADMINISTRACION')^NULL^MENU.CONFIGURACIONAMSYSEGURIDAD^NULL^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999410^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURACIONAMSYSEGURIDAD')^NULL^MENU.IDIOMA^/banner-web/baseapp/configura/idioma.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA_IDIOMA')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999420^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURACIONAMSYSEGURIDAD')^NULL^MENU.PARAMETRO^/banner-web/baseapp/configura/parametro.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA_PARAMETRO')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999430^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURACIONAMSYSEGURIDAD')^NULL^MENU.TEMPLATE^/banner-web/baseapp/configura/templateCorreo.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_CONFIGURA_TEMPLATECORREO')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999440^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURACIONAMSYSEGURIDAD')^NULL^MENU.PERFIL^/banner-web/baseapp/seguridad/perfil.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_SEGURIDAD_PERFIL')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999450^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURACIONAMSYSEGURIDAD')^NULL^MENU.PERMISO^/banner-web/baseapp/seguridad/permiso.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_SEGURIDAD_PERMISO')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)
1^999460^(select ID from FWK_ACTION_ITEM where label = 'MENU.CONFIGURACIONAMSYSEGURIDAD')^NULL^MENU.MENU^/banner-web/baseapp/seguridad/menuConfig.jsf^(select ID from SEG_PERMISO where permiso = 'BASEAPP_SEGURIDAD_MENUCONFIG')^(SELECT COALESCE(max(ID)+1, 1) from FWK_ACTION_ITEM)