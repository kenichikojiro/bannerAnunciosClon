
CREATE TABLE FWK_ACTION_ITEM
( 
	ID                   numeric(5)  NOT NULL ,
	PARENT_ID            numeric(5)  NULL ,
	ENABLED              numeric(1)  NOT NULL 
	CONSTRAINT VALORLOGICO_1249924265
		CHECK  ( ENABLED BETWEEN 0 AND 1 ),
	ICONURL              varchar(255)  NULL ,
	LABEL                varchar(255)  NULL ,
	URL                  varchar(255)  NULL ,
	ORDERHINT            numeric(8)  NULL ,
	ID_PERMISO           numeric(10)  NULL 
);

ALTER TABLE FWK_ACTION_ITEM
	ADD CONSTRAINT XPKFWK_ACTION_ITEM8C28AB46_4AC PRIMARY KEY  NONCLUSTERED (ID ASC);

CREATE TABLE FWK_CADENA_IDIOMA
( 
	ID                   numeric(12)  IDENTITY ( 1,1 )  NOT NULL ,
	CLAVE                varchar(100)  NULL ,
	ID_IDIOMA            numeric(5)  NULL ,
	VALOR                varchar(255)  NULL 
);

ALTER TABLE FWK_CADENA_IDIOMA
	ADD CONSTRAINT XPKFWK_CADENA_IDIOMA2099B6D5_4 PRIMARY KEY  NONCLUSTERED (ID ASC);

CREATE TABLE FWK_CAT_ADMIN
( 
	ID_ADMIN             numeric(5)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_APP               numeric(5)  NULL ,
	DESCRIPTION          varchar(100)  NULL ,
	CREATED_ON           datetime  NULL ,
	CREATED_BY           varchar(20)  NULL ,
	UPDATED_ON           datetime  NULL ,
	UPDATED_BY           varchar(20)  NULL ,
	STATUS               numeric(1)  NOT NULL 
	CONSTRAINT VALORLOGICO_725302896
		CHECK  ( STATUS BETWEEN 0 AND 1 )
);

ALTER TABLE FWK_CAT_ADMIN
	ADD CONSTRAINT XPKFWK_CAT_ADMIN28AF5AE6_4EADE PRIMARY KEY  NONCLUSTERED (ID_ADMIN ASC);

ALTER TABLE FWK_CAT_ADMIN
	ADD CONSTRAINT XAK1FWK_CAT_ADMIN28AF5AE6_4EAD UNIQUE (ID_APP  ASC,DESCRIPTION  ASC);

CREATE TABLE FWK_CAT_APPS
( 
	ID_APP               numeric(5)  IDENTITY ( 1,1 )  NOT NULL ,
	APPLICATION_NAME     varchar(50)  NULL ,
	CREATED_ON           datetime  NULL ,
	CREATED_BY           varchar(20)  NULL ,
	UPDATED_ON           datetime  NULL ,
	UPDATED_BY           varchar(20)  NULL ,
	STATUS               numeric(1)  NOT NULL 
	CONSTRAINT Default_1_944656668
		 DEFAULT  1
	CONSTRAINT VALORLOGICO_656619358
		CHECK  ( STATUS BETWEEN 0 AND 1 )
);

ALTER TABLE FWK_CAT_APPS
	ADD CONSTRAINT XPKFWK_CAT_APPS73110109_4D5942 PRIMARY KEY  NONCLUSTERED (ID_APP ASC);

ALTER TABLE FWK_CAT_APPS
	ADD CONSTRAINT XAK1FWK_CAT_APPS73110109_4D594 UNIQUE (APPLICATION_NAME  ASC);

CREATE TABLE FWK_CAT_CONTENT
( 
	ID_CONTENT           numeric(18)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_APP               numeric(5)  NULL ,
	ID_ADMIN             numeric(5)  NULL ,
	KEY_VALUE            varchar(50)  NULL ,
	VALUE                varchar(150)  NULL ,
	DESCRIPTION          varchar(255)  NULL ,
	CREATED_ON           datetime  NULL ,
	CREATED_BY           varchar(20)  NULL ,
	UPDATED_ON           datetime  NULL ,
	UPDATED_BY           varchar(20)  NULL ,
	STATUS               numeric(1)  NOT NULL 
	CONSTRAINT VALORLOGICO_1349085094
		CHECK  ( STATUS BETWEEN 0 AND 1 )
);

