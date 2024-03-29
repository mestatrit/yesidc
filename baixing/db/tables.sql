create synonym T_Code for core.T_Code;
create synonym T_CODE_CODE_MAPPING for core.T_CODE_CODE_MAPPING;
create synonym T_CODE_MAPPING for core.T_CODE_MAPPING;
create synonym T_EXTEND_CODE for core.T_EXTEND_CODE;
create synonym T_MAIL_SENDERS for core.T_MAIL_SENDERS;
create synonym T_MAIL_SERVER for core.T_MAIL_SERVER;
create synonym SEQ_MAIL_SENDERS for core.SEQ_MAIL_SENDERS;
create synonym SEQ_MAIL_SERVER for core.SEQ_MAIL_SERVER;
create synonym SEQ_EXTEND_CODE for core.SEQ_EXTEND_CODE;

drop table TC_APPEND cascade constraints;
drop table TC_CONTACT_COMMON cascade constraints;
drop table TC_CONTACT_EMAIL cascade constraints;
drop table TC_CONTACT_HEADER cascade constraints;
drop table TC_CONTACT_INFO cascade constraints;
drop table TC_EMAIL cascade constraints;
drop table TP_ADDR cascade constraints;
drop table TP_APPEND cascade constraints;
drop table TP_EDU cascade constraints;
drop table TP_EMAIL cascade constraints;
drop table TP_LANGUAGE cascade constraints;
drop table TP_SKILL cascade constraints;
drop table TP_CONTACT_INFO cascade constraints;
drop table T_COMPANY cascade constraints;
drop table T_PERSON cascade constraints;
drop table T_WEBPAGES cascade constraints;
drop table TC_SEARCH_RESULT cascade constraints;
drop table TP_SIM_PERSON cascade constraints;
drop table TP_SIM_CONTACT_INFO cascade constraints;
drop table WEB_ELEMENTS cascade constraints;

drop sequence SEQ_COMPANY;
drop sequence SEQ_C_APPEND;
drop sequence SEQ_C_CONTACT_HEADER;
drop sequence SEQ_C_CONTACT_INFO;
drop sequence SEQ_C_EMAIL;
drop sequence SEQ_PERSON;
drop sequence SEQ_P_ADDRESS;
drop sequence SEQ_P_APPEND;
drop sequence SEQ_P_EDU;
drop sequence SEQ_P_EMAIL;
drop sequence SEQ_P_LANGUAGE;
drop sequence SEQ_P_SKILL;
drop sequence SEQ_WEBPAGES;
drop sequence SEQ_SEARCH_RESULT;
drop sequence SEQ_P_CONTACT_INFO;
drop sequence SEQ_P_SIM_PERSON;
drop sequence SEQ_P_SIM_CONTACT_INFO;

-- Create table
create table TP_SIM_PERSON
(
  ID                        NUMBER(19) not null,
  NAME_NICK                 VARCHAR2(50 CHAR),
  SEX                       VARCHAR2(1 CHAR),
  WEB_ID                    NUMBER(19),
  FROM_WHERE                NUMBER(19),
  CREATE_DATE               TIMESTAMP(6),
  UPDATE_DATE               TIMESTAMP(6)
);

alter table TP_SIM_PERSON
  add primary key (ID);

-- Create table
create table TP_SIM_CONTACT_INFO
(
  ID                        NUMBER(19) not null,
  type                 	    VARCHAR2(10 CHAR),
  CONTRACT_NO               VARCHAR2(50 CHAR),
  UPDATE_DATE               TIMESTAMP(6),
  SIM_PERSON_ID             NUMBER(19)
);

alter table TP_SIM_CONTACT_INFO
  add primary key (ID);

create table WEB_ELEMENTS
(
  ID          VARCHAR2(32 CHAR) not null,
  CODE_TYPE   VARCHAR2(32 CHAR),
  CODE        VARCHAR2(50 CHAR) default 0 not null,
  NAME        VARCHAR2(250 CHAR),
  MEMO        VARCHAR2(250 CHAR),
  CODE_LEVEL  NUMBER(19) not null,
  SORT_LIST   NUMBER(19),
  CREATE_DATE TIMESTAMP(6),
  UPDATE_DATE TIMESTAMP(6),
  CREATE_USER VARCHAR2(50 CHAR),
  UPDATE_USER VARCHAR2(50 CHAR)
);
alter table WEB_ELEMENTS  add primary key (ID);
alter table WEB_ELEMENTS  add unique (CODE_TYPE, CODE);
alter table WEB_ELEMENTS  add constraint FK_WebElements_TYPE foreign key (CODE_TYPE)  references WEB_ELEMENTS (ID)
-- Create table
create table TC_SEARCH_RESULT
(
  ID          NUMBER(19) not null,
  REQUEST_ID  VARCHAR2(25),
  URL_CODE    VARCHAR2(30),
  URL_ADDR    VARCHAR2(1000),
  TOT_RECORDS NUMBER(19),
  TOT_PAGES   NUMBER(19),
  STATUS     VARCHAR2(1),
  CREATE_DATE timestamp,
  UPDATE_DATE timestamp
);
-- Create/Recreate primary, unique and foreign key constraints 
alter table TC_SEARCH_RESULT  add constraint PK_SEARCH_RESULT primary key (ID);

