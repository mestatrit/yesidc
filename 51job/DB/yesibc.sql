prompt PL/SQL Developer import file
prompt Created on 2009��6��18�� by Administrator
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
  is '��˾��������';
comment on column TE_C_COMPANY.COMPANY_NAME_EN
  is '��˾Ӣ������';
comment on column TE_C_COMPANY.COMPANY_NAME_SIMPLE
  is '��˾���ļ��';
comment on column TE_C_COMPANY.COMPANY_NAME_SIMPLE_EN
  is '��˾Ӣ�ļ��';
comment on column TE_C_COMPANY.COMPANY_TYPE
  is '��˾����';
comment on column TE_C_COMPANY.COMPANY_SCALE
  is '��˾��ģ';
comment on column TE_C_COMPANY.COMPANY_INDUSTRY1
  is '��ҵ���1 - ��Ӫ��ҵ';
comment on column TE_C_COMPANY.COMPANY_INDUSTRY2
  is '��ҵ���2 - ��Ӫ��ҵ';
comment on column TE_C_COMPANY.HOMEPAGE1
  is '�� ҳ 1 ';
comment on column TE_C_COMPANY.HOMEPAGE2
  is '�� ҳ 2';
comment on column TE_C_COMPANY.HOMEPAGE3
  is '�� ҳ 3';
comment on column TE_C_COMPANY.HOMEPAGE4
  is '�� ҳ 4';
comment on column TE_C_COMPANY.HOMEPAGE5
  is '�� ҳ 5';
comment on column TE_C_COMPANY.COMPANY_DOMAIN1
  is '��˾����1';
comment on column TE_C_COMPANY.COMPANY_DOMAIN2
  is '��˾����2';
comment on column TE_C_COMPANY.COMPANY_MEMO
  is '��˾��ע';
comment on column TE_C_COMPANY.FROM_WHERE
  is '������Դ';
comment on column TE_C_COMPANY.COMPANY_INDUSTRY3
  is '��ҵ���3 - ��Ӫ��ҵ';
comment on column TE_C_COMPANY.INTRODUCTION1
  is '��˾���';
comment on column TE_C_COMPANY.REGISTERED_CAPITAL_AMOUNT
  is 'ע���ʱ����';
comment on column TE_C_COMPANY.REGISTERED_CAPITAL_UNIT
  is 'ע���ʱ���λ';
comment on column TE_C_COMPANY.BUSINESS_OPERATION
  is '��Ӫģʽ';
comment on column TE_C_COMPANY.MAIN_BUSINESS_ADDRESS
  is '��Ҫ��Ӫ�ص�';
comment on column TE_C_COMPANY.MAIN_PRODUCTS
  is '��Ӫ��Ʒ';
comment on column TE_C_COMPANY.ESTABLISHMENT_TIME
  is '����ʱ��';
comment on column TE_C_COMPANY.REGISTER_ADDR
  is '��˾ע���';
comment on column TE_C_COMPANY.COPORATE_REPRESENTATIVE
  is '����������/������';
comment on column TE_C_COMPANY.BANK_ACCOUNT_OPEN
  is '��������';
comment on column TE_C_COMPANY.BANK_ACCOUNT
  is '�����ʺ�';
comment on column TE_C_COMPANY.FACTORY_SPACE
  is '�������';
comment on column TE_C_COMPANY.STAFF_AMOUNT
  is 'Ա������';
comment on column TE_C_COMPANY.RESEARCH_DPT_AMOUNT
  is '�з���������';
comment on column TE_C_COMPANY.BRAND_NAME
  is 'Ʒ������';
comment on column TE_C_COMPANY.OUTPUT_MONTHLY_AMOUNT
  is '�²���';
comment on column TE_C_COMPANY.OUTPUT_MONTHLY_UNIT
  is '�²�����λ';
comment on column TE_C_COMPANY.TURNOVER_YEARLY
  is '��Ӫҵ�� -> ����ڶ� ���ܴ��� ��Ӫҵ�� ';
comment on column TE_C_COMPANY.IMPORTS
  is '����ڶ�';
comment on column TE_C_COMPANY.EXPORTS
  is '����ڶ� -> ����ڶ� ���ܴ��� ��Ӫҵ�� ';
comment on column TE_C_COMPANY.MNG_SYS_AUTH
  is '������ϵ��֤:ISO 9000 ISO 9001 ISO 9002 ISO 9003 ISO 9004 ISO 14000 
����';
comment on column TE_C_COMPANY.QULITY_CONTROL
  is '��������:�ڲ�:������:�� ';
comment on column TE_C_COMPANY.MAIN_MARKET
  is '��Ҫ�г�: ��½  �۰�̨����  �ձ�  ����  ����  ��ŷ  ��ŷ  ����  ������  �ж�  ����  ������  ȫ�� 
�����г�';
comment on column TE_C_COMPANY.MAIN_CUSTOMER
  is '��Ҫ�ͻ�Ⱥ,�磺���С���װ����ӡȾ��';
comment on column TE_C_COMPANY.IS_OEM
  is ' �Ƿ��ṩOEM���ӹ����� �� �� ';
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
  is '������Դ';
comment on column TE_C_EMAIL.DEFAULT_NAME
  is 'email�ռ�����������';
comment on column TE_C_EMAIL.DEFAULT_NAME_EN
  is 'email�ռ�������';
comment on column TE_C_EMAIL.COUNTRY
  is '����';
comment on column TE_C_EMAIL.CITY
  is '����';
comment on column TE_C_EMAIL.MAIL_TYPE
  is 'email����';
comment on column TE_C_EMAIL.COMPANY_NAME
  is '��˾����';
comment on column TE_C_EMAIL.COMPANYID
  is '��˾PK';
comment on column TE_C_EMAIL.MOBILE1
  is '�ֻ�1';
comment on column TE_C_EMAIL.MOBILE2
  is '�ֻ�2';
comment on column TE_C_EMAIL.TEL1
  is '�绰1';
comment on column TE_C_EMAIL.TEL2
  is '�绰2';
comment on column TE_C_EMAIL.TEL3
  is '�绰3';
comment on column TE_C_EMAIL.FAX1
  is '����1';
comment on column TE_C_EMAIL.FAX2
  is '����2';
comment on column TE_C_EMAIL.FAX3
  is '����3';
comment on column TE_C_EMAIL.WANGWANG_ID
  is '����';
comment on column TE_C_EMAIL.DEPARTMENT
  is '����';
comment on column TE_C_EMAIL.POSITION
  is 'ְλ';
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
  is '������Դ';
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
  is 'ѧУ����/��ѵ����/֤��䷢����';
comment on column TE_P_EDU.EDU_SPECIALITY
  is 'רҵ����/��ѵ�γ�/֤������';
comment on column TE_P_EDU.EDU_LEVEL
  is 'ѧ��/���֤��/֤��ɼ�';
comment on column TE_P_EDU.EDU_TYPE
  is 'EDU_TYPE_SCHOOL="1";EDU_TYPE_TRAINING="2";EDU_TYPE_CERTIFICATION="3";';
comment on column TE_P_EDU.MEMO
  is '��ϸ����';
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
  is '������Դ';
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
