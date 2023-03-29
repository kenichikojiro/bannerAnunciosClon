IDPERFIL^IDPERMISO
#--Creación de SegPermisoPerfil - Perfil ADM_SIST
(select id from SEG_PERFIL where PERFIL = 'BANNER_ADM_SIST')^(select ID from SEG_PERMISO WHERE permiso = 'BASEAPP_MAIN')
(select id from SEG_PERFIL where PERFIL = 'BANNER_ADM_SIST')^(select ID from SEG_PERMISO WHERE permiso = 'MANUAL_USR_1_ADMINISTRADOR')
(select id from SEG_PERFIL where PERFIL = 'BANNER_ADM_SIST')^(select ID from SEG_PERMISO WHERE permiso = 'BASEAPP_MAIN_INSERT')
(select id from SEG_PERFIL where PERFIL = 'BANNER_ADM_SIST')^(select ID from SEG_PERMISO WHERE permiso = 'BASEAPP_ADMINISTRACION')

#--(select id from SEG_PERFIL where PERFIL = 'BANNER_ADM_SIST')^(select ID from SEG_PERMISO WHERE permiso = 'BANNER_CATALOGOS')