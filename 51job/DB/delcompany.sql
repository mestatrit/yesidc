----disable constraint
BEGIN 
  FOR c IN 
  (SELECT c.owner, c.table_name, c.constraint_name 
   FROM user_constraints c, user_tables t 
   WHERE c.table_name = t.table_name 
   AND c.status = 'ENABLED' 
   AND c.constraint_name like 'FK%'
   ORDER BY c.constraint_type) 
  LOOP 
    dbms_utility.exec_ddl_statement('alter table ' || c.owner || '.' || c.table_name || ' disable constraint ' || c.constraint_name); 
  END LOOP; 
END; 
/ 

truncate table t_company;
truncate table tc_contact_header;
truncate table tc_contact_common;
truncate table tc_contact_email;
truncate table tc_contact_info;
truncate table tc_email;
truncate table tc_append;

drop sequence SEQ_COMPANY;
drop sequence SEQ_C_APPEND;
drop sequence SEQ_C_CONTACT_HEADER;
drop sequence SEQ_C_CONTACT_INFO;
drop sequence SEQ_C_EMAIL;

create sequence SEQ_COMPANY;
create sequence SEQ_C_APPEND;
create sequence SEQ_C_CONTACT_HEADER;
create sequence SEQ_C_CONTACT_INFO;
create sequence SEQ_C_EMAIL;
----enable constraint
BEGIN 
  FOR c IN 
  (SELECT c.owner, c.table_name, c.constraint_name 
   FROM user_constraints c, user_tables t 
   WHERE c.table_name = t.table_name 
   AND c.status = 'DISABLED' 
   AND c.constraint_name like 'FK%'
   ORDER BY c.constraint_type) 
  LOOP 
    dbms_utility.exec_ddl_statement('alter table ' || c.owner || '.' || c.table_name || ' enable constraint ' || c.constraint_name); 
  END LOOP; 
END; 
/ 
