CREATE OR REPLACE PROCEDURE update_Sequence(p_table in varchar,
                                            p_seq   in varchar) AS

  v_str     varchar(200);
  v_cur_sql varchar(200);
  n_max     number;
  n_temp    number;

BEGIN

  v_str := 'select nvl(max(id),0) from ' || p_table;
  execute immediate v_str
    into n_max;
  DBMS_OUTPUT.PUT_LINE(' max id of ' || p_table || ' is ' || n_max || '.');

  v_str     := 'select ' || p_seq || '.nextval from dual';
  v_cur_sql := 'select ' || p_seq || '.currval from dual';

  loop
  
    begin
      execute immediate v_cur_sql
        into n_temp;
    exception
      when others then
        execute immediate v_str
          into n_temp;
    end;
      
    exit when n_temp >= n_max;
    execute immediate v_str
      into n_temp;
  end loop;
  
  commit;
  
  DBMS_OUTPUT.PUT_LINE(' Update ' || p_table || '-' || p_seq || ' sequence to ' || n_max || '.');
END update_Sequence;


------------------------------------------

BEGIN
update_Sequence('TC_APPEND','SEQ_C_APPEND');
update_Sequence('t_code','SEQ_CODE');
update_Sequence('t_company','SEQ_COMPANY');
update_Sequence('tc_contact_header','SEQ_C_CONTACT_HEADER');
update_Sequence('tc_contact_info','SEQ_C_CONTACT_INFO');
update_Sequence('tc_email','SEQ_C_EMAIL');
update_Sequence('t_webpages','SEQ_WEBPAGES');
update_Sequence('t_person','SEQ_PERSON');
update_Sequence('tp_addr','SEQ_P_ADDRESS');
update_Sequence('tp_append','SEQ_P_APPEND');
update_Sequence('tp_edu','SEQ_P_EDU');
update_Sequence('tp_email','SEQ_P_EMAIL');
update_Sequence('tp_language','SEQ_P_LANGUAGE');
update_Sequence('tp_skill','SEQ_P_SKILL');
update_Sequence('t_mail_senders','SEQ_MAIL_SENDERS');
update_Sequence('t_mail_server','SEQ_MAIL_SERVER');
update_Sequence('tc_search_result','SEQ_SEARCH_RESULT');
END;
