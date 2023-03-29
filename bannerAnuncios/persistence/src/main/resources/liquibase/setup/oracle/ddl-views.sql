/* Create Views */
CREATE OR REPLACE VIEW CAT_PARAMETRO AS
SELECT ID_CONTENT as Id,
	   ID_APP as idApp,
	   ID_ADMIN as idAdmin,
       KEY_VALUE as keyValue,
       VALUE as valor,
       DESCRIPTION as descripcion,
       STATUS as activo
FROM FWK_CAT_CONTENT
WHERE FWK_CAT_CONTENT.Id_App = (select NUM_SISTEMA('BASE_APP') from dual)
  AND FWK_CAT_CONTENT.Id_Admin = (select NUM_CATALOGO('BASE_APP','PropiedadesSWF') from dual)
;
