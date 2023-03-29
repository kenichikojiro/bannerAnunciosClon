
CREATE TABLE CATALOGO_METODO_COMUNICACION
( 
	ID                   numeric(5)  IDENTITY ( 1,1 )  NOT NULL ,
	NOMBRE               varchar(50)  NOT NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_2122807381
		 DEFAULT  1,
	FECHA_CREACION       datetime  NOT NULL ,
	USR_CREACION         varchar(20)  NOT NULL ,
	FECHA_ACTUALIZACION  datetime  NULL ,
	USR_ACTUALIZA        varchar(20)  NULL ,
	KEY_METODO           varchar(50)  NOT NULL 
);

ALTER TABLE CATALOGO_METODO_COMUNICACION
	ADD CONSTRAINT XPKCATALOGO_METODO_COMUNICAB4B PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE CATALOGO_METODO_COMUNICACION
	ADD CONSTRAINT XAK1CATALOGO_METODO_COMUNICAB4 UNIQUE (KEY_METODO  ASC);

ALTER TABLE CATALOGO_METODO_COMUNICACION
	ADD CONSTRAINT XAK2CATALOGO_METODO_COMUNICAB4 UNIQUE (NOMBRE  ASC);

CREATE TABLE CATALOGO_TIPO_NOTIFICACION
( 
	ID                   numeric(5)  IDENTITY ( 1,1 )  NOT NULL ,
	NOMBRE               varchar(50)  NOT NULL ,
	FECHA_CREACION       datetime  NOT NULL ,
	USR_CREACION         varchar(20)  NOT NULL ,
	FECHA_ACTUALIZACION  datetime  NULL ,
	USR_ACTUALIZA        varchar(20)  NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_675712329
		 DEFAULT  1
);

ALTER TABLE CATALOGO_TIPO_NOTIFICACION
	ADD CONSTRAINT XPKCATALOGO_TIPO_NOTIFICACI95E PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE CATALOGO_TIPO_NOTIFICACION
	ADD CONSTRAINT XAK1CATALOGO_TIPO_NOTIFICACI95 UNIQUE (NOMBRE  ASC);

CREATE TABLE DATOS_CONTACTO_USR
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_PROPIETARIO       numeric(10)  NOT NULL ,
	ID_DATO_CONTACTO     numeric(10)  NOT NULL ,
	RECIBIR_NOTIFICACIONES numeric(1)  NOT NULL 
	CONSTRAINT Default_1_372982796
		 DEFAULT  1
	CONSTRAINT VALORLOGICO_1845761836
		CHECK  ( RECIBIR_NOTIFICACIONES BETWEEN 0 AND 1 )
);

ALTER TABLE DATOS_CONTACTO_USR
	ADD CONSTRAINT XPKDATOS_CONTACTO_USR39C3C261_ PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE DATOS_CONTACTO_USR
	ADD CONSTRAINT XAK1DATOS_CONTACTO_USR39C3C261 UNIQUE (ID_PROPIETARIO  ASC,ID_DATO_CONTACTO  ASC);

CREATE TABLE NOTIFICACION_DATOS_CONTACTO
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	CADENA_CONTACTO      varchar(75)  NOT NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_496796759
		 DEFAULT  1,
	FECHA_CREACION       datetime  NOT NULL ,
	USR_CREACION         varchar(20)  NOT NULL ,
	FECHA_ACTUALIZACION  datetime  NULL ,
	USR_ACTUALIZA        varchar(20)  NULL ,
	HORARIO_DISPONIBILIDAD varchar(100)  NULL ,
	ID_METODO_COMUNICACION numeric(5)  NOT NULL 
);

ALTER TABLE NOTIFICACION_DATOS_CONTACTO
	ADD CONSTRAINT XPKNOTIFICACION_DATOS_CONTAA57 PRIMARY KEY  NONCLUSTERED (ID ASC);

CREATE TABLE NOTIFICACION_DETALLE
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_NOTIFICACION_ENCABEZADO numeric(10)  NOT NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_470425442
		 DEFAULT  1,
	FECHA_CREACION       datetime  NOT NULL ,
	USR_CREACION         varchar(20)  NOT NULL ,
	FECHA_ACTUALIZACION  datetime  NULL ,
	USR_ACTUALIZA        varchar(20)  NULL ,
	ID_METODO_COMUNICACION numeric(5)  NOT NULL ,
	ID_TEMPLATE_CORREO   numeric(5)  NULL ,
	ENVIAR_ADJUNTO       numeric(1)  NOT NULL 
	CONSTRAINT Default_0_494038381
		 DEFAULT  0
	CONSTRAINT VALORLOGICO_1131748482
		CHECK  ( ENVIAR_ADJUNTO BETWEEN 0 AND 1 )
);

ALTER TABLE NOTIFICACION_DETALLE
	ADD CONSTRAINT XPKNOTIFICACION_DETALLE1924BC7 PRIMARY KEY  NONCLUSTERED (ID ASC);

CREATE TABLE NOTIFICACION_DETALLE_REPORTE
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_NOTIFICACION_DETALLE numeric(10)  NULL ,
	ID_REPORTE_EJECUTAR  numeric(5)  NULL ,
	ID_TIPO_EXPORTACION  numeric(5)  NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_1835369932
		 DEFAULT  1,
	FECHA_CREACION       datetime  NOT NULL ,
	USR_CREACION         varchar(20)  NOT NULL ,
	FECHA_ACTUALIZACION  datetime  NULL ,
	USR_ACTUALIZA        varchar(20)  NULL 
);

ALTER TABLE NOTIFICACION_DETALLE_REPORTE
	ADD CONSTRAINT XPKNOTIFICACION_DETALLE_REP17D PRIMARY KEY  NONCLUSTERED (ID ASC);

CREATE TABLE NOTIFICACION_DOCUMENTOS
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_DOCUMENTO         numeric(12)  NOT NULL ,
	ID_PROPIETARIO       numeric(10)  NOT NULL 
);

ALTER TABLE NOTIFICACION_DOCUMENTOS
	ADD CONSTRAINT XPKNOTIFICACION_DOCUMENTOS2E38 PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE NOTIFICACION_DOCUMENTOS
	ADD CONSTRAINT XAK1NOTIFICACION_DOCUMENTOS2E3 UNIQUE (ID_DOCUMENTO  ASC,ID_PROPIETARIO  ASC);

CREATE TABLE NOTIFICACION_ENCABEZADO
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_TIPO_NOTIFICACION numeric(5)  NOT NULL ,
	TITULO               varchar(50)  NOT NULL ,
	MENSAJE              varchar(150)  NOT NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_499313163
		 DEFAULT  1,
	FECHA_CREACION       datetime  NOT NULL ,
	USR_CREACION         varchar(20)  NOT NULL ,
	FECHA_ACTUALIZACION  datetime  NULL ,
	USR_ACTUALIZA        varchar(20)  NULL ,
	KEY_NOTIFICACION     varchar(50)  NOT NULL 
);

ALTER TABLE NOTIFICACION_ENCABEZADO
	ADD CONSTRAINT XPKNOTIFICACION_ENCABEZADO4BE8 PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE NOTIFICACION_ENCABEZADO
	ADD CONSTRAINT XAK1NOTIFICACION_ENCABEZADO4BE UNIQUE (KEY_NOTIFICACION  ASC);

CREATE TABLE NOTIFICACION_GRUPO_DESTINATARI
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_NOTIFICACION      numeric(10)  NOT NULL ,
	ID_PERFIL            numeric(5)  NULL ,
	PERSONAS_ESPECIFICAS numeric(1)  NOT NULL 
	CONSTRAINT Default_0_783919032
		 DEFAULT  0
	CONSTRAINT VALORLOGICO_2109746633
		CHECK  ( PERSONAS_ESPECIFICAS BETWEEN 0 AND 1 ),
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_1400842878
		 DEFAULT  1,
	FECHA_CREACION       datetime  NOT NULL ,
	USR_CREACION         varchar(20)  NOT NULL ,
	FECHA_ACTUALIZACION  datetime  NULL ,
	USR_ACTUALIZA        varchar(20)  NULL ,
	NOMBRE_GRUPO         varchar(75)  NULL 
);

ALTER TABLE NOTIFICACION_GRUPO_DESTINATARI
	ADD CONSTRAINT XPKNOTIFICACION_GRUPO_DESTI229 PRIMARY KEY  NONCLUSTERED (ID ASC);

CREATE TABLE NOTIFICACION_GRUPO_MIEMBROS
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_GRUPO             numeric(10)  NULL ,
	ID_MIEMBRO           numeric(10)  NULL ,
	TABLA_ORIGEN         varchar(50)  NULL 
);

ALTER TABLE NOTIFICACION_GRUPO_MIEMBROS
	ADD CONSTRAINT XPKNOTIFICACION_GRUPO_MIEMB31B PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE NOTIFICACION_GRUPO_MIEMBROS
	ADD CONSTRAINT XAK1NOTIFICACION_GRUPO_MIEMB31 UNIQUE (ID_GRUPO  ASC,TABLA_ORIGEN  ASC,ID_MIEMBRO  ASC);

CREATE TABLE NOTIFICACION_MOVIMIENTO
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_NOTIFICACION_DETALLE numeric(10)  NOT NULL ,
	ID_GRUPO_DESTINATARIO numeric(10)  NULL ,
	ENVIADO              numeric(1)  NOT NULL 
	CONSTRAINT Default_0_851691775
		 DEFAULT  0
	CONSTRAINT VALORLOGICO_218745932
		CHECK  ( ENVIADO BETWEEN 0 AND 1 ),
	FECHA_ENVIO          datetime  NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_531482374
		 DEFAULT  1,
	FECHA_CREACION       datetime  NOT NULL ,
	USR_CREACION         varchar(20)  NOT NULL ,
	FECHA_ACTUALIZACION  datetime  NULL ,
	USR_ACTUALIZA        varchar(20)  NULL ,
	ID_URL_CORTO         numeric(10)  NULL ,
	ID_CONTACTO_PERSONA  numeric(5)  NULL ,
	FECHA_DEBE_ENVIAR    datetime  NOT NULL ,
	CADENA_CONTACTO      varchar(75)  NOT NULL ,
	NOTIFICACION_PRECONFIGURADA numeric(1)  NOT NULL 
	CONSTRAINT Default_1_1270263664
		 DEFAULT  1
	CONSTRAINT VALORLOGICO_2055779642
		CHECK  ( NOTIFICACION_PRECONFIGURADA BETWEEN 0 AND 1 ),
	VISTO                numeric(1)  NOT NULL 
	CONSTRAINT Default_0_167912703
		 DEFAULT  0
	CONSTRAINT VALORLOGICO_1324747507
		CHECK  ( VISTO BETWEEN 0 AND 1 )
);

ALTER TABLE NOTIFICACION_MOVIMIENTO
	ADD CONSTRAINT XPKNOTIFICACION_MOVIMIENTO5534 PRIMARY KEY  NONCLUSTERED (ID ASC);

CREATE TABLE NOTIFICACION_REEMPLAZOS
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_NOTIFICACION      numeric(10)  NOT NULL ,
	NOMBRE_REEMPLAZAR    varchar(50)  NOT NULL ,
	ESTATUS              numeric(1)  NOT NULL 
	CONSTRAINT Default_1_882754569
		 DEFAULT  1,
	FECHA_CREACION       datetime  NOT NULL ,
	USR_CREACION         varchar(20)  NOT NULL ,
	FECHA_ACTUALIZACION  datetime  NULL ,
	USR_ACTUALIZA        varchar(20)  NULL 
);

ALTER TABLE NOTIFICACION_REEMPLAZOS
	ADD CONSTRAINT XPKNOTIFICACION_REEMPLAZOSB560 PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE NOTIFICACION_REEMPLAZOS
	ADD CONSTRAINT XAK1NOTIFICACION_REEMPLAZOSB56 UNIQUE (ID_NOTIFICACION  ASC,NOMBRE_REEMPLAZAR  ASC);

CREATE TABLE NOTIFICACION_VALORES_REEMPLAZA
( 
	ID                   numeric(10)  IDENTITY ( 1,1 )  NOT NULL ,
	ID_NOTIFICACION_MOVIMIENTO numeric(10)  NOT NULL ,
	ID_VALOR_REEMPLAZAR  numeric(10)  NOT NULL ,
	VALOR                varchar(200)  NOT NULL 
);

ALTER TABLE NOTIFICACION_VALORES_REEMPLAZA
	ADD CONSTRAINT XPKNOTIFICACION_VALORES_REE8DE PRIMARY KEY  NONCLUSTERED (ID ASC);

ALTER TABLE NOTIFICACION_VALORES_REEMPLAZA
	ADD CONSTRAINT XAK1NOTIFICACION_VALORES_REE8D UNIQUE (ID_NOTIFICACION_MOVIMIENTO  ASC,ID_VALOR_REEMPLAZAR  ASC);

ALTER TABLE DATOS_CONTACTO_USR
	ADD CONSTRAINT FK_DATOS_CONTACTO_USR_SEG_UF3F FOREIGN KEY (ID_PROPIETARIO) REFERENCES SEG_USUARIO(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE DATOS_CONTACTO_USR
	ADD CONSTRAINT FK_DATOS_CONTACTO_USR_NOTIF2A1 FOREIGN KEY (ID_DATO_CONTACTO) REFERENCES NOTIFICACION_DATOS_CONTACTO(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_DATOS_CONTACTO
	ADD CONSTRAINT FK_NOTIFICACION_DATOS_CONTA984 FOREIGN KEY (ID_METODO_COMUNICACION) REFERENCES CATALOGO_METODO_COMUNICACION(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_DETALLE
	ADD CONSTRAINT FK_NOTIFICACION_DETALLE_NOT3EB FOREIGN KEY (ID_NOTIFICACION_ENCABEZADO) REFERENCES NOTIFICACION_ENCABEZADO(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE NOTIFICACION_DETALLE
	ADD CONSTRAINT FK_NOTIFICACION_DETALLE_CAT1E0 FOREIGN KEY (ID_METODO_COMUNICACION) REFERENCES CATALOGO_METODO_COMUNICACION(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE NOTIFICACION_DETALLE
	ADD CONSTRAINT FK_NOTIFICACION_DETALLE_FWKCB2 FOREIGN KEY (ID_TEMPLATE_CORREO) REFERENCES FWK_CORREO_TEMPLATE(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_DETALLE_REPORTE
	ADD CONSTRAINT FK_NOTIFICACION_DETALLE_REPECA FOREIGN KEY (ID_NOTIFICACION_DETALLE) REFERENCES NOTIFICACION_DETALLE(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE NOTIFICACION_DETALLE_REPORTE
	ADD CONSTRAINT FK_NOTIFICACION_DETALLE_REP834 FOREIGN KEY (ID_REPORTE_EJECUTAR) REFERENCES FWK_CATALOGO_REPORTES(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE NOTIFICACION_DETALLE_REPORTE
	ADD CONSTRAINT FK_NOTIFICACION_DETALLE_REP922 FOREIGN KEY (ID_TIPO_EXPORTACION) REFERENCES FWK_CATALOGO_TIPO_EXPORTACION(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_DOCUMENTOS
	ADD CONSTRAINT FK_NOTIFICACION_DOCUMENTOS_9FD FOREIGN KEY (ID_DOCUMENTO) REFERENCES CM_DOCUMENTO(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE NOTIFICACION_DOCUMENTOS
	ADD CONSTRAINT FK_NOTIFICACION_DOCUMENTOS_EED FOREIGN KEY (ID_PROPIETARIO) REFERENCES NOTIFICACION_DETALLE(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_ENCABEZADO
	ADD CONSTRAINT FK_NOTIFICACION_ENCABEZADO_A97 FOREIGN KEY (ID_TIPO_NOTIFICACION) REFERENCES CATALOGO_TIPO_NOTIFICACION(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_GRUPO_DESTINATARI
	ADD CONSTRAINT FK_NOTIFICACION_GRUPO_DESTI84E FOREIGN KEY (ID_NOTIFICACION) REFERENCES NOTIFICACION_ENCABEZADO(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE NOTIFICACION_GRUPO_DESTINATARI
	ADD CONSTRAINT FK_NOTIFICACION_GRUPO_DESTI329 FOREIGN KEY (ID_PERFIL) REFERENCES SEG_PERFIL(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_GRUPO_MIEMBROS
	ADD CONSTRAINT FK_NOTIFICACION_GRUPO_MIEMB581 FOREIGN KEY (ID_GRUPO) REFERENCES NOTIFICACION_GRUPO_DESTINATARI(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_MOVIMIENTO
	ADD CONSTRAINT FK_NOTIFICACION_MOVIMIENTO_AF6 FOREIGN KEY (ID_NOTIFICACION_DETALLE) REFERENCES NOTIFICACION_DETALLE(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE NOTIFICACION_MOVIMIENTO
	ADD CONSTRAINT FK_NOTIFICACION_MOVIMIENTO_F53 FOREIGN KEY (ID_GRUPO_DESTINATARIO) REFERENCES NOTIFICACION_GRUPO_DESTINATARI(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE NOTIFICACION_MOVIMIENTO
	ADD CONSTRAINT FK_NOTIFICACION_MOVIMIENTO_45F FOREIGN KEY (ID_URL_CORTO) REFERENCES FWK_TINY_URL(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_REEMPLAZOS
	ADD CONSTRAINT FK_NOTIFICACION_REEMPLAZOS_661 FOREIGN KEY (ID_NOTIFICACION) REFERENCES NOTIFICACION_ENCABEZADO(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;


ALTER TABLE NOTIFICACION_VALORES_REEMPLAZA
	ADD CONSTRAINT FK_NOTIFICACION_VALORES_REE6F1 FOREIGN KEY (ID_NOTIFICACION_MOVIMIENTO) REFERENCES NOTIFICACION_MOVIMIENTO(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

ALTER TABLE NOTIFICACION_VALORES_REEMPLAZA
	ADD CONSTRAINT FK_NOTIFICACION_VALORES_REE13D FOREIGN KEY (ID_VALOR_REEMPLAZAR) REFERENCES NOTIFICACION_REEMPLAZOS(ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;