create table T_PERSON (id number(19,0) not null, ID_TYPE number(19,0), ID_TYPE_NAME varchar2(50 char), PERSON_ID varchar2(30 char), NAME_DEFAULT varchar2(200 char), NAME_FIRST varchar2(50 char), NAME_MIDDLE varchar2(50 char), NAME_LAST varchar2(50 char), NAME_NICK1 varchar2(50 char), 
NAME_NICK2 varchar2(50 char), NAME_NICK3 varchar2(50 char), SEX varchar2(1 char), BIRTHDAY timestamp, ADDR_LIVE number(19,0), ADDR_LIVE_NAME varchar2(50 char), WORK_YEARS number(19,0), WORK_YEARS_NAME varchar2(50 char), ADDR_DOMICILE number(19,0), ADDR_DOMICILE_NAME varchar2(50 char), ADDR_LIVE_DETAIL varchar2(300 char), ADDR_LIVE_ZIP varchar2(10 char), SARALY_YEAR number(19,0), 
SARALY_YEAR_NAME varchar2(50 char), TEL_MOBILE varchar2(50 char), TEL_COMPANY varchar2(50 char), TEL_BP varchar2(50 char), TEL_FAMILY varchar2(50 char), HOMEPAGE_SELF1 varchar2(200 char), HOMEPAGE_SELF2 varchar2(200 char), LINK_WANGWANG varchar2(50 char), LINK_QQ varchar2(50 char), LINK_MSN varchar2(50 char), LINK_SKYPE varchar2(50 char), LINK_GTALK varchar2(50 char), LINK_FETION varchar2(50 char), 
WORK_SARALY_BASIC number(19,2), WORK_BONUS number(19,2), WORK_SUBSIDY number(19,2), WORK_STOCK number(19,2), SELF_ADJUST varchar2(1000 char), JOB_NATURE varchar2(2 char), JOB_INTENT_INDUSTRY1 number(19,0), JOB_INTENT_INDUSTRY_NAME1 varchar2(50 char), JOB_INTENT_INDUSTRY2 number(19,0), JOB_INTENT_INDUSTRY_NAME2 varchar2(50 char), JOB_INTENT_INDUSTRY3 number(19,0), JOB_INTENT_INDUSTRY_NAME3 varchar2(50 char), 
JOB_INTENT_INDUSTRY4 number(19,0), JOB_INTENT_INDUSTRY_NAME4 varchar2(50 char), JOB_INTENT_INDUSTRY5 number(19,0), JOB_INTENT_INDUSTRY_NAME5 varchar2(50 char), JOB_INTENT_ADDR1 number(19,0), JOB_INTENT_ADDR_NAME1 varchar2(50 char), JOB_INTENT_ADDR2 number(19,0), JOB_INTENT_ADDR_NAME2 varchar2(50 char), JOB_INTENT_ADDR3 number(19,0), JOB_INTENT_ADDR_NAME3 varchar2(50 char), JOB_INTENT_ADDR4 number(19,0), 
JOB_INTENT_ADDR_NAME4 varchar2(50 char), JOB_INTENT_ADDR5 number(19,0), JOB_INTENT_ADDR_NAME5 varchar2(50 char), JOB_INTENT_FUN1 number(19,0), JOB_INTENT_FUN_NAME1 varchar2(50 char), JOB_INTENT_FUN2 number(19,0), JOB_INTENT_FUN_NAME2 varchar2(50 char), JOB_INTENT_FUN3 number(19,0), JOB_INTENT_FUN_NAME3 varchar2(50 char), JOB_INTENT_FUN4 number(19,0), JOB_INTENT_FUN_NAME4 varchar2(50 char), 
JOB_INTENT_FUN5 number(19,0), JOB_INTENT_FUN_NAME5 varchar2(50 char), JOB_INTENT_SALARY number(19,0), JOB_INTENT_SALARY_NAME varchar2(50 char), 
FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(50 char), UPDATE_USER varchar2(50 char), primary key (id));
comment on column T_PERSON.ID_TYPE is '证件类别代码';
comment on column T_PERSON.ID_TYPE_NAME is '证件类别';
comment on column T_PERSON.PERSON_ID is '证件号码';
comment on column T_PERSON.NAME_DEFAULT is '名字';
comment on column T_PERSON.NAME_FIRST is '名';
comment on column T_PERSON.NAME_MIDDLE is '名字中间';
comment on column T_PERSON.NAME_LAST is '姓';
comment on column T_PERSON.NAME_NICK1 is '昵称1';
comment on column T_PERSON.NAME_NICK2 is '昵称2';
comment on column T_PERSON.NAME_NICK3 is '昵称3';
comment on column T_PERSON.SEX is '性别:1-男；2-女；0-未知';
comment on column T_PERSON.BIRTHDAY is '生日';
comment on column T_PERSON.ADDR_LIVE is '居住地代码';
comment on column T_PERSON.ADDR_LIVE_NAME is '居住地';
comment on column T_PERSON.WORK_YEARS is '工作年限代码';
comment on column T_PERSON.WORK_YEARS_NAME is '工作年限';
comment on column T_PERSON.ADDR_DOMICILE is '户口地代码';
comment on column T_PERSON.ADDR_DOMICILE_NAME is '户口地';
comment on column T_PERSON.ADDR_LIVE_DETAIL is '居住地址';
comment on column T_PERSON.ADDR_LIVE_ZIP is '居住地邮编';
comment on column T_PERSON.SARALY_YEAR is '目前年薪代码';
comment on column T_PERSON.SARALY_YEAR_NAME is '目前年薪 万/年';
comment on column T_PERSON.TEL_MOBILE is '手机';
comment on column T_PERSON.TEL_COMPANY is '公司电话';
comment on column T_PERSON.TEL_BP is 'BP机';
comment on column T_PERSON.TEL_FAMILY is '家庭电话';
comment on column T_PERSON.HOMEPAGE_SELF1 is '个人主页';
comment on column T_PERSON.HOMEPAGE_SELF2 is '个人主页';
comment on column T_PERSON.LINK_WANGWANG is '旺旺帐号';
comment on column T_PERSON.LINK_QQ is 'QQ帐号';
comment on column T_PERSON.LINK_MSN is 'MSN帐号';
comment on column T_PERSON.LINK_SKYPE is 'SKYPE帐号';
comment on column T_PERSON.LINK_GTALK is 'GTalk帐号';
comment on column T_PERSON.LINK_FETION is '飞信帐号';
comment on column T_PERSON.WORK_SARALY_BASIC is '基本年薪 万/年';
comment on column T_PERSON.WORK_BONUS is '年度奖金/佣金 万/年';
comment on column T_PERSON.WORK_SUBSIDY is '补贴/津贴 万/年';
comment on column T_PERSON.WORK_STOCK is '股票数';
comment on column T_PERSON.SELF_ADJUST is '自我评价';
comment on column T_PERSON.JOB_NATURE is '工作性质:1-全职;2-兼职;3-实习;4-全/兼职';
comment on column T_PERSON.JOB_INTENT_INDUSTRY1 is '意向行业代码1';
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME1 is '意向行业1';
comment on column T_PERSON.JOB_INTENT_INDUSTRY2 is '意向行业代码2';
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME2 is '意向行业2';
comment on column T_PERSON.JOB_INTENT_INDUSTRY3 is '意向行业代码3';
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME3 is '意向行业3';
comment on column T_PERSON.JOB_INTENT_INDUSTRY4 is '意向行业代码4';
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME4 is '意向行业4';
comment on column T_PERSON.JOB_INTENT_INDUSTRY5 is '意向行业代码5';
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME5 is '意向行业5';
comment on column T_PERSON.JOB_INTENT_ADDR1 is '意向地址代码1';
comment on column T_PERSON.JOB_INTENT_ADDR_NAME1 is '意向地址1';
comment on column T_PERSON.JOB_INTENT_ADDR2 is '意向地址代码2';
comment on column T_PERSON.JOB_INTENT_ADDR_NAME2 is '意向地址2';
comment on column T_PERSON.JOB_INTENT_ADDR3 is '意向地址代码3';
comment on column T_PERSON.JOB_INTENT_ADDR_NAME3 is '意向地址3';
comment on column T_PERSON.JOB_INTENT_ADDR4 is '意向地址代码4';
comment on column T_PERSON.JOB_INTENT_ADDR_NAME4 is '意向地址4';
comment on column T_PERSON.JOB_INTENT_ADDR5 is '意向地址代码5';
comment on column T_PERSON.JOB_INTENT_ADDR_NAME5 is '意向地址5';
comment on column T_PERSON.JOB_INTENT_FUN1 is '意向职能代码1';
comment on column T_PERSON.JOB_INTENT_FUN_NAME1 is '意向职能1';
comment on column T_PERSON.JOB_INTENT_FUN2 is '意向职能代码2';
comment on column T_PERSON.JOB_INTENT_FUN_NAME2 is '意向职能2';
comment on column T_PERSON.JOB_INTENT_FUN3 is '意向职能代码3';
comment on column T_PERSON.JOB_INTENT_FUN_NAME3 is '意向职能3';
comment on column T_PERSON.JOB_INTENT_FUN4 is '意向职能代码4';
comment on column T_PERSON.JOB_INTENT_FUN_NAME4 is '意向职能4';
comment on column T_PERSON.JOB_INTENT_FUN5 is '意向职能代码5';
comment on column T_PERSON.JOB_INTENT_FUN_NAME5 is '意向职能5';
comment on column T_PERSON.JOB_INTENT_SALARY is '意向年薪代码';
comment on column T_PERSON.JOB_INTENT_SALARY_NAME is '意向年薪 万/年';
comment on column T_PERSON.FROM_WHERE is '数据来源代码';
comment on column T_PERSON.FROM_WHERE_NAME is '数据来源';
comment on column T_PERSON.CREATE_DATE is '创建时间';
comment on column T_PERSON.UPDATE_DATE is '修改时间';
comment on column T_PERSON.CREATE_USER is '创建用户';
comment on column T_PERSON.UPDATE_USER is '修改用户';

