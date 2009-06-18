prompt PL/SQL Developer import file
prompt Created on 2009年6月18日 by Administrator
set feedback off
set define off
prompt Dropping TE_CODE...
drop table TE_CODE cascade constraints;
prompt Dropping TE_C_COMPANY...
drop table TE_C_COMPANY cascade constraints;
prompt Dropping TE_C_ADDR...
drop table TE_C_ADDR cascade constraints;
prompt Dropping TE_C_EMAIL...
drop table TE_C_EMAIL cascade constraints;
prompt Dropping TE_P_PERSON...
drop table TE_P_PERSON cascade constraints;
prompt Dropping TE_P_ADDR...
drop table TE_P_ADDR cascade constraints;
prompt Dropping TE_P_APPEND...
drop table TE_P_APPEND cascade constraints;
prompt Dropping TE_P_EDU...
drop table TE_P_EDU cascade constraints;
prompt Dropping TE_P_EMAIL...
drop table TE_P_EMAIL cascade constraints;
prompt Dropping TE_P_LANGUAGE...
drop table TE_P_LANGUAGE cascade constraints;
prompt Dropping TE_P_SKILL...
drop table TE_P_SKILL cascade constraints;
prompt Creating TE_CODE...
create table TE_CODE
(
  ID          NUMBER(19) not null,
  CODE        VARCHAR2(50) not null,
  ENAME       VARCHAR2(250),
  CNAME       VARCHAR2(250),
  CODE_TYPE   NUMBER(19) not null,
  SORT_LIST   NUMBER(10),
  CREATE_DATE TIMESTAMP(6),
  UPDATE_DATE TIMESTAMP(6),
  CODE_LEVEL  NUMBER(2) not null,
  CREATE_USER VARCHAR2(50),
  UPDATE_USER VARCHAR2(50),
  CNAME1      VARCHAR2(250)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_CODE
  add constraint P_CODE primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_CODE
  add constraint CODE_F_CODE foreign key (CODE_TYPE)
  references TE_CODE (ID);

prompt Creating TE_C_COMPANY...
create table TE_C_COMPANY
(
  ID                        NUMBER(19) not null,
  JOB_ID                    VARCHAR2(50),
  URL                       VARCHAR2(200),
  COMPANY_NAME              VARCHAR2(100),
  COMPANY_NAME_EN           VARCHAR2(100),
  COMPANY_NAME_SIMPLE       VARCHAR2(20),
  COMPANY_NAME_SIMPLE_EN    VARCHAR2(20),
  COMPANY_TYPE              NUMBER(19),
  COMPANY_SCALE             NUMBER(19),
  COMPANY_INDUSTRY1         NUMBER(19),
  COMPANY_INDUSTRY2         NUMBER(19),
  HOMEPAGE1                 VARCHAR2(200),
  HOMEPAGE2                 VARCHAR2(200),
  HOMEPAGE3                 VARCHAR2(200),
  HOMEPAGE4                 VARCHAR2(200),
  HOMEPAGE5                 VARCHAR2(200),
  COMPANY_DOMAIN1           VARCHAR2(20),
  COMPANY_DOMAIN2           VARCHAR2(20),
  COMPANY_MEMO              VARCHAR2(2000),
  FROM_WHERE                VARCHAR2(100),
  CREATE_DATE               TIMESTAMP(6),
  UPDATE_DATE               TIMESTAMP(6),
  CREATE_USER               VARCHAR2(50),
  UPDATE_USER               VARCHAR2(50),
  COMPANY_INDUSTRY3         NUMBER(19),
  INTRODUCTION1             VARCHAR2(4000),
  INTRODUCTION2             VARCHAR2(4000),
  REGISTERED_CAPITAL_AMOUNT NUMBER(19),
  REGISTERED_CAPITAL_UNIT   NUMBER(19),
  BUSINESS_OPERATION        NUMBER(19),
  MAIN_BUSINESS_ADDRESS     VARCHAR2(500),
  MAIN_PRODUCTS             VARCHAR2(500),
  ESTABLISHMENT_TIME        VARCHAR2(10),
  REGISTER_ADDR             VARCHAR2(50),
  COPORATE_REPRESENTATIVE   VARCHAR2(50),
  BANK_ACCOUNT_OPEN         VARCHAR2(50),
  BANK_ACCOUNT              VARCHAR2(50),
  FACTORY_SPACE             VARCHAR2(10),
  STAFF_AMOUNT              NUMBER(19),
  RESEARCH_DPT_AMOUNT       NUMBER(19),
  BRAND_NAME                VARCHAR2(50),
  OUTPUT_MONTHLY_AMOUNT     NUMBER(19),
  OUTPUT_MONTHLY_UNIT       NUMBER(19),
  TURNOVER_YEARLY           NUMBER(19),
  IMPORTS                   NUMBER(19),
  EXPORTS                   NUMBER(19),
  MNG_SYS_AUTH              VARCHAR2(200),
  QULITY_CONTROL            VARCHAR2(10),
  MAIN_MARKET               VARCHAR2(100),
  MAIN_CUSTOMER             VARCHAR2(100) not null,
  IS_OEM                    VARCHAR2(2)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
comment on column TE_C_COMPANY.ID
  is 'PK';
comment on column TE_C_COMPANY.JOB_ID
  is '51Job id';
comment on column TE_C_COMPANY.URL
  is '51Job URL';
comment on column TE_C_COMPANY.COMPANY_NAME
  is '公司中文名称';
comment on column TE_C_COMPANY.COMPANY_NAME_EN
  is '公司英文名称';
comment on column TE_C_COMPANY.COMPANY_NAME_SIMPLE
  is '公司中文简称';
comment on column TE_C_COMPANY.COMPANY_NAME_SIMPLE_EN
  is '公司英文简称';
comment on column TE_C_COMPANY.COMPANY_TYPE
  is '公司类型';
comment on column TE_C_COMPANY.COMPANY_SCALE
  is '公司规模';
comment on column TE_C_COMPANY.COMPANY_INDUSTRY1
  is '行业类别1 - 主营行业';
comment on column TE_C_COMPANY.COMPANY_INDUSTRY2
  is '行业类别2 - 主营行业';
comment on column TE_C_COMPANY.HOMEPAGE1
  is '主 页 1 ';
comment on column TE_C_COMPANY.HOMEPAGE2
  is '主 页 2';
comment on column TE_C_COMPANY.HOMEPAGE3
  is '主 页 3';
comment on column TE_C_COMPANY.HOMEPAGE4
  is '主 页 4';
comment on column TE_C_COMPANY.HOMEPAGE5
  is '主 页 5';
comment on column TE_C_COMPANY.COMPANY_DOMAIN1
  is '公司域名1';
comment on column TE_C_COMPANY.COMPANY_DOMAIN2
  is '公司域名2';
comment on column TE_C_COMPANY.COMPANY_MEMO
  is '公司备注';
comment on column TE_C_COMPANY.FROM_WHERE
  is '数据来源';
comment on column TE_C_COMPANY.COMPANY_INDUSTRY3
  is '行业类别3 - 主营行业';
comment on column TE_C_COMPANY.INTRODUCTION1
  is '公司简介';
comment on column TE_C_COMPANY.REGISTERED_CAPITAL_AMOUNT
  is '注册资本金额';
comment on column TE_C_COMPANY.REGISTERED_CAPITAL_UNIT
  is '注册资本金额单位';
comment on column TE_C_COMPANY.BUSINESS_OPERATION
  is '经营模式';
comment on column TE_C_COMPANY.MAIN_BUSINESS_ADDRESS
  is '主要经营地点';
comment on column TE_C_COMPANY.MAIN_PRODUCTS
  is '主营产品';
comment on column TE_C_COMPANY.ESTABLISHMENT_TIME
  is '成立时间';
comment on column TE_C_COMPANY.REGISTER_ADDR
  is '公司注册地';
comment on column TE_C_COMPANY.COPORATE_REPRESENTATIVE
  is '法定代表人/负责人';
comment on column TE_C_COMPANY.BANK_ACCOUNT_OPEN
  is '开户银行';
comment on column TE_C_COMPANY.BANK_ACCOUNT
  is '银行帐号';
comment on column TE_C_COMPANY.FACTORY_SPACE
  is '厂房面积';
comment on column TE_C_COMPANY.STAFF_AMOUNT
  is '员工人数';
comment on column TE_C_COMPANY.RESEARCH_DPT_AMOUNT
  is '研发部门人数';
comment on column TE_C_COMPANY.BRAND_NAME
  is '品牌名称';
comment on column TE_C_COMPANY.OUTPUT_MONTHLY_AMOUNT
  is '月产量';
comment on column TE_C_COMPANY.OUTPUT_MONTHLY_UNIT
  is '月产量单位';
comment on column TE_C_COMPANY.TURNOVER_YEARLY
  is '年营业额 -> 年出口额 不能大于 年营业额 ';
comment on column TE_C_COMPANY.IMPORTS
  is '年进口额';
comment on column TE_C_COMPANY.EXPORTS
  is '年出口额 -> 年出口额 不能大于 年营业额 ';
comment on column TE_C_COMPANY.MNG_SYS_AUTH
  is '管理体系认证:ISO 9000 ISO 9001 ISO 9002 ISO 9003 ISO 9004 ISO 14000 
其他';
comment on column TE_C_COMPANY.QULITY_CONTROL
  is '质量控制:内部:第三方:无 ';
comment on column TE_C_COMPANY.MAIN_MARKET
  is '主要市场: 大陆  港澳台地区  日本  北美  南美  西欧  东欧  东亚  东南亚  中东  非洲  大洋洲  全球 
其他市场';
comment on column TE_C_COMPANY.MAIN_CUSTOMER
  is '主要客户群,如：超市、服装厂、印染厂';
comment on column TE_C_COMPANY.IS_OEM
  is ' 是否提供OEM代加工？是 　 否 ';
alter table TE_C_COMPANY
  add constraint COMPANY_PK primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );

prompt Creating TE_C_ADDR...
create table TE_C_ADDR
(
  ID          NUMBER(19) not null,
  COMPANY_ID  NUMBER(19),
  COUNTRY     NUMBER(19),
  CITY        NUMBER(19),
  ADDRESS     VARCHAR2(200),
  POSTCODE    VARCHAR2(10),
  MEMO        VARCHAR2(1000),
  CREATE_DATE TIMESTAMP(6),
  UPDATE_DATE TIMESTAMP(6),
  CREATE_USER VARCHAR2(20),
  UPDATE_USER VARCHAR2(20)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_C_ADDR
  add constraint PK_C_ADDR primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_C_ADDR
  add constraint FK_C_ADDR_COMPANY foreign key (COMPANY_ID)
  references TE_C_COMPANY (ID);

prompt Creating TE_C_EMAIL...
create table TE_C_EMAIL
(
  ID              NUMBER(19) not null,
  FROM_WHERE      VARCHAR2(100),
  DEFAULT_NAME    VARCHAR2(100),
  DEFAULT_NAME_EN VARCHAR2(100),
  COUNTRY         NUMBER(19),
  CITY            NUMBER(19),
  EMAIL           VARCHAR2(100) not null,
  MAIL_TYPE       VARCHAR2(2),
  COMPANY_NAME    VARCHAR2(100),
  COMPANYID       NUMBER(19),
  MOBILE1         VARCHAR2(20),
  MOBILE2         VARCHAR2(20),
  TEL1            VARCHAR2(50),
  TEL2            VARCHAR2(50),
  TEL3            VARCHAR2(50),
  FAX1            VARCHAR2(50),
  FAX2            VARCHAR2(50),
  FAX3            VARCHAR2(50),
  WANGWANG_ID     VARCHAR2(50),
  CREATE_DATE     TIMESTAMP(6),
  UPDATE_DATE     TIMESTAMP(6),
  CREATE_USER     VARCHAR2(50),
  UPDATE_USER     VARCHAR2(50),
  DEPARTMENT      VARCHAR2(50),
  POSITION        VARCHAR2(50)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
comment on column TE_C_EMAIL.ID
  is 'PK';
comment on column TE_C_EMAIL.FROM_WHERE
  is '数据来源';
comment on column TE_C_EMAIL.DEFAULT_NAME
  is 'email收件人中文名称';
comment on column TE_C_EMAIL.DEFAULT_NAME_EN
  is 'email收件人名称';
comment on column TE_C_EMAIL.COUNTRY
  is '国家';
comment on column TE_C_EMAIL.CITY
  is '城市';
comment on column TE_C_EMAIL.MAIL_TYPE
  is 'email类型';
comment on column TE_C_EMAIL.COMPANY_NAME
  is '公司名称';
comment on column TE_C_EMAIL.COMPANYID
  is '公司PK';
comment on column TE_C_EMAIL.MOBILE1
  is '手机1';
comment on column TE_C_EMAIL.MOBILE2
  is '手机2';
comment on column TE_C_EMAIL.TEL1
  is '电话1';
comment on column TE_C_EMAIL.TEL2
  is '电话2';
comment on column TE_C_EMAIL.TEL3
  is '电话3';
comment on column TE_C_EMAIL.FAX1
  is '传真1';
comment on column TE_C_EMAIL.FAX2
  is '传真2';
comment on column TE_C_EMAIL.FAX3
  is '传真3';
comment on column TE_C_EMAIL.WANGWANG_ID
  is '旺旺';
comment on column TE_C_EMAIL.DEPARTMENT
  is '部门';
comment on column TE_C_EMAIL.POSITION
  is '职位';
alter table TE_C_EMAIL
  add constraint C_EMAIL_PK primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_C_EMAIL
  add constraint C_CITY foreign key (CITY)
  references TE_CODE (ID);

prompt Creating TE_P_PERSON...
create table TE_P_PERSON
(
  ID                   NUMBER(19) not null,
  NAME_DEFAULT         VARCHAR2(200),
  NAME_FIRST           VARCHAR2(50),
  NAME_MIDDLE          VARCHAR2(50),
  NAME_LAST            VARCHAR2(50),
  NAME_NICK1           VARCHAR2(50),
  NAME_NICK2           VARCHAR2(50),
  NAME_NICK3           VARCHAR2(50),
  SEX                  CHAR(1),
  BIRTHDAY             DATE,
  ADDR_LIVE            NUMBER(19),
  WORK_YEARS           NUMBER(19),
  ADDR_DOMICILE        NUMBER(19),
  ADDR_LIVE_DETAIL     VARCHAR2(300),
  ADDR_LIVE_ZIP        VARCHAR2(10),
  WORK_SARALY_YEAR     NUMBER(19,2),
  TEL_MOBILE           VARCHAR2(50),
  TEL_COMPANY          VARCHAR2(50),
  TEL_BP               VARCHAR2(50),
  TEL_FAMILY           VARCHAR2(50),
  HOMEPAGE_SELF        VARCHAR2(200),
  LINK_WANGWANG        VARCHAR2(50),
  LINK_QQ              VARCHAR2(50),
  LINK_MSN             VARCHAR2(50),
  LINK_SKYPE           VARCHAR2(50),
  LINK_GTALK           VARCHAR2(50),
  LINK_FETION          VARCHAR2(50),
  WORK_SARALY_BASIC    NUMBER(19),
  WORK_BONUS           NUMBER(19),
  WORK_SUBSIDY         NUMBER(19),
  WORK_STOCK           NUMBER(19),
  SELF_ADJUST          VARCHAR2(1000),
  JOB_NATURE           NUMBER(19),
  JOB_INTENT_INDUSTRY1 NUMBER(19),
  JOB_INTENT_ADDR1     NUMBER(19),
  JOB_INTENT_FUN1      NUMBER(19),
  JOB_INTENT_SALARY    NUMBER(19),
  JOB_INTENT_INDUSTRY2 NUMBER(19),
  JOB_INTENT_ADDR2     NUMBER(19),
  JOB_INTENT_FUN2      NUMBER(19),
  JOB_INTENT_FUN3      NUMBER(19),
  JOB_INTENT_FUN4      NUMBER(19),
  JOB_INTENT_FUN5      NUMBER(19),
  JOB_INTENT_ADDR3     NUMBER(19),
  JOB_INTENT_ADDR4     NUMBER(19),
  JOB_INTENT_ADDR5     NUMBER(19),
  JOB_INTENT_INDUSTRY3 NUMBER(19),
  JOB_INTENT_INDUSTRY4 NUMBER(19),
  JOB_INTENT_INDUSTRY5 NUMBER(19),
  CREATE_DATE          TIMESTAMP(6),
  UPDATE_DATE          TIMESTAMP(6),
  CREATE_USER          VARCHAR2(50),
  UPDATE_USER          VARCHAR2(50),
  PERSON_ID            VARCHAR2(30),
  WEB_ID               VARCHAR2(50),
  FROM_WHERE           VARCHAR2(100)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
comment on column TE_P_PERSON.JOB_INTENT_SALARY
  is 'dot';
comment on column TE_P_PERSON.FROM_WHERE
  is '数据来源';
alter table TE_P_PERSON
  add constraint P_PERSON primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );

prompt Creating TE_P_ADDR...
create table TE_P_ADDR
(
  ID          NUMBER(19) not null,
  PERSON_ID   NUMBER(19),
  COUNTRY     NUMBER(19),
  CITY        NUMBER(19),
  ADDRESS     VARCHAR2(200),
  POSTCODE    VARCHAR2(10),
  MEMO        VARCHAR2(1000),
  CREATE_DATE TIMESTAMP(6),
  UPDATE_DATE TIMESTAMP(6),
  CREATE_USER VARCHAR2(20),
  UPDATE_USER VARCHAR2(20)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_P_ADDR
  add constraint PK_P_ADDR primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_P_ADDR
  add constraint FK_P_ADDR_PERSON foreign key (PERSON_ID)
  references TE_P_PERSON (ID);

prompt Creating TE_P_APPEND...
create table TE_P_APPEND
(
  ID          NUMBER(19) not null,
  CREATE_DATE TIMESTAMP(6),
  UPDATE_DATE TIMESTAMP(6),
  PERSON_ID   NUMBER(19) not null,
  APPEND_TYPE VARCHAR2(2) not null,
  CREATE_USER VARCHAR2(50),
  UPDATE_USER VARCHAR2(50),
  CONTENT     VARCHAR2(4000)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
comment on column TE_P_APPEND.APPEND_TYPE
  is 'APPEND_TYPE_APPENDIX = "1";APPEND_TYPE_WORK_EXP = "2";APPEND_TYPE_PROJECT_EXP = "3";';
alter table TE_P_APPEND
  add constraint P_APPEND primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_P_APPEND
  add constraint APPEND_F_PERSON foreign key (PERSON_ID)
  references TE_P_PERSON (ID);

prompt Creating TE_P_EDU...
create table TE_P_EDU
(
  ID                NUMBER(19) not null,
  EDU_DATE_FROM     DATE,
  EDU_DATE_TO       DATE,
  EDU_NAME          VARCHAR2(100),
  EDU_SPECIALITY    VARCHAR2(100),
  EDU_LEVEL         VARCHAR2(50),
  EDU_TYPE          VARCHAR2(2),
  CREATE_DATE       TIMESTAMP(6),
  UPDATE_DATE       TIMESTAMP(6),
  PERSON_ID         NUMBER(19) not null,
  CREATE_USER       VARCHAR2(50),
  UPDATE_USER       VARCHAR2(50),
  MEMO              VARCHAR2(2000),
  EDU_SPECIALITY_FK NUMBER(19),
  EDUL_EVEL_FK      NUMBER(19)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
comment on column TE_P_EDU.EDU_NAME
  is '学校名称/培训机构/证书颁发机构';
comment on column TE_P_EDU.EDU_SPECIALITY
  is '专业名称/培训课程/证书名称';
comment on column TE_P_EDU.EDU_LEVEL
  is '学历/获得证书/证书成绩';
comment on column TE_P_EDU.EDU_TYPE
  is 'EDU_TYPE_SCHOOL="1";EDU_TYPE_TRAINING="2";EDU_TYPE_CERTIFICATION="3";';
comment on column TE_P_EDU.MEMO
  is '详细描述';
alter table TE_P_EDU
  add constraint P_EDU primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_P_EDU
  add constraint F_SPECIATY foreign key (EDU_SPECIALITY_FK)
  references TE_CODE (ID);

prompt Creating TE_P_EMAIL...
create table TE_P_EMAIL
(
  ID              NUMBER(19) not null,
  EMAIL           VARCHAR2(100) not null,
  DEFAULT_NAME    VARCHAR2(100),
  DEFAULT_NAME_EN VARCHAR2(100),
  COUNTRY         NUMBER(19),
  CITY            NUMBER(19),
  MAIL_TYPE       VARCHAR2(2),
  PERSON_ID       NUMBER(19),
  FROM_WHERE      VARCHAR2(100),
  CREATE_DATE     TIMESTAMP(6),
  UPDATE_DATE     TIMESTAMP(6),
  CREATE_USER     VARCHAR2(50),
  UPDATE_USER     VARCHAR2(50)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
comment on column TE_P_EMAIL.FROM_WHERE
  is '数据来源';
alter table TE_P_EMAIL
  add constraint TE_P_EMAIL primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_P_EMAIL
  add constraint F_MAIL_LINK_ADDR foreign key (CITY)
  references TE_CODE (ID);
alter table TE_P_EMAIL
  add constraint F_MAIL_PERSON foreign key (PERSON_ID)
  references TE_P_PERSON (ID);

prompt Creating TE_P_LANGUAGE...
create table TE_P_LANGUAGE
(
  LANGUAGE_ID    NUMBER(19) not null,
  PERSON_ID      NUMBER(19) not null,
  ID             NUMBER(19) not null,
  USE_LEVEL      NUMBER(19),
  CREATE_DATE    TIMESTAMP(6),
  UPDATE_DATE    TIMESTAMP(6),
  CREATE_USER    VARCHAR2(50),
  UPDATE_USER    VARCHAR2(50),
  LANGUAGE_NAME  VARCHAR2(50),
  USE_LEVEL_NAME VARCHAR2(20)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_P_LANGUAGE
  add constraint P_LANGUAGE primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_P_LANGUAGE
  add constraint LANGUAGE_F1 foreign key (LANGUAGE_ID)
  references TE_CODE (ID);
alter table TE_P_LANGUAGE
  add constraint LANGUAGE_F2 foreign key (PERSON_ID)
  references TE_P_PERSON (ID);

prompt Creating TE_P_SKILL...
create table TE_P_SKILL
(
  SKILL_ID       NUMBER(19) not null,
  PERSON_ID      NUMBER(19) not null,
  ID             NUMBER(19) not null,
  USE_MONTHS     NUMBER(5),
  USE_LEVEL      NUMBER(19),
  CREATE_DATE    TIMESTAMP(6),
  UPDATE_DATE    TIMESTAMP(6),
  CREATE_USER    VARCHAR2(50),
  UPDATE_USER    VARCHAR2(50),
  SKILL_NAME     VARCHAR2(100),
  USE_LEVEL_NAME VARCHAR2(100)
)
tablespace FISH
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_P_SKILL
  add constraint P_SKILL primary key (ID)
  using index 
  tablespace FISH
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
alter table TE_P_SKILL
  add constraint SKILL_F1 foreign key (SKILL_ID)
  references TE_CODE (ID);
alter table TE_P_SKILL
  add constraint SKILL_F2 foreign key (PERSON_ID)
  references TE_P_PERSON (ID);

prompt Disabling foreign key constraints for TE_CODE...
alter table TE_CODE disable constraint CODE_F_CODE;
prompt Disabling foreign key constraints for TE_C_ADDR...
alter table TE_C_ADDR disable constraint FK_C_ADDR_COMPANY;
prompt Disabling foreign key constraints for TE_C_EMAIL...
alter table TE_C_EMAIL disable constraint C_CITY;
prompt Disabling foreign key constraints for TE_P_ADDR...
alter table TE_P_ADDR disable constraint FK_P_ADDR_PERSON;
prompt Disabling foreign key constraints for TE_P_APPEND...
alter table TE_P_APPEND disable constraint APPEND_F_PERSON;
prompt Disabling foreign key constraints for TE_P_EDU...
alter table TE_P_EDU disable constraint F_SPECIATY;
prompt Disabling foreign key constraints for TE_P_EMAIL...
alter table TE_P_EMAIL disable constraint F_MAIL_LINK_ADDR;
alter table TE_P_EMAIL disable constraint F_MAIL_PERSON;
prompt Disabling foreign key constraints for TE_P_LANGUAGE...
alter table TE_P_LANGUAGE disable constraint LANGUAGE_F1;
alter table TE_P_LANGUAGE disable constraint LANGUAGE_F2;
prompt Disabling foreign key constraints for TE_P_SKILL...
alter table TE_P_SKILL disable constraint SKILL_F1;
alter table TE_P_SKILL disable constraint SKILL_F2;
prompt Loading TE_CODE...
prompt Table is empty
prompt Loading TE_C_COMPANY...
prompt Table is empty
prompt Loading TE_C_ADDR...
prompt Table is empty
prompt Loading TE_C_EMAIL...
prompt Table is empty
prompt Loading TE_P_PERSON...
prompt Table is empty
prompt Loading TE_P_ADDR...
prompt Table is empty
prompt Loading TE_P_APPEND...
prompt Table is empty
prompt Loading TE_P_EDU...
prompt Table is empty
prompt Loading TE_P_EMAIL...
prompt Table is empty
prompt Loading TE_P_LANGUAGE...
prompt Table is empty
prompt Loading TE_P_SKILL...
prompt Table is empty
prompt Enabling foreign key constraints for TE_CODE...
alter table TE_CODE enable constraint CODE_F_CODE;
prompt Enabling foreign key constraints for TE_C_ADDR...
alter table TE_C_ADDR enable constraint FK_C_ADDR_COMPANY;
prompt Enabling foreign key constraints for TE_C_EMAIL...
alter table TE_C_EMAIL enable constraint C_CITY;
prompt Enabling foreign key constraints for TE_P_ADDR...
alter table TE_P_ADDR enable constraint FK_P_ADDR_PERSON;
prompt Enabling foreign key constraints for TE_P_APPEND...
alter table TE_P_APPEND enable constraint APPEND_F_PERSON;
prompt Enabling foreign key constraints for TE_P_EDU...
alter table TE_P_EDU enable constraint F_SPECIATY;
prompt Enabling foreign key constraints for TE_P_EMAIL...
alter table TE_P_EMAIL enable constraint F_MAIL_LINK_ADDR;
alter table TE_P_EMAIL enable constraint F_MAIL_PERSON;
prompt Enabling foreign key constraints for TE_P_LANGUAGE...
alter table TE_P_LANGUAGE enable constraint LANGUAGE_F1;
alter table TE_P_LANGUAGE enable constraint LANGUAGE_F2;
prompt Enabling foreign key constraints for TE_P_SKILL...
alter table TE_P_SKILL enable constraint SKILL_F1;
alter table TE_P_SKILL enable constraint SKILL_F2;
set feedback on
set define on
prompt Done.
