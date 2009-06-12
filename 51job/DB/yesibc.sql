prompt PL/SQL Developer import file
prompt Created on 2009年6月12日 by Administrator
set feedback off
set define off
prompt Dropping TE_CODE...
drop table TE_CODE cascade constraints;
prompt Dropping TE_P_PERSON...
drop table TE_P_PERSON cascade constraints;
prompt Dropping TE_EMAIL...
drop table TE_EMAIL cascade constraints;
prompt Dropping TE_P_APPEND...
drop table TE_P_APPEND cascade constraints;
prompt Dropping TE_P_EDU...
drop table TE_P_EDU cascade constraints;
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
  PERSON_ID            VARCHAR2(30)
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

prompt Creating TE_EMAIL...
create table TE_EMAIL
(
  ID           NUMBER(19) not null,
  EMAIL        VARCHAR2(100) not null,
  NAME_DEFAULT VARCHAR2(200),
  LINK_ADDR    NUMBER(19),
  MAIL_TYPE    VARCHAR2(2) not null,
  PERSON_ID    NUMBER(19),
  COMPANY_ID   NUMBER(19),
  CREATE_DATE  TIMESTAMP(6),
  UPDATE_DATE  TIMESTAMP(6),
  CREATE_USER  VARCHAR2(50),
  UPDATE_USER  VARCHAR2(50)
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
alter table TE_EMAIL
  add constraint P_EMAIL primary key (ID)
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
alter table TE_EMAIL
  add constraint F_MAIL_LINK_ADDR foreign key (LINK_ADDR)
  references TE_CODE (ID);
alter table TE_EMAIL
  add constraint F_MAIL_PERSON foreign key (PERSON_ID)
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
prompt Disabling foreign key constraints for TE_EMAIL...
alter table TE_EMAIL disable constraint F_MAIL_LINK_ADDR;
alter table TE_EMAIL disable constraint F_MAIL_PERSON;
prompt Disabling foreign key constraints for TE_P_APPEND...
alter table TE_P_APPEND disable constraint APPEND_F_PERSON;
prompt Disabling foreign key constraints for TE_P_EDU...
alter table TE_P_EDU disable constraint F_SPECIATY;
prompt Disabling foreign key constraints for TE_P_LANGUAGE...
alter table TE_P_LANGUAGE disable constraint LANGUAGE_F1;
alter table TE_P_LANGUAGE disable constraint LANGUAGE_F2;
prompt Disabling foreign key constraints for TE_P_SKILL...
alter table TE_P_SKILL disable constraint SKILL_F1;
alter table TE_P_SKILL disable constraint SKILL_F2;
prompt Loading TE_CODE...
prompt Table is empty
prompt Loading TE_P_PERSON...
prompt Table is empty
prompt Loading TE_EMAIL...
prompt Table is empty
prompt Loading TE_P_APPEND...
prompt Table is empty
prompt Loading TE_P_EDU...
prompt Table is empty
prompt Loading TE_P_LANGUAGE...
prompt Table is empty
prompt Loading TE_P_SKILL...
prompt Table is empty
prompt Enabling foreign key constraints for TE_CODE...
alter table TE_CODE enable constraint CODE_F_CODE;
prompt Enabling foreign key constraints for TE_EMAIL...
alter table TE_EMAIL enable constraint F_MAIL_LINK_ADDR;
alter table TE_EMAIL enable constraint F_MAIL_PERSON;
prompt Enabling foreign key constraints for TE_P_APPEND...
alter table TE_P_APPEND enable constraint APPEND_F_PERSON;
prompt Enabling foreign key constraints for TE_P_EDU...
alter table TE_P_EDU enable constraint F_SPECIATY;
prompt Enabling foreign key constraints for TE_P_LANGUAGE...
alter table TE_P_LANGUAGE enable constraint LANGUAGE_F1;
alter table TE_P_LANGUAGE enable constraint LANGUAGE_F2;
prompt Enabling foreign key constraints for TE_P_SKILL...
alter table TE_P_SKILL enable constraint SKILL_F1;
alter table TE_P_SKILL enable constraint SKILL_F2;
set feedback on
set define on
prompt Done.