ALTER TABLE FWK_CAT_CONTENT
	ADD CONSTRAINT XPKFWK_CAT_CONTENT978639F1_442 PRIMARY KEY  NONCLUSTERED (ID_CONTENT ASC);

ALTER TABLE FWK_CAT_CONTENT
	ADD CONSTRAINT XAK1FWK_CAT_CONTENT978639F1_44 UNIQUE (ID_ADMIN  ASC,KEY_VALUE  ASC);

ALTER TABLE FWK_CAT_CONTENT
	ADD CONSTRAINT XAK2FWK_CAT_CONTENT978639F1_44 UNIQUE (ID_ADMIN  ASC,KEY_VALUE  ASC,VALUE  ASC);

CREATE TABLE FWK_CORREO_PEND
( 
	ID                   numeric(12)  IDENTITY ( 1,1 )  NOT NULL ,
	APPS_ID              numeric(5)  NOT NULL ,
	TSMENSAJE            datetime  NOT NULL ,
	LENVIADO             numeric(1)  NOT NULL 
	CONSTRAINT Default_0_1823582081
		 DEFAULT  0
	CONSTRAINT VALORLOGICO_2106158017
		CHECK  ( LENVIADO BETWEEN 0 AND 1 ),
	BMENSAJE             varbinary(max)  NULL ,
	TSENVIADO            datetime  NULL 
);

ALTER TABLE [FWK_CORREO_PEND]  ADD CONSTRAINT [UQ_FWK_CORREO_PEND_ID] UNIQUE NONCLUSTERED ([ID]);
ALTER TABLE FWK_CORREO_PEND
	ADD CONSTRAINT XPKFWK_CORREO_PEND81C3FE16_4AA PRIMARY KEY  NONCLUSTERED (ID ASC);

CREATE TABLE FWK_CORREO_TEMPLATE
( 
	ID                   numeric(5)  IDENTITY ( 1,1 )  NOT NULL ,
	NUM_CORREO        numeric(10)  NULL ,
	ID_IDIOMA            numeric(5)  NULL ,
	APPS_ID              numeric(5)  NULL ,
	MAILTO               varchar(200)  NULL ,
	MAILCC               varchar(200)  NULL ,
	MAILBCC              varchar(200)  NULL ,
	MAILSUBJECT          varchar(150)  NULL ,
	MAILBODY             varchar(2500)  NULL ,
	MAILATTACH           varchar(2500)  NULL ,
	MAILIMAGES           varchar(200)  NULL ,
	FECHACREACION        datetime  NULL ,
	USUARIOCREACION          varchar(20)  NULL ,
	FECHAACTUALIZA       datetime  NULL ,
	USUARIOACTUALIZA         varchar(20)  NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT VALORLOGICO_708461336
		CHECK  ( ESTATUS BETWEEN 0 AND 1 )
);

ALTER TABLE FWK_CORREO_TEMPLATE
	ADD CONSTRAINT XPKFWK_CORREO_TEMPLATE45E7D61F PRIMARY KEY  NONCLUSTERED (ID ASC);

CREATE TABLE FWK_IDIOMA
( 
	ID                   numeric(5)  IDENTITY ( 1,1 )  NOT NULL ,
	DESCRIPCION          varchar(100)  NULL ,
	COD_IDIOMA        varchar(3)  NULL ,
	FORMATO_FECHA        varchar(20)  NOT NULL ,
	COD_PAIS          varchar(3)  NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT VALORLOGICO_454033218
		CHECK  ( ESTATUS BETWEEN 0 AND 1 ),
	PREDETERMINADO       numeric(1)  NOT NULL 
	CONSTRAINT VALORLOGICO_2069396058
		CHECK  ( PREDETERMINADO BETWEEN 0 AND 1 )
);

ALTER TABLE FWK_IDIOMA
	ADD CONSTRAINT XPKFWK_IDIOMABCA30A09_415AD31C PRIMARY KEY  NONCLUSTERED (ID ASC);
ALTER TABLE [FWK_IDIOMA]  ADD CONSTRAINT [UQ_IDIOMA_PAIS] UNIQUE NONCLUSTERED ([COD_IDIOMA],[COD_PAIS]);

CREATE TABLE FWK_LAYOUT_CARGA
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	NOMBRE_LAYOUT        varchar(150)  NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_1799179425
		 DEFAULT  1,
	NUMERO_LAYOUT        numeric(5)  NULL ,
	DESC_LAYOUT          varchar(150)  NULL 
);

ALTER TABLE FWK_LAYOUT_CARGA
	ADD CONSTRAINT XPKFWK_LAYOUT_CARGA4B811C2F_44 PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE FWK_LAYOUT_CARGA
	ADD CONSTRAINT XAK1FWK_LAYOUT_CARGA4B811C2F_4 UNIQUE (NUMERO_LAYOUT  ASC);

ALTER TABLE FWK_LAYOUT_CARGA
	ADD CONSTRAINT XAK2FWK_LAYOUT_CARGA4B811C2F_4 UNIQUE (NOMBRE_LAYOUT  ASC);

CREATE TABLE FWK_LAYOUT_POSICIONES
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_LAYOUT            numeric(10)  NULL ,
	ORDEN                numeric(5)  NULL ,
	NOMBRE_COLUMNA       varchar(50)  NULL ,
	POSICION_INICIAL     numeric(5)  NULL ,
	POSICION_FINAL       numeric(5)  NULL ,
	LONGITUD             numeric(5)  NULL ,
	TIPO_DATO            numeric(5)  NULL ,
	DEFINE_TIPO_VALOR    numeric(1)  NOT NULL 
	CONSTRAINT Default_0_1694837599
		 DEFAULT  0,
	FORMATO_INFORMACION  varchar(20)  NULL ,
	NOMBRE_CAMPO         varchar(50)  NULL ,
	OBLIGATORIO          numeric(1)  NOT NULL 
	CONSTRAINT Default_0_1245919318
		 DEFAULT  0,
	ACTIVO               numeric(1)  NOT NULL 
	CONSTRAINT Default_1_285086010
		 DEFAULT  1
);

ALTER TABLE FWK_LAYOUT_POSICIONES
	ADD CONSTRAINT XPKFWK_LAYOUT_POSICIONESAE49C7 PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE FWK_LAYOUT_POSICIONES
	ADD CONSTRAINT XAK1FWK_LAYOUT_POSICIONESAE49C UNIQUE (ID_LAYOUT  ASC,NOMBRE_COLUMNA  ASC);

CREATE NONCLUSTERED INDEX [XIF1FRAMEWORK_LAYOUT_POSICIONES] ON [FWK_LAYOUT_POSICIONES] (  [ID_LAYOUT]  ASC );

CREATE TABLE FWK_PREFERENCIAS_USR
( 
	ID_NUM_CONTROL    numeric(10)  NOT NULL ,
	ID_IDIOMA            numeric(5)  NULL ,
	POSICION_MENU        varchar(5)  NOT NULL 
	CONSTRAINT DefaultPosicionMenu
		 DEFAULT  'north',
	TEMPLATE             varchar(30)  NOT NULL 
	CONSTRAINT DefaultTemplate
		 DEFAULT  'template',
	THEME                varchar(30)  NOT NULL 
	CONSTRAINT DefaultTheme
		 DEFAULT  'aristo',
	FAVORITES            varchar(100)  NULL,
	MENU_TYPE varchar(30) DEFAULT 'STACK'
);

ALTER TABLE FWK_PREFERENCIAS_USR
	ADD CONSTRAINT XPKFWK_PREFERENCIAS_USR85DA3BA PRIMARY KEY  NONCLUSTERED (ID_NUM_CONTROL ASC);

CREATE TABLE FWK_TINY_URL
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	TINY_URL             varchar(50)  NOT NULL ,
	FULL_URL             varchar(255)  NOT NULL ,
	UN_SOLO_USO          numeric(1)  NOT NULL 
	CONSTRAINT CHK_UN_SOLO_USO
		 DEFAULT  0
	CONSTRAINT VALORLOGICO_2136357682
		CHECK  ( UN_SOLO_USO BETWEEN 0 AND 1 ),
	USADO                numeric(1)  NOT NULL 
	CONSTRAINT CHK_USADO
		 DEFAULT  0
	CONSTRAINT VALORLOGICO_893058612
		CHECK  ( USADO BETWEEN 0 AND 1 ),
	EXPIRA               numeric(1)  NOT NULL 
	CONSTRAINT CHK_EXPIRA
		 DEFAULT  0
	CONSTRAINT VALORLOGICO_640556924
		CHECK  ( EXPIRA BETWEEN 0 AND 1 ),
	FECHA_INICIAL        datetime  NULL ,
	FECHA_FINAL          datetime  NULL 
);

ALTER TABLE FWK_TINY_URL
	ADD CONSTRAINT XPKFWK_TINY_URL6018D85A_426258 PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE FWK_TINY_URL
	ADD CONSTRAINT XAK1FWK_TINY_URL6018D85A_42625 UNIQUE (TINY_URL  ASC);

CREATE UNIQUE INDEX [IXFRAMEWORK_TINY_URL] ON [FWK_TINY_URL] ([ID]   ASC);
CREATE UNIQUE INDEX [IXAK1FRAMEWORK_TINY_URL] ON [FWK_TINY_URL] ([TINY_URL]   ASC);


ALTER TABLE FWK_ACTION_ITEM
	ADD CONSTRAINT FK_FWK_ACTION_ITEM_FWK_ACTI1F7 FOREIGN KEY (PARENT_ID) REFERENCES FWK_ACTION_ITEM(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE FWK_ACTION_ITEM
	ADD CONSTRAINT FK_FWK_ACTION_ITEM_SEG_PERM5C1 FOREIGN KEY (ID_PERMISO) REFERENCES SEG_PERMISO(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE FWK_CADENA_IDIOMA
	ADD CONSTRAINT FK_FWK_CADENA_IDIOMA_FWK_ID816 FOREIGN KEY (ID_IDIOMA) REFERENCES FWK_IDIOMA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		
ALTER TABLE [FWK_CADENA_IDIOMA]  
	ADD CONSTRAINT [UQ_FWK_CADENA_IDIOMA_CLAVE] UNIQUE NONCLUSTERED ([CLAVE],[ID_IDIOMA]);


ALTER TABLE FWK_CAT_ADMIN
	ADD CONSTRAINT FK_FWK_CAT_ADMIN_FWK_CAT_AP265 FOREIGN KEY (ID_APP) REFERENCES FWK_CAT_APPS(ID_APP)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE FWK_CAT_CONTENT
	ADD CONSTRAINT FK_FWK_CAT_CONTENT_FWK_CAT_25B FOREIGN KEY (ID_APP) REFERENCES FWK_CAT_APPS(ID_APP)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE FWK_CAT_CONTENT
	ADD CONSTRAINT FK_FWK_CAT_CONTENT_FWK_CAT_1C1 FOREIGN KEY (ID_ADMIN) REFERENCES FWK_CAT_ADMIN(ID_ADMIN)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE FWK_CORREO_PEND
	ADD CONSTRAINT FK_FWK_CORREO_PEND_FWK_CAT_F83 FOREIGN KEY (APPS_ID) REFERENCES FWK_CAT_APPS(ID_APP)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE FWK_CORREO_TEMPLATE
	ADD CONSTRAINT FK_FWK_CORREO_TEMPLATE_FWK_BA6 FOREIGN KEY (ID_IDIOMA) REFERENCES FWK_IDIOMA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE FWK_CORREO_TEMPLATE
	ADD CONSTRAINT FK_FWK_CORREO_TEMPLATE_FWK_9F7 FOREIGN KEY (APPS_ID) REFERENCES FWK_CAT_APPS(ID_APP)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
		

ALTER TABLE FWK_LAYOUT_POSICIONES
	ADD CONSTRAINT FK_FWK_LAYOUT_POSICIONES_FW400 FOREIGN KEY (ID_LAYOUT) REFERENCES FWK_LAYOUT_CARGA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE FWK_PREFERENCIAS_USR
	ADD CONSTRAINT FK_FWK_PREFERENCIAS_USR_SEGD02 FOREIGN KEY (ID_NUM_CONTROL) REFERENCES SEG_USUARIO(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE FWK_PREFERENCIAS_USR
	ADD CONSTRAINT FK_FWK_PREFERENCIAS_USR_FWK2CD FOREIGN KEY (ID_IDIOMA) REFERENCES FWK_IDIOMA(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;