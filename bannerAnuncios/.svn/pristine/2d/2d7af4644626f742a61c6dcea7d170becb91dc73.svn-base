/* Create Views */
CREATE VIEW CAT_PARAMETRO AS
SELECT Id_Content as Id,
	   Id_App as idApp,
	   Id_Admin as idAdmin,
       Key_Value as keyValue,
       Value as valor,
       Description as descripcion,
       Status as activo
FROM FWK_CAT_CONTENT
WHERE FWK_CAT_CONTENT.Id_App = dbo.NUM_SISTEMA('BASE_APP')
  AND FWK_CAT_CONTENT.Id_Admin = dbo.NUM_CATALOGO('BASE_APP','PropiedadesSWF')
;
