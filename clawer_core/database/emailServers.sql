prompt PL/SQL Developer import file
prompt Created on 20100502 by Abel
set feedback off
set define off
prompt Disabling triggers for T_MAIL_SERVER...
alter table T_MAIL_SERVER disable all triggers;
prompt Disabling triggers for T_MAIL_SENDERS...
alter table T_MAIL_SENDERS disable all triggers;
prompt Disabling foreign key constraints for T_MAIL_SENDERS...
alter table T_MAIL_SENDERS disable constraint FK_MAIL_SERVER;
prompt Loading T_MAIL_SERVER...
insert into T_MAIL_SERVER (ID, SMTP_HOST, SMTP_SOCKETFACTORY_CLASS, SMTP_SOCKETFACTORY_FALLBACK, SMTP_PORT, SMTP_SOCKETFACTORY_PORT, SMTP_AUTH, SMTP_STARTTLS_ENABLE, POP3_SOCKETFACTORY_CLASS, POP3_SOCKETFACTORY_FALLBACK, POP3_PORT, POP3_SOCKETFACTORY_PORT, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, POP3_HOST)
values (1, 'smtp.gmail.com', 'javax.net.ssl.SSLSocketFactory', 'false', 465, 465, 'true', 'true', 'javax.net.ssl.SSLSocketFactory', 'false', 995, 995, null, null, 'YTB', 'YTB', 'pop.gmail.com');
insert into T_MAIL_SERVER (ID, SMTP_HOST, SMTP_SOCKETFACTORY_CLASS, SMTP_SOCKETFACTORY_FALLBACK, SMTP_PORT, SMTP_SOCKETFACTORY_PORT, SMTP_AUTH, SMTP_STARTTLS_ENABLE, POP3_SOCKETFACTORY_CLASS, POP3_SOCKETFACTORY_FALLBACK, POP3_PORT, POP3_SOCKETFACTORY_PORT, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, POP3_HOST)
values (2, 'smtp.sina.com.cn', null, null, null, null, 'true', null, null, null, null, null, null, null, 'YTB', 'YTB', 'pop3.sina.com.cn');
insert into T_MAIL_SERVER (ID, SMTP_HOST, SMTP_SOCKETFACTORY_CLASS, SMTP_SOCKETFACTORY_FALLBACK, SMTP_PORT, SMTP_SOCKETFACTORY_PORT, SMTP_AUTH, SMTP_STARTTLS_ENABLE, POP3_SOCKETFACTORY_CLASS, POP3_SOCKETFACTORY_FALLBACK, POP3_PORT, POP3_SOCKETFACTORY_PORT, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, POP3_HOST)
values (3, 'smtp.163.com', null, null, null, null, 'true', null, null, null, null, null, null, null, 'YTB', 'YTB', 'pop.163.com');
commit;
prompt 3 records loaded
prompt Loading T_MAIL_SENDERS...
insert into T_MAIL_SENDERS (ID, MAIL_NAME, MAIL_PASSWORD, MAIL_CONF_ID, DEFAULT_SENDER, MEMO, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, STATUS)
values (1, 'ytbgooogle@gmail.com', 'love981050', 1, 'Fish', null, null, null, 'YTB', 'YTB', '1');
insert into T_MAIL_SENDERS (ID, MAIL_NAME, MAIL_PASSWORD, MAIL_CONF_ID, DEFAULT_SENDER, MEMO, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, STATUS)
values (2, 'yeshuangqing@gmail.com', 'love981050', 1, 'Fish', null, null, null, 'YTB', 'YTB', '1');
insert into T_MAIL_SENDERS (ID, MAIL_NAME, MAIL_PASSWORD, MAIL_CONF_ID, DEFAULT_SENDER, MEMO, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, STATUS)
values (3, 'ytbgmeil@gmail.com', 'love981050', 1, 'Fish', null, null, null, 'YTB', 'YTB', '1');
insert into T_MAIL_SENDERS (ID, MAIL_NAME, MAIL_PASSWORD, MAIL_CONF_ID, DEFAULT_SENDER, MEMO, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, STATUS)
values (4, 'o_olle_e@163.com', '981050', 3, 'Fish', null, null, null, 'YTB', 'YTB', '1');
insert into T_MAIL_SENDERS (ID, MAIL_NAME, MAIL_PASSWORD, MAIL_CONF_ID, DEFAULT_SENDER, MEMO, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, STATUS)
values (5, 'bibi_ye@163.com', 'love981050', 3, 'Fish', null, null, null, 'YTB', 'YTB', '1');
insert into T_MAIL_SENDERS (ID, MAIL_NAME, MAIL_PASSWORD, MAIL_CONF_ID, DEFAULT_SENDER, MEMO, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, STATUS)
values (6, 'bibiye1979@sina.com', 'love981050', 2, 'Fish', null, null, null, 'YTB', 'YTB', '1');
insert into T_MAIL_SENDERS (ID, MAIL_NAME, MAIL_PASSWORD, MAIL_CONF_ID, DEFAULT_SENDER, MEMO, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER, STATUS)
values (7, 'bibiye@sina.com', '981050', 2, 'Fish', null, null, null, 'YTB', 'YTB', '1');
commit;
prompt 7 records loaded
prompt Enabling foreign key constraints for T_MAIL_SENDERS...
alter table T_MAIL_SENDERS enable constraint FK_MAIL_SERVER;
prompt Enabling triggers for T_MAIL_SERVER...
alter table T_MAIL_SERVER enable all triggers;
prompt Enabling triggers for T_MAIL_SENDERS...
alter table T_MAIL_SENDERS enable all triggers;
set feedback on
set define on
prompt Done.
