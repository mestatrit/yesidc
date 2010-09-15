drop table T_CODE cascade constraints;
drop table T_CODE_CODE_MAPPING cascade constraints;
drop table T_CODE_MAPPING cascade constraints;
drop table T_MAIL_SENDERS cascade constraints;
drop table T_MAIL_SERVER cascade constraints;

drop sequence SEQ_CODE;
drop sequence SEQ_CODE_MAPPING;
drop sequence SEQ_MAIL_SENDERS;
drop sequence SEQ_MAIL_SERVER;

create table T_CODE (id number(19,0) not null, CODE_TYPE number(19,0), CODE varchar2(50 char) not null, CODE1 varchar2(50 char), ENAME1 varchar2(250 char), ENAME varchar2(250 char), CNAME varchar2(250 char), CNAME1 varchar2(250 char), memo varchar2(250 char), CODE_LEVEL number(19,0) not null, SORT_LIST number(19,0), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(50 char), UPDATE_USER varchar2(50 char), primary key (id), unique (CODE_TYPE, CODE));
create table T_CODE_CODE_MAPPING (CODE_ID number(19,0) not null, CODE_MAPPING_ID number(19,0) not null);
create table T_CODE_MAPPING (id number(19,0) not null, CODE_TYPE number(19,0), CODE varchar2(50 char) not null, CODE1 varchar2(50 char), ENAME1 varchar2(250 char), ENAME varchar2(250 char), CNAME varchar2(250 char), CNAME1 varchar2(250 char), memo varchar2(250 char), CODE_LEVEL number(19,0) not null, SORT_LIST number(19,0), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(50 char), UPDATE_USER varchar2(50 char), primary key (id), unique (CODE_TYPE, CODE));
alter table T_CODE add constraint FK_CODE_TYPE foreign key (CODE_TYPE) references T_CODE;
alter table T_CODE_CODE_MAPPING add constraint FK_CODE_CODE_MAPPING foreign key (CODE_ID) references T_CODE;
alter table T_CODE_CODE_MAPPING add constraint FK_CODE_MAPPING_CODE foreign key (CODE_MAPPING_ID) references T_CODE_MAPPING;
alter table T_CODE_MAPPING add constraint FK_CODE_MAPPING_TYPE foreign key (CODE_TYPE) references T_CODE_MAPPING;

create table T_MAIL_SENDERS (ID number(19,0) not null, MAIL_NAME varchar2(60), MAIL_PASSWORD varchar2(30), DEFAULT_SENDER varchar2(30), MEMO varchar2(200), STATUS varchar2(1), CREATE_DATE date, UPDATE_DATE date, CREATE_USER varchar2(20), UPDATE_USER varchar2(20), MAIL_CONF_ID number(19,0), primary key (ID));
create table T_MAIL_SERVER (ID number(19,0) not null, SMTP_HOST varchar2(30), SMTP_SOCKETFACTORY_CLASS varchar2(30), SMTP_SOCKETFACTORY_FALLBACK varchar2(6), SMTP_PORT number(10,0), SMTP_SOCKETFACTORY_PORT number(10,0), SMTP_AUTH varchar2(6), SMTP_STARTTLS_ENABLE varchar2(6), POP3_SOCKETFACTORY_CLASS varchar2(30), POP3_SOCKETFACTORY_FALLBACK varchar2(6), POP3_PORT number(10,0), POP3_SOCKETFACTORY_PORT number(10,0), CREATE_DATE date, UPDATE_DATE date, CREATE_USER varchar2(20), UPDATE_USER varchar2(20), POP3_HOST varchar2(30), primary key (ID));
comment on column T_MAIL_SERVER.SMTP_HOST is 'smtp.gmail.com';
comment on column T_MAIL_SERVER.SMTP_SOCKETFACTORY_CLASS is 'javax.net.ssl.SSLSocketFactory';
comment on column T_MAIL_SERVER.SMTP_SOCKETFACTORY_FALLBACK is 'false/true';
comment on column T_MAIL_SERVER.SMTP_PORT is '465';
comment on column T_MAIL_SERVER.SMTP_SOCKETFACTORY_PORT is '465';
comment on column T_MAIL_SERVER.SMTP_AUTH is 'false/true';
comment on column T_MAIL_SERVER.SMTP_STARTTLS_ENABLE is 'false/true';
comment on column T_MAIL_SERVER.POP3_SOCKETFACTORY_CLASS is 'javax.net.ssl.SSLSocketFactory';
comment on column T_MAIL_SERVER.POP3_SOCKETFACTORY_FALLBACK is 'false/true';
comment on column T_MAIL_SERVER.POP3_PORT is '995';
comment on column T_MAIL_SERVER.POP3_SOCKETFACTORY_PORT is '995';
comment on column T_MAIL_SERVER.POP3_HOST is 'pop.gmail.com';
alter table T_MAIL_SENDERS add constraint FK_MAIL_SERVER foreign key (MAIL_CONF_ID) references T_MAIL_SERVER;

create sequence SEQ_CODE START WITH 100000;
create sequence SEQ_CODE_MAPPING START WITH 1;
create sequence SEQ_MAIL_SENDERS START WITH 1000;
create sequence SEQ_MAIL_SERVER START WITH 1000;

grant all on core.T_CODE to baixing;
grant all on core.T_CODE_CODE_MAPPING to baixing;
grant all on core.T_CODE_MAPPING to baixing;
grant all on core.SEQ_MAIL_SERVER to baixing;
grant all on core.T_MAIL_SENDERS to baixing;


