/* Create Functions */
CREATE FUNCTION NUM_SISTEMA (
	@NOMBRE_SISTEMA varchar(20)
) RETURNS INTEGER
AS
BEGIN
   DECLARE @NumSistema INTEGER;

   SELECT @NumSistema = ID_APP FROM FWK_CAT_APPS WHERE UPPER(APPLICATION_NAME) = UPPER(@NOMBRE_SISTEMA);
   IF (@NumSistema IS NULL)
     SET @NumSistema = 0;
   RETURN @NumSistema;
END;
;
|

CREATE FUNCTION NUM_CATALOGO (
   @NOMBRE_SISTEMA varchar(20), 
   @NOMBRE_CATALOGO varchar(100)
) RETURNS INTEGER
AS
BEGIN
   DECLARE @NumCatalogo INTEGER;
   DECLARE @NumSistema INTEGER;
   
   SELECT @NumSistema = dbo.NUM_SISTEMA(@NOMBRE_SISTEMA);

   SELECT @NumCatalogo = ID_ADMIN FROM FWK_CAT_ADMIN 
                         WHERE ID_APP = @NumSistema AND UPPER(DESCRIPTION) = UPPER(@NOMBRE_CATALOGO);
   IF (@NumCatalogo IS NULL)
     SET @NumCatalogo = 0;
   RETURN @NumCatalogo;
END;
;
|

--Función que toma cadena y la devuelve como una tabla virtual que contiene a los enteros de dicha cadena
CREATE FUNCTION dbo.splitString(@stringToSplit VARCHAR(MAX))
RETURNS
 @returnList TABLE ([idEstatus] [int])
AS
BEGIN

 DECLARE @name INT
 DECLARE @pos INT

 WHILE CHARINDEX(',', @stringToSplit) > 0
 BEGIN
  SELECT @pos  = CHARINDEX(',', @stringToSplit)  
  SELECT @name = convert(int, SUBSTRING(@stringToSplit, 1, @pos-1))

  INSERT INTO @returnList 
  SELECT @name

  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
 END

 INSERT INTO @returnList
 SELECT @stringToSplit

 RETURN
END;
;
|