create table TC_APPEND (id number(19,0) not null, COMPANY_ID number(19,0), COMPANY_NAME varchar2(200 char), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), LOB_TYPE varchar2(1 char), CONTENTS clob, DATAS blob, CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TC_APPEND.COMPANY_NAME is '公司名称';
comment on column TC_APPEND.FROM_WHERE is '数据来源代码';
comment on column TC_APPEND.FROM_WHERE_NAME is '数据来源';
comment on column TC_APPEND.LOB_TYPE is '提示为1 clob或者2 blob';
comment on column TC_APPEND.CONTENTS is 'clob内容';
comment on column TC_APPEND.DATAS is 'blob内容';
comment on column TC_APPEND.CREATE_DATE is '创建时间';
comment on column TC_APPEND.UPDATE_DATE is '更新时间';
comment on column TC_APPEND.CREATE_USER is '创建者';
comment on column TC_APPEND.UPDATE_USER is '更新者';
create table TC_CONTACT_COMMON (CONTACT_HEADER_ID number(19,0) not null, CONTACT_INFO_ID number(19,0) not null);
create table TC_CONTACT_EMAIL (CONTACT_HEADER_ID number(19,0) not null, COM_EMAIL_ID number(19,0) not null);
create table TC_CONTACT_HEADER (id number(19,0) not null, COUNTRY_ID number(19,0), PROVINCE_ID number(19,0), CITY_ID number(19,0), COUNTRY_NAME varchar2(100 char), PROVINCE_NAME varchar2(100 char), CITY_NAME varchar2(100 char), COMPANY_ID number(19,0), COMPANY_NAME varchar2(200 char), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), DEFAULT_NAME varchar2(100 char), DEFAULT_NAME_EN varchar2(100 char), address1 varchar2(200 char), address2 varchar2(200 char), postcode1 varchar2(10 char), postcode2 varchar2(10 char), DEPARTMENT varchar2(100 char), POSITION varchar2(100 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TC_CONTACT_HEADER.COUNTRY_NAME is '国家名称';
comment on column TC_CONTACT_HEADER.PROVINCE_NAME is '省名称';
comment on column TC_CONTACT_HEADER.CITY_NAME is '城市名称';
comment on column TC_CONTACT_HEADER.COMPANY_NAME is '公司名称';
comment on column TC_CONTACT_HEADER.FROM_WHERE is '数据来源代码';
comment on column TC_CONTACT_HEADER.FROM_WHERE_NAME is '数据来源名称';
comment on column TC_CONTACT_HEADER.DEFAULT_NAME is '默认中文名称';
comment on column TC_CONTACT_HEADER.DEFAULT_NAME_EN is '默认英文名称';
comment on column TC_CONTACT_HEADER.address1 is '地址一';
comment on column TC_CONTACT_HEADER.address2 is '地址二';
comment on column TC_CONTACT_HEADER.postcode1 is '邮政编码一';
comment on column TC_CONTACT_HEADER.postcode2 is '邮政编码二';
comment on column TC_CONTACT_HEADER.DEPARTMENT is '部门';
comment on column TC_CONTACT_HEADER.POSITION is '职位';
comment on column TC_CONTACT_HEADER.CREATE_DATE is '创建时间';
comment on column TC_CONTACT_HEADER.UPDATE_DATE is '更新时间';
comment on column TC_CONTACT_HEADER.CREATE_USER is '创建者';
comment on column TC_CONTACT_HEADER.UPDATE_USER is '更新者';
create table TC_CONTACT_INFO (id number(19,0) not null, type varchar2(15 char) not null, FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), CONTRACT_NO varchar2(50 char), RECIEVER varchar2(100 char),CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TC_CONTACT_INFO.FROM_WHERE is '数据来源代码';
comment on column TC_CONTACT_INFO.FROM_WHERE_NAME is '数据来源';
comment on column TC_CONTACT_INFO.RECIEVER is '联系人称呼';
create table TP_CONTACT_INFO (id number(19,0) not null, PERSON_ID number(19,0),type varchar2(15 char) not null, FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), CONTRACT_NO varchar2(50 char), RECIEVER varchar2(100 char),CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TP_CONTACT_INFO.FROM_WHERE is '数据来源代码';
comment on column TP_CONTACT_INFO.FROM_WHERE_NAME is '数据来源';
comment on column TP_CONTACT_INFO.RECIEVER is '联系人称呼';
alter table TP_CONTACT_INFO add constraint FK_P_CONTACT_PERSON foreign key (PERSON_ID) references T_PERSON;
create table TC_EMAIL (id number(19,0) not null, URL varchar2(1000 char),FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), MAILTYPE varchar2(100 char), EMAIL varchar2(100 char) not null,RECIEVER varchar2(100 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TC_EMAIL.FROM_WHERE is '数据来源代码';
comment on column TC_EMAIL.FROM_WHERE_NAME is '数据来源';
comment on column TC_EMAIL.MAILTYPE is '邮件地址类型';
comment on column TC_EMAIL.EMAIL is '邮件地址';
comment on column TC_EMAIL.RECIEVER is '收件人称呼';
comment on column TC_EMAIL.CREATE_DATE is '创建时间';
comment on column TC_EMAIL.UPDATE_DATE is '更新时间';
comment on column TC_EMAIL.CREATE_USER is '创建者';
comment on column TC_EMAIL.UPDATE_USER is '更新者';
create table T_WEBPAGES(ID NUMBER(19) not null,PAGE_TYPE VARCHAR2(2) not null,REQUEST_ID  VARCHAR2(25), URL VARCHAR2(1000),STATUS VARCHAR2(1),UPDATE_DATE TIMESTAMP,CREATE_DATE TIMESTAMP(6),MEMO VARCHAR2(50), primary key (id));
comment on column T_WEBPAGES.PAGE_TYPE  is '0-default=OK;1-search type list;2-search pages list;3-job list;';
comment on column T_WEBPAGES.REQUEST_ID  is '操作ID';
comment on column T_WEBPAGES.STATUS  is '1-KO;2-OK';
create table TP_ADDR (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), COUNTRY_ID number(19,0), PROVINCE_ID number(19,0), CITY_ID number(19,0), COUNTRY_NAME varchar2(100 char), PROVINCE_NAME varchar2(100 char), CITY_NAME varchar2(100 char), ADDRESS varchar2(200 char), POSTCODE varchar2(10 char), MEMO varchar2(1000 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TP_ADDR.PERSON_ID is '所有者';
comment on column TP_ADDR.FROM_WHERE is '数据来源代码';
comment on column TP_ADDR.FROM_WHERE_NAME is '数据来源';
comment on column TP_ADDR.COUNTRY_ID is '国家代码';
comment on column TP_ADDR.PROVINCE_ID is '省代码';
comment on column TP_ADDR.CITY_ID is '市代码';
comment on column TP_ADDR.COUNTRY_NAME is '国家名称';
comment on column TP_ADDR.PROVINCE_NAME is '省名称';
comment on column TP_ADDR.CITY_NAME is '市名称';
comment on column TP_ADDR.ADDRESS is '地址';
comment on column TP_ADDR.POSTCODE is '邮编';
comment on column TP_ADDR.MEMO is '备注';
comment on column TP_ADDR.CREATE_DATE is '创建时间';
comment on column TP_ADDR.UPDATE_DATE is '更新时间';
comment on column TP_ADDR.CREATE_USER is '创建者';
comment on column TP_ADDR.UPDATE_USER is '更新者';
create table TP_APPEND (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), APPEND_TYPE number(19,0), APPEND_TYPE_NAME varchar2(100 char), CONTENT varchar2(4000 char), CONTENT1 varchar2(4000 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TP_APPEND.PERSON_ID is '所有者';
comment on column TP_APPEND.FROM_WHERE is '数据来源代码';
comment on column TP_APPEND.FROM_WHERE_NAME is '数据来源';
comment on column TP_APPEND.APPEND_TYPE is '附加信息代码';
comment on column TP_APPEND.APPEND_TYPE_NAME is '附加信息类别';
comment on column TP_APPEND.CONTENT is '附加信息';
comment on column TP_APPEND.CONTENT1 is '附加信息1';
comment on column TP_APPEND.CREATE_DATE is '创建时间';
comment on column TP_APPEND.UPDATE_DATE is '更新时间';
comment on column TP_APPEND.CREATE_USER is '创建者';
comment on column TP_APPEND.UPDATE_USER is '更新者';
create table TP_EDU (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), EDU_DATE_FROM timestamp, EDU_DATE_TO timestamp, EDU_NAME varchar2(100 char), EDU_SPECIALITY_NAME varchar2(100 char), EDU_SPECIALITY number(19,0), EDU_LEVEL number(19,0), EDU_LEVEL_NAME varchar2(50 char), EDU_TYPE varchar2(2 char), MEMO varchar2(2000 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TP_EDU.PERSON_ID is '所有者';
comment on column TP_EDU.FROM_WHERE is '数据来源代码';
comment on column TP_EDU.FROM_WHERE_NAME is '数据来源';
comment on column TP_EDU.EDU_DATE_FROM is '起始时间';
comment on column TP_EDU.EDU_DATE_TO is '结束时间';
comment on column TP_EDU.EDU_NAME is '学校名称/培训机构/证书颁发机构';
comment on column TP_EDU.EDU_SPECIALITY_NAME is '专业名称/培训课程/证书名称';
comment on column TP_EDU.EDU_SPECIALITY is '专业名称/培训课程/证书名称 代码';
comment on column TP_EDU.EDU_LEVEL is '学历/获得证书/证书成绩 代码';
comment on column TP_EDU.EDU_LEVEL_NAME is '学历/获得证书/证书成绩';
comment on column TP_EDU.EDU_TYPE is 'EDU_TYPE_SCHOOL="1";EDU_TYPE_TRAINING="2";EDU_TYPE_CERTIFICATION="3";';
comment on column TP_EDU.MEMO is '详细描述';
comment on column TP_EDU.CREATE_DATE is '创建时间';
comment on column TP_EDU.UPDATE_DATE is '更新时间';
comment on column TP_EDU.CREATE_USER is '创建者';
comment on column TP_EDU.UPDATE_USER is '更新者';
create table TP_EMAIL (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), EMAIL varchar2(100 char) not null, MAIL_TYPE varchar2(2 char), NAME_DEFAULT varchar2(100 char), NAME1 varchar2(100 char), NAME2 varchar2(100 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TP_EMAIL.PERSON_ID is '电子邮箱所有者';
comment on column TP_EMAIL.FROM_WHERE is '数据来源代码';
comment on column TP_EMAIL.FROM_WHERE_NAME is '数据来源';
comment on column TP_EMAIL.EMAIL is '邮件地址';
comment on column TP_EMAIL.MAIL_TYPE is '邮件类型 : 0-未知；1-常用；2-注册用 ；3-很少用；4-基本不用';
comment on column TP_EMAIL.NAME_DEFAULT is '邮件称呼';
comment on column TP_EMAIL.NAME1 is '邮件称呼1';
comment on column TP_EMAIL.NAME2 is '邮件称呼2';
comment on column TP_EMAIL.CREATE_DATE is '创建时间';
comment on column TP_EMAIL.UPDATE_DATE is '更新时间';
comment on column TP_EMAIL.CREATE_USER is '创建者';
comment on column TP_EMAIL.UPDATE_USER is '更新者';
create table TP_LANGUAGE (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), LANGUAGE_NAME varchar2(100 char), LANGUAGE_CODE number(19,0), USE_LEVEL_NAME varchar2(50 char), USE_LEVEL number(19,0), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TP_LANGUAGE.PERSON_ID is '所有者';
comment on column TP_LANGUAGE.FROM_WHERE is '数据来源代码';
comment on column TP_LANGUAGE.FROM_WHERE_NAME is '数据来源';
comment on column TP_LANGUAGE.LANGUAGE_NAME is '语言名称';
comment on column TP_LANGUAGE.LANGUAGE_CODE is '语言代码';
comment on column TP_LANGUAGE.USE_LEVEL_NAME is '语言水平';
comment on column TP_LANGUAGE.USE_LEVEL is '语言水平代码';
comment on column TP_LANGUAGE.CREATE_DATE is '创建时间';
comment on column TP_LANGUAGE.UPDATE_DATE is '更新时间';
comment on column TP_LANGUAGE.CREATE_USER is '创建者';
comment on column TP_LANGUAGE.UPDATE_USER is '更新者';
create table TP_SKILL (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), USE_MONTHS double precision, USE_LEVEL_NAME varchar2(50 char), USE_LEVEL number(19,0), SKILL_NAME varchar2(50 char), SKILL number(19,0), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id));
comment on column TP_SKILL.PERSON_ID is '所有者';
comment on column TP_SKILL.FROM_WHERE is '数据来源代码';
comment on column TP_SKILL.FROM_WHERE_NAME is '数据来源';
comment on column TP_SKILL.USE_LEVEL_NAME is '技术水平';
comment on column TP_SKILL.USE_LEVEL is '技术水平代码';
comment on column TP_SKILL.SKILL_NAME is '技术名称';
comment on column TP_SKILL.SKILL is '技术名称代码';
comment on column TP_SKILL.CREATE_DATE is '创建时间';
comment on column TP_SKILL.UPDATE_DATE is '更新时间';
comment on column TP_SKILL.CREATE_USER is '创建者';
comment on column TP_SKILL.UPDATE_USER is '更新者';
create table T_COMPANY (id number(19,0) not null, COMPANY_CODE varchar2(50 char), URL varchar2(1000 char), COMPANY_NAME varchar2(100 char), COMPANY_NAME_EN varchar2(100 char), COMPANY_NAME_SIMPLE varchar2(20 char), COMPANY_NAME_SIMPLE_EN varchar2(20 char), COMPANY_TYPE number(19,0), COMPANY_SCALE number(19,0), COMPANY_INDUSTRY1 number(19,0), COMPANY_INDUSTRY2 number(19,0), HOMEPAGE1 varchar2(200 char), HOMEPAGE2 varchar2(200 char), HOMEPAGE3 varchar2(200 char), HOMEPAGE4 varchar2(200 char), HOMEPAGE5 varchar2(200 char), COMPANY_DOMAIN1 varchar2(20 char), COMPANY_DOMAIN2 varchar2(20 char), COMPANY_MEMO varchar2(2000 char), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), COMPANY_INDUSTRY3 number(19,0), REGISTERED_CAPITAL_AMOUNT number(19,2), REGISTERED_CAPITAL_UNIT varchar2(255 char), BUSINESS_OPERATION number(19,0), MAIN_BUSINESS_ADDRESS varchar2(500 char), MAIN_PRODUCTS varchar2(500 char), ESTABLISHMENT_TIME varchar2(10 char), REGISTER_ADDR varchar2(50 char), COPORATE_REPRESENTATIVE varchar2(50 char), BANK_ACCOUNT_OPEN varchar2(50 char), BANK_ACCOUNT varchar2(50 char), FACTORY_SPACE varchar2(10 char), STAFF_AMOUNT number(19,0), RESEARCH_DPT_AMOUNT number(19,0), BRAND_NAME varchar2(50 char), OUTPUT_MONTHLY_AMOUNT number(19,0), OUTPUT_MONTHLY_UNIT number(19,0), TURNOVER_YEARLY number(19,0), MNG_SYS_AUTH varchar2(200 char), QULITY_CONTROL varchar2(10 char), MAIN_MARKET varchar2(100 char), MAIN_CUSTOMER varchar2(100 char), IS_OEM varchar2(2 char), COMPANY_TYPE_NAME varchar2(100 char), COMPANY_SCALE_NAME varchar2(100 char), COMPANY_INDUSTRY1_NAME varchar2(100 char), COMPANY_INDUSTRY2_NAME varchar2(100 char), COMPANY_INDUSTRY3_NAME varchar2(100 char), REGISTERED_CAPITAL_AMOUNT_NAME varchar2(100 char), REGISTERED_CAPITAL_UNIT_NAME varchar2(100 char), BUSINESS_OPERATION_NAME varchar2(100 char), RESEARCH_DPT_AMOUNT_NAME varchar2(100 char), STAFF_AMOUNT_NAME varchar2(100 char), OUTPUT_MONTHLY_AMOUNT_NAME varchar2(100 char), OUTPUT_MONTHLY_UNIT_NAME varchar2(100 char), TURNOVER_YEARLY_NAME varchar2(100 char), IMPORTS_AMOUNT_NAME varchar2(100 char), IMPORTS_AMOUNT number(19,0), EXPORTS_AMOUNT_NAME varchar2(100 char), EXPORTS_AMOUNT number(19,0), PARENT_ID number(19,0), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char),LOAD_OK varchar2(1 char), primary key (id));
comment on column T_COMPANY.COMPANY_CODE is 'company Id in web';
comment on column T_COMPANY.URL is 'company url in web';
comment on column T_COMPANY.COMPANY_NAME is '公司中文名称';
comment on column T_COMPANY.COMPANY_NAME_EN is '公司英文名称';
comment on column T_COMPANY.COMPANY_NAME_SIMPLE is '公司中文简称';
comment on column T_COMPANY.COMPANY_NAME_SIMPLE_EN is '公司英文简称';
comment on column T_COMPANY.COMPANY_TYPE is '公司类型';
comment on column T_COMPANY.COMPANY_SCALE is '公司规模';
comment on column T_COMPANY.COMPANY_INDUSTRY1 is '行业类别1 - 主营行业';
comment on column T_COMPANY.COMPANY_INDUSTRY2 is '行业类别2 - 主营行业';
comment on column T_COMPANY.HOMEPAGE1 is '主 页 1';
comment on column T_COMPANY.HOMEPAGE2 is '主 页 2';
comment on column T_COMPANY.HOMEPAGE3 is '主 页 3';
comment on column T_COMPANY.HOMEPAGE4 is '主 页 4';
comment on column T_COMPANY.HOMEPAGE5 is '主 页 5';
comment on column T_COMPANY.COMPANY_DOMAIN1 is '公司域名1';
comment on column T_COMPANY.COMPANY_DOMAIN2 is '公司域名2';
comment on column T_COMPANY.COMPANY_MEMO is '公司备注';
comment on column T_COMPANY.FROM_WHERE is '数据来源代码';
comment on column T_COMPANY.FROM_WHERE_NAME is '数据来源';
comment on column T_COMPANY.COMPANY_INDUSTRY3 is '行业类别3 - 主营行业';
comment on column T_COMPANY.REGISTERED_CAPITAL_AMOUNT is '注册资本金额';
comment on column T_COMPANY.REGISTERED_CAPITAL_UNIT is '注册资本金额单位';
comment on column T_COMPANY.BUSINESS_OPERATION is '经营模式';
comment on column T_COMPANY.MAIN_BUSINESS_ADDRESS is '主要经营地点';
comment on column T_COMPANY.MAIN_PRODUCTS is '主营产品';
comment on column T_COMPANY.ESTABLISHMENT_TIME is '成立时间';
comment on column T_COMPANY.REGISTER_ADDR is '公司注册地';
comment on column T_COMPANY.COPORATE_REPRESENTATIVE is '法定代表人/负责人';
comment on column T_COMPANY.BANK_ACCOUNT_OPEN is '开户银行';
comment on column T_COMPANY.BANK_ACCOUNT is '银行帐号';
comment on column T_COMPANY.FACTORY_SPACE is '厂房面积';
comment on column T_COMPANY.STAFF_AMOUNT is '员工人数';
comment on column T_COMPANY.RESEARCH_DPT_AMOUNT is '研发部门人数';
comment on column T_COMPANY.BRAND_NAME is '品牌名称';
comment on column T_COMPANY.OUTPUT_MONTHLY_AMOUNT is '月产量';
comment on column T_COMPANY.OUTPUT_MONTHLY_UNIT is '月产量单位';
comment on column T_COMPANY.TURNOVER_YEARLY is '年营业额 -> 年出口额 不能大于 年营业额';
comment on column T_COMPANY.MNG_SYS_AUTH is '管理体系认证:ISO 9000 ISO 9001 ISO 9002 ISO 9003 ISO 9004 ISO 14000 其他';
comment on column T_COMPANY.QULITY_CONTROL is '质量控制:内部:第三方:无';
comment on column T_COMPANY.MAIN_MARKET is '主要市场: 大陆 港澳台地区 日本 北美 南美 西欧 东欧 东亚 东南亚 中东 非洲 大洋洲 全球 其他市场';
comment on column T_COMPANY.MAIN_CUSTOMER is '主要客户群,如：超市、服装厂、印染厂';
comment on column T_COMPANY.IS_OEM is '是否提供OEM代加工？是 　 否';
comment on column T_COMPANY.COMPANY_TYPE_NAME is '公司类型';
comment on column T_COMPANY.COMPANY_SCALE_NAME is '公司规模';
comment on column T_COMPANY.COMPANY_INDUSTRY1_NAME is '行业类别1 - 主营行业';
comment on column T_COMPANY.COMPANY_INDUSTRY2_NAME is '行业类别2 - 主营行业';
comment on column T_COMPANY.COMPANY_INDUSTRY3_NAME is '行业类别3 - 主营行业';
comment on column T_COMPANY.REGISTERED_CAPITAL_AMOUNT_NAME is '注册资本金额';
comment on column T_COMPANY.REGISTERED_CAPITAL_UNIT_NAME is '注册资本金额单位';
comment on column T_COMPANY.BUSINESS_OPERATION_NAME is '经营模式';
comment on column T_COMPANY.RESEARCH_DPT_AMOUNT_NAME is '员工人数';
comment on column T_COMPANY.STAFF_AMOUNT_NAME is '研发部门人数';
comment on column T_COMPANY.OUTPUT_MONTHLY_AMOUNT_NAME is '月产量';
comment on column T_COMPANY.OUTPUT_MONTHLY_UNIT_NAME is '月产量单位';
comment on column T_COMPANY.TURNOVER_YEARLY_NAME is '年营业额 -> 年出口额 不能大于 年营业额';
comment on column T_COMPANY.IMPORTS_AMOUNT_NAME is '年进口额';
comment on column T_COMPANY.IMPORTS_AMOUNT is '年进口额';
comment on column T_COMPANY.EXPORTS_AMOUNT_NAME is '年出口额 -> 年出口额 不能大于 年营业额';
comment on column T_COMPANY.EXPORTS_AMOUNT is '年出口额 -> 年出口额 不能大于 年营业额';
comment on column T_COMPANY.CREATE_DATE is '创建时间';
comment on column T_COMPANY.UPDATE_DATE is '更新时间';
comment on column T_COMPANY.CREATE_USER is '创建者';
comment on column T_COMPANY.UPDATE_USER is '更新者';
comment on column T_COMPANY.LOAD_OK is '是否已经从网站更新信息成功.1-KO;2-OK';
alter table TC_APPEND add constraint FK_C_APPEND_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TC_APPEND add constraint FK_APPEND_COMPANY foreign key (COMPANY_ID) references T_COMPANY;
alter table TC_CONTACT_COMMON add constraint FK_CONTACT_COMMON_HEADER foreign key (CONTACT_HEADER_ID) references TC_CONTACT_HEADER;
alter table TC_CONTACT_COMMON add constraint FK_CONTACT_COMMON_INFO foreign key (CONTACT_INFO_ID) references TC_CONTACT_INFO;
alter table TC_CONTACT_EMAIL add constraint FK_CONTACT_EMAIL_HEADER foreign key (CONTACT_HEADER_ID) references TC_CONTACT_HEADER;
alter table TC_CONTACT_EMAIL add constraint FK_CONTACT_EMAIL_EMAIL foreign key (COM_EMAIL_ID) references TC_EMAIL;
alter table TC_CONTACT_HEADER add constraint FK_CONTACT_HEADER_CITY foreign key (CITY_ID) references T_CODE;
alter table TC_CONTACT_HEADER add constraint FK_C_CONTACT_HEADER_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TC_CONTACT_HEADER add constraint FK_CONTACT_HEADER_COUNTRY foreign key (COUNTRY_ID) references T_CODE;
alter table TC_CONTACT_HEADER add constraint FK_CONTACT_HEADER_PROVINCE foreign key (PROVINCE_ID) references T_CODE;
alter table TC_CONTACT_HEADER add constraint FK_CONTACT_HEADER_COMPANY foreign key (COMPANY_ID) references T_COMPANY;
alter table TC_CONTACT_INFO add constraint FK_C_CONTACT_INFO_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TC_EMAIL add constraint FK_C_EMAIL_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TP_ADDR add constraint FK_P_ADDR_CITY foreign key (CITY_ID) references T_CODE;
alter table TP_ADDR add constraint FK_P_ADDR_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TP_ADDR add constraint FK_P_ADDR_PERSON foreign key (PERSON_ID) references T_PERSON;
alter table TP_ADDR add constraint FK_P_ADDR_COUNTRY foreign key (COUNTRY_ID) references T_CODE;
alter table TP_ADDR add constraint FK_P_ADDR_PROVINCE foreign key (PROVINCE_ID) references T_CODE;
alter table TP_APPEND add constraint FK_P_APPEND_TYPE_CODE foreign key (APPEND_TYPE) references T_CODE;
alter table TP_APPEND add constraint FK_P_APPEND_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TP_APPEND add constraint FK_P_APPEND_PERSON foreign key (PERSON_ID) references T_PERSON;
alter table TP_EDU add constraint FK_P_EDU_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TP_EDU add constraint FK_P_EDU_PERSON foreign key (PERSON_ID) references T_PERSON;
alter table TP_EDU add constraint FK_P_EDU_SPECIALITY_CODE foreign key (EDU_SPECIALITY) references T_CODE;
alter table TP_EDU add constraint FK_P_EDU_LEVEL_CODE foreign key (EDU_LEVEL) references T_CODE;
alter table TP_EMAIL add constraint FK_P_EMAIL_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TP_EMAIL add constraint FK_P_EMAIL_PERSON foreign key (PERSON_ID) references T_PERSON;
alter table TP_LANGUAGE add constraint FK_P_LANGUAGE_CODE foreign key (LANGUAGE_CODE) references T_CODE;
alter table TP_LANGUAGE add constraint FK_P_LEVEL_CODE foreign key (USE_LEVEL) references T_CODE;
alter table TP_LANGUAGE add constraint FK_P_LANGUAGE_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TP_LANGUAGE add constraint FK_P_LANGUAGE_PERSON foreign key (PERSON_ID) references T_PERSON;
alter table TP_SKILL add constraint FK_P_SKILL_LEVEL_CODE foreign key (USE_LEVEL) references T_CODE;
alter table TP_SKILL add constraint FK_P_SKILL_CODE foreign key (SKILL) references T_CODE;
alter table TP_SKILL add constraint FK_P_SKILL_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table TP_SKILL add constraint FK_P_SKILL_PERSON foreign key (PERSON_ID) references T_PERSON;
alter table T_COMPANY add constraint FK_COMPANY_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table T_COMPANY add constraint FK_COMPANY_PARENT foreign key (PARENT_ID) references T_COMPANY;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN2 foreign key (JOB_INTENT_FUN2) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_WORK_YEARS foreign key (WORK_YEARS) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN5 foreign key (JOB_INTENT_FUN5) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR2 foreign key (JOB_INTENT_ADDR2) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR4 foreign key (JOB_INTENT_ADDR4) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY5 foreign key (JOB_INTENT_INDUSTRY5) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY1 foreign key (JOB_INTENT_INDUSTRY1) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR5 foreign key (JOB_INTENT_ADDR5) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY4 foreign key (JOB_INTENT_INDUSTRY4) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR1 foreign key (JOB_INTENT_ADDR1) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN3 foreign key (JOB_INTENT_FUN3) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_ID_TYPE foreign key (ID_TYPE) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_ADDR_DOMICILE foreign key (ADDR_DOMICILE) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY3 foreign key (JOB_INTENT_INDUSTRY3) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN4 foreign key (JOB_INTENT_FUN4) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_ADDR_LIVE foreign key (ADDR_LIVE) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_FROM_WHERE foreign key (FROM_WHERE) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN1 foreign key (JOB_INTENT_FUN1) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR3 foreign key (JOB_INTENT_ADDR3) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_SARALY_YEAR foreign key (SARALY_YEAR) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_SALARY foreign key (JOB_INTENT_SALARY) references T_CODE;
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY2 foreign key (JOB_INTENT_INDUSTRY2) references T_CODE;
create sequence SEQ_COMPANY;
create sequence SEQ_C_APPEND;
create sequence SEQ_C_CONTACT_HEADER;
create sequence SEQ_C_CONTACT_INFO;
create sequence SEQ_C_EMAIL;
create sequence SEQ_WEBPAGES;
create sequence SEQ_PERSON;
create sequence SEQ_P_ADDRESS;
create sequence SEQ_P_APPEND;
create sequence SEQ_P_EDU;
create sequence SEQ_P_EMAIL;
create sequence SEQ_P_LANGUAGE;
create sequence SEQ_P_SKILL;
create sequence SEQ_P_CONTACT_INFO;
create sequence SEQ_SEARCH_RESULT;
create sequence SEQ_P_SIM_PERSON;
create sequence SEQ_P_SIM_CONTACT_INFO;