----disable constraint
DECLARE  
BEGIN  
  FOR i IN  
  (SELECT table_name,   
    constraint_name --disable first the foreign key   
     FROM user_constraints   
    WHERE constraint_type ='R'  
  AND status              = 'ENABLED'  
  )   
  LOOP   
    EXECUTE IMMEDIATE 'alter table "' ||i.table_name|| '" disable constraint ' ||i.constraint_name;   
  END LOOP i;   
  FOR i IN  
  (SELECT table_name,   
    constraint_name -- then disable all constraints   
     FROM user_constraints   
    WHERE status = 'ENABLED'  
  )   
  LOOP   
    EXECUTE IMMEDIATE 'alter table "' ||i.table_name|| '" disable constraint ' ||i.constraint_name;   
  END LOOP i;   
END;   
/   
DECLARE  
BEGIN  
  FOR i IN  
  (SELECT table_name FROM user_tables   
  )   
  LOOP   
    EXECUTE IMMEDIATE 'alter table "' ||i.table_name|| '" disable all triggers';   
  END LOOP i;   
END;   
/ 

----enable constraint
DECLARE  
BEGIN  
  FOR i IN  
  (SELECT table_name,   
    constraint_name --enable first the primary key   
     FROM user_constraints   
    WHERE constraint_type ='P'  
  AND status              = 'DISABLED'  
  )   
  LOOP   
    EXECUTE IMMEDIATE 'alter table "' ||i.table_name|| '" enable constraint ' ||i.constraint_name;   
  END LOOP i;   
  FOR i IN  
  (SELECT table_name,   
    constraint_name -- then enable all constraints   
     FROM user_constraints   
    WHERE status = 'DISABLED'  
  )   
  LOOP   
    EXECUTE IMMEDIATE 'alter table "' ||i.table_name|| '" enable constraint ' ||i.constraint_name;   
  END LOOP i;   
END;   
/   
DECLARE  
BEGIN  
  FOR i IN  
  (SELECT table_name FROM user_tables   
  )   
  LOOP   
    EXECUTE IMMEDIATE 'alter table "' ||i.table_name|| '" enable all triggers';   
  END LOOP i;   
END;   
/  