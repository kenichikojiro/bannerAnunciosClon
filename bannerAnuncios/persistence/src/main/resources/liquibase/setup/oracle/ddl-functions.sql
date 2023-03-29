/* Create Functions */
create or replace FUNCTION "NUM_SISTEMA" (
  NOMBRE_SISTEMA IN VARCHAR2
) RETURN NUMBER AS
  NumSistema NUMBER(4,0);
BEGIN
  NumSistema := 0;

  SELECT ID_APP INTO NumSistema FROM FWK_CAT_APPS WHERE UPPER(APPLICATION_NAME) = UPPER(NOMBRE_SISTEMA);
  RETURN NumSistema;

END NUM_SISTEMA;
|

create or replace FUNCTION "NUM_CATALOGO" (
  NOMBRE_SISTEMA IN VARCHAR2,
  NOMBRE_CATALOGO IN VARCHAR2
) RETURN NUMBER AS
  NumSistema NUMBER(4,0);
  NumCatalogo NUMBER(4,0);
BEGIN
  NumCatalogo := 0;

  SELECT NUM_SISTEMA(NOMBRE_SISTEMA) INTO NumSistema FROM DUAL;

  SELECT ID_ADMIN INTO NumCatalogo FROM FWK_CAT_ADMIN WHERE ID_APP = NumSistema AND UPPER(DESCRIPTION) = UPPER(NOMBRE_CATALOGO);
  RETURN NumCatalogo;

END NUM_CATALOGO;
|

create or replace FUNCTION SWF_GET_ALLDAYS_BETWEEN_DATES 
    ( FECHA_INICIAL IN DATE DEFAULT SYSDATE,
      FECHA_FINAL IN DATE DEFAULT SYSDATE
    ) 
RETURN DATE_TABLE IS

tmpData DATE_TABLE;

BEGIN
  SELECT cast(multiset(

       SELECT TRUNC (FECHA_INICIAL - 1 + ROWNUM) dt FROM DUAL 
            CONNECT BY ROWNUM <= FECHA_FINAL - FECHA_INICIAL + 1

  ) as DATE_TABLE) into tmpData from dual;

  RETURN tmpData;
END SWF_GET_ALLDAYS_BETWEEN_DATES;
|

create or replace FUNCTION SWF_GET_PERIODS_IN_DAY 
    ( FECHA_BUSCA IN DATE DEFAULT SYSDATE,
      MINUTOS_PERIODO IN NUMBER DEFAULT 30
    ) 
RETURN DATE_TABLE IS

tmpData DATE_TABLE;

BEGIN
  SELECT cast(multiset(
  
        with cte as ( select trunc(FECHA_BUSCA) as start_date from dual )
        select start_date + ((level - 1) / (24 * (60 / MINUTOS_PERIODO))) as date_w_mins
        from cte
        connect by level <= (24 * (60 / MINUTOS_PERIODO) + (CASE WHEN MOD(60,MINUTOS_PERIODO) = 0 THEN 0 ELSE 1 END))
        
  ) as DATE_TABLE) into tmpData from dual;

  RETURN tmpData;
END SWF_GET_PERIODS_IN_DAY;
|

create or replace FUNCTION SWF_STRLIST_TO_NUMTABLE 
    ( listaDatosNum IN VARCHAR2
    ) 
RETURN NUM_TABLE IS

tmpData NUM_TABLE;

BEGIN
  SELECT cast(multiset(
  
       SELECT regexp_substr(listaDatosNum, '[^,]+', 1, LEVEL) token FROM dual
        CONNECT BY LEVEL <= length(listaDatosNum) - length(REPLACE(listaDatosNum, ',', '')) + 1
        
  ) as NUM_TABLE) into tmpData from dual;

  RETURN tmpData;
END SWF_STRLIST_TO_NUMTABLE;
|
