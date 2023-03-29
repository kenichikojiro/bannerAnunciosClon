STATUS^ID_APP^DESCRIPTION^CREATED_ON^UPDATED_ON^UPDATED_BY^CREATED_BY
#--Creacion de FwkCatAdmin

1^(select id_app from FWK_CAT_APPS where Application_Name = 'BASE_APP')^PropiedadesSWF^,CURRENT_TIMESTAMP^^^BASE_APP
1^(select id_app from FWK_CAT_APPS where Application_Name = 'SWF')^PropiedadesSWF^CURRENT_TIMESTAMP^^^BASE_APP
1^(select id_app from FWK_CAT_APPS where Application_Name = 'BASE_APP')^IconList^CURRENT_TIMESTAMP^^^BASE_APP
1^(select id_app from FWK_CAT_APPS where Application_Name = 'BANNER')^PropiedadesSWF^CURRENT_TIMESTAMP^^^BASE_APP