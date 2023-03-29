/* Compile Objects */
BEGIN    
	FOR cur_rec  in (SELECT object_name, object_type FROM user_objects WHERE object_type IN ('VIEW','PACKAGE','PROCEDURE','FUNCTION','SEQUENCE')) LOOP    
		BEGIN         
			EXECUTE IMMEDIATE 'ALTER ' || cur_rec.object_type || ' "' || cur_rec.object_name || '" COMPILE';      
			EXCEPTION         
				WHEN OTHERS THEN            
					DBMS_OUTPUT.put_line ('FAILED: COMPILE ' || cur_rec.object_type || ' "' || cur_rec.object_name || '"');      
				END;   
		END LOOP; 
END;
/
