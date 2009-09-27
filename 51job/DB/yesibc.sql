drop table TC_APPEND cascade constraints
drop table TC_CONTACT_COMMON cascade constraints
drop table TC_CONTACT_EMAIL cascade constraints
drop table TC_CONTACT_HEADER cascade constraints
drop table TC_CONTACT_INFO cascade constraints
drop table TC_EMAIL cascade constraints
drop table TP_ADDR cascade constraints
drop table TP_APPEND cascade constraints
drop table TP_EDU cascade constraints
drop table TP_EMAIL cascade constraints
drop table TP_LANGUAGE cascade constraints
drop table TP_SKILL cascade constraints
drop table T_CODE cascade constraints
drop table T_COMPANY cascade constraints
drop table T_PERSON cascade constraints
drop sequence SEQ_CODE
drop sequence SEQ_COMPANY
drop sequence SEQ_C_APPEND
drop sequence SEQ_C_CONTACT_HEADER
drop sequence SEQ_C_CONTACT_INFO
drop sequence SEQ_C_EMAIL
drop sequence SEQ_PERSON
drop sequence SEQ_P_ADDRESS
drop sequence SEQ_P_APPEND
drop sequence SEQ_P_EDU
drop sequence SEQ_P_EMAIL
drop sequence SEQ_P_LANGUAGE
drop sequence SEQ_P_SKILL
create table TC_APPEND (id number(19,0) not null, COMPANY_ID number(19,0), COMPANY_NAME varchar2(200 char), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), LOB_TYPE varchar2(1 char), CONTENTS clob, DATAS blob, CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TC_APPEND.COMPANY_NAME is '��˾����'
comment on column TC_APPEND.FROM_WHERE is '������Դ����'
comment on column TC_APPEND.FROM_WHERE_NAME is '������Դ'
comment on column TC_APPEND.LOB_TYPE is '��ʾΪ1 clob����2 blob'
comment on column TC_APPEND.CONTENTS is 'clob����'
comment on column TC_APPEND.DATAS is 'blob����'
comment on column TC_APPEND.CREATE_DATE is '����ʱ��'
comment on column TC_APPEND.UPDATE_DATE is '����ʱ��'
comment on column TC_APPEND.CREATE_USER is '������'
comment on column TC_APPEND.UPDATE_USER is '������'
create table TC_CONTACT_COMMON (CONTACT_HEADER_ID number(19,0) not null, CONTACT_INFO_ID number(19,0) not null)
create table TC_CONTACT_EMAIL (CONTACT_HEADER_ID number(19,0) not null, COM_EMAIL_ID number(19,0) not null)
create table TC_CONTACT_HEADER (id number(19,0) not null, COUNTRY_ID number(19,0), PROVINCE_ID number(19,0), CITY_ID number(19,0), COUNTRY_NAME varchar2(100 char), PROVINCE_NAME varchar2(100 char), CITY_NAME varchar2(100 char), COMPANY_ID number(19,0), COMPANY_NAME varchar2(200 char), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), DEFAULT_NAME varchar2(100 char), DEFAULT_NAME_EN varchar2(100 char), address1 varchar2(100 char), address2 varchar2(100 char), postcode1 varchar2(10 char), postcode2 varchar2(10 char), DEPARTMENT varchar2(100 char), POSITION varchar2(100 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TC_CONTACT_HEADER.COUNTRY_NAME is '��������'
comment on column TC_CONTACT_HEADER.PROVINCE_NAME is 'ʡ����'
comment on column TC_CONTACT_HEADER.CITY_NAME is '������'
comment on column TC_CONTACT_HEADER.COMPANY_NAME is '��˾����'
comment on column TC_CONTACT_HEADER.FROM_WHERE is '������Դ����'
comment on column TC_CONTACT_HEADER.FROM_WHERE_NAME is '������Դ'
comment on column TC_CONTACT_HEADER.DEFAULT_NAME is '��������'
comment on column TC_CONTACT_HEADER.DEFAULT_NAME_EN is 'Ӣ������'
comment on column TC_CONTACT_HEADER.address1 is '��ַһ'
comment on column TC_CONTACT_HEADER.address2 is '��ַ��'
comment on column TC_CONTACT_HEADER.postcode1 is '�ʱ�һ'
comment on column TC_CONTACT_HEADER.postcode2 is '�ʱ��'
comment on column TC_CONTACT_HEADER.DEPARTMENT is '����'
comment on column TC_CONTACT_HEADER.POSITION is 'ְλ'
comment on column TC_CONTACT_HEADER.CREATE_DATE is '����ʱ��'
comment on column TC_CONTACT_HEADER.UPDATE_DATE is '����ʱ��'
comment on column TC_CONTACT_HEADER.CREATE_USER is '������'
comment on column TC_CONTACT_HEADER.UPDATE_USER is '������'
create table TC_CONTACT_INFO (id number(19,0) not null, type varchar2(255 char) not null, FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), CONTRACT_NO varchar2(50 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TC_CONTACT_INFO.FROM_WHERE is '������Դ����'
comment on column TC_CONTACT_INFO.FROM_WHERE_NAME is '������Դ'
create table TC_EMAIL (id number(19,0) not null, FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), MAILTYPE varchar2(100 char), EMAIL varchar2(100 char) not null, CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TC_EMAIL.FROM_WHERE is '������Դ����'
comment on column TC_EMAIL.FROM_WHERE_NAME is '������Դ'
comment on column TC_EMAIL.MAILTYPE is '�ʼ���ַ����'
comment on column TC_EMAIL.EMAIL is '�ʼ���ַ'
comment on column TC_EMAIL.CREATE_DATE is '����ʱ��'
comment on column TC_EMAIL.UPDATE_DATE is '����ʱ��'
comment on column TC_EMAIL.CREATE_USER is '������'
comment on column TC_EMAIL.UPDATE_USER is '������'
create table TP_ADDR (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), COUNTRY_ID number(19,0), PROVINCE_ID number(19,0), CITY_ID number(19,0), COUNTRY_NAME varchar2(100 char), PROVINCE_NAME varchar2(100 char), CITY_NAME varchar2(100 char), ADDRESS varchar2(200 char), POSTCODE varchar2(10 char), MEMO varchar2(1000 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TP_ADDR.PERSON_ID is '������'
comment on column TP_ADDR.FROM_WHERE is '������Դ����'
comment on column TP_ADDR.FROM_WHERE_NAME is '������Դ'
comment on column TP_ADDR.COUNTRY_ID is '���Ҵ���'
comment on column TP_ADDR.PROVINCE_ID is 'ʡ����'
comment on column TP_ADDR.CITY_ID is '�д���'
comment on column TP_ADDR.COUNTRY_NAME is '��������'
comment on column TP_ADDR.PROVINCE_NAME is 'ʡ����'
comment on column TP_ADDR.CITY_NAME is '������'
comment on column TP_ADDR.ADDRESS is '��ַ'
comment on column TP_ADDR.POSTCODE is '�ʱ�'
comment on column TP_ADDR.MEMO is '��ע'
comment on column TP_ADDR.CREATE_DATE is '����ʱ��'
comment on column TP_ADDR.UPDATE_DATE is '����ʱ��'
comment on column TP_ADDR.CREATE_USER is '������'
comment on column TP_ADDR.UPDATE_USER is '������'
create table TP_APPEND (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), APPEND_TYPE number(19,0), APPEND_TYPE_NAME varchar2(100 char), CONTENT varchar2(4000 char), CONTENT1 varchar2(4000 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TP_APPEND.PERSON_ID is '������'
comment on column TP_APPEND.FROM_WHERE is '������Դ����'
comment on column TP_APPEND.FROM_WHERE_NAME is '������Դ'
comment on column TP_APPEND.APPEND_TYPE is '������Ϣ����'
comment on column TP_APPEND.APPEND_TYPE_NAME is '������Ϣ���'
comment on column TP_APPEND.CONTENT is '������Ϣ'
comment on column TP_APPEND.CONTENT1 is '������Ϣ1'
comment on column TP_APPEND.CREATE_DATE is '����ʱ��'
comment on column TP_APPEND.UPDATE_DATE is '����ʱ��'
comment on column TP_APPEND.CREATE_USER is '������'
comment on column TP_APPEND.UPDATE_USER is '������'
create table TP_EDU (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), EDU_DATE_FROM timestamp, EDU_DATE_TO timestamp, EDU_NAME varchar2(100 char), EDU_SPECIALITY_NAME varchar2(100 char), EDU_SPECIALITY number(19,0), EDU_LEVEL number(19,0), EDU_LEVEL_NAME varchar2(50 char), EDU_TYPE varchar2(2 char), MEMO varchar2(2000 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TP_EDU.PERSON_ID is '������'
comment on column TP_EDU.FROM_WHERE is '������Դ����'
comment on column TP_EDU.FROM_WHERE_NAME is '������Դ'
comment on column TP_EDU.EDU_DATE_FROM is '��ʼʱ��'
comment on column TP_EDU.EDU_DATE_TO is '����ʱ��'
comment on column TP_EDU.EDU_NAME is 'ѧУ����/��ѵ����/֤��䷢����'
comment on column TP_EDU.EDU_SPECIALITY_NAME is 'רҵ����/��ѵ�γ�/֤������'
comment on column TP_EDU.EDU_SPECIALITY is 'רҵ����/��ѵ�γ�/֤������ ����'
comment on column TP_EDU.EDU_LEVEL is 'ѧ��/���֤��/֤��ɼ� ����'
comment on column TP_EDU.EDU_LEVEL_NAME is 'ѧ��/���֤��/֤��ɼ�'
comment on column TP_EDU.EDU_TYPE is 'EDU_TYPE_SCHOOL="1";EDU_TYPE_TRAINING="2";EDU_TYPE_CERTIFICATION="3";'
comment on column TP_EDU.MEMO is '��ϸ����'
comment on column TP_EDU.CREATE_DATE is '����ʱ��'
comment on column TP_EDU.UPDATE_DATE is '����ʱ��'
comment on column TP_EDU.CREATE_USER is '������'
comment on column TP_EDU.UPDATE_USER is '������'
create table TP_EMAIL (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), EMAIL varchar2(100 char) not null, MAIL_TYPE varchar2(2 char), NAME_DEFAULT varchar2(100 char), NAME1 varchar2(100 char), NAME2 varchar2(100 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TP_EMAIL.PERSON_ID is '��������������'
comment on column TP_EMAIL.FROM_WHERE is '������Դ����'
comment on column TP_EMAIL.FROM_WHERE_NAME is '������Դ'
comment on column TP_EMAIL.EMAIL is '�ʼ���ַ'
comment on column TP_EMAIL.MAIL_TYPE is '�ʼ����� : 0-δ֪��1-���ã�2-ע���� ��3-�����ã�4-��������'
comment on column TP_EMAIL.NAME_DEFAULT is '�ʼ��ƺ�'
comment on column TP_EMAIL.NAME1 is '�ʼ��ƺ�1'
comment on column TP_EMAIL.NAME2 is '�ʼ��ƺ�2'
comment on column TP_EMAIL.CREATE_DATE is '����ʱ��'
comment on column TP_EMAIL.UPDATE_DATE is '����ʱ��'
comment on column TP_EMAIL.CREATE_USER is '������'
comment on column TP_EMAIL.UPDATE_USER is '������'
create table TP_LANGUAGE (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), LANGUAGE_NAME varchar2(100 char), LANGUAGE_CODE number(19,0), USE_LEVEL_NAME varchar2(50 char), USE_LEVEL number(19,0), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TP_LANGUAGE.PERSON_ID is '������'
comment on column TP_LANGUAGE.FROM_WHERE is '������Դ����'
comment on column TP_LANGUAGE.FROM_WHERE_NAME is '������Դ'
comment on column TP_LANGUAGE.LANGUAGE_NAME is '��������'
comment on column TP_LANGUAGE.LANGUAGE_CODE is '���Դ���'
comment on column TP_LANGUAGE.USE_LEVEL_NAME is '����ˮƽ'
comment on column TP_LANGUAGE.USE_LEVEL is '����ˮƽ����'
comment on column TP_LANGUAGE.CREATE_DATE is '����ʱ��'
comment on column TP_LANGUAGE.UPDATE_DATE is '����ʱ��'
comment on column TP_LANGUAGE.CREATE_USER is '������'
comment on column TP_LANGUAGE.UPDATE_USER is '������'
create table TP_SKILL (id number(19,0) not null, PERSON_ID number(19,0), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), USE_MONTHS double precision, USE_LEVEL_NAME varchar2(50 char), USE_LEVEL number(19,0), SKILL_NAME varchar2(50 char), SKILL number(19,0), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column TP_SKILL.PERSON_ID is '������'
comment on column TP_SKILL.FROM_WHERE is '������Դ����'
comment on column TP_SKILL.FROM_WHERE_NAME is '������Դ'
comment on column TP_SKILL.USE_LEVEL_NAME is '����ˮƽ'
comment on column TP_SKILL.USE_LEVEL is '����ˮƽ����'
comment on column TP_SKILL.SKILL_NAME is '��������'
comment on column TP_SKILL.SKILL is '�������ƴ���'
comment on column TP_SKILL.CREATE_DATE is '����ʱ��'
comment on column TP_SKILL.UPDATE_DATE is '����ʱ��'
comment on column TP_SKILL.CREATE_USER is '������'
comment on column TP_SKILL.UPDATE_USER is '������'
create table T_CODE
(
  ID          NUMBER(19) not null,
  CODE_TYPE   NUMBER(19),
  CODE        VARCHAR2(50 CHAR) not null,
  CODE1       VARCHAR2(50 CHAR),
  ENAME1      VARCHAR2(250 CHAR),
  ENAME       VARCHAR2(250 CHAR),
  CNAME       VARCHAR2(250 CHAR),
  CNAME1      VARCHAR2(250 CHAR),
  MEMO        VARCHAR2(250 CHAR),
  CODE_LEVEL  NUMBER(19) not null,
  SORT_LIST   NUMBER(19),
  CREATE_DATE TIMESTAMP(6),
  UPDATE_DATE TIMESTAMP(6),
  CREATE_USER VARCHAR2(50 CHAR),
  UPDATE_USER VARCHAR2(50 CHAR),
  primary key (id)
)
create table T_COMPANY (id number(19,0) not null, COMPANY_CODE varchar2(50 char), URL varchar2(200 char), COMPANY_NAME varchar2(100 char), COMPANY_NAME_EN varchar2(100 char), COMPANY_NAME_SIMPLE varchar2(20 char), COMPANY_NAME_SIMPLE_EN varchar2(20 char), COMPANY_TYPE number(19,0), COMPANY_SCALE number(19,0), COMPANY_INDUSTRY1 number(19,0), COMPANY_INDUSTRY2 number(19,0), HOMEPAGE1 varchar2(200 char), HOMEPAGE2 varchar2(200 char), HOMEPAGE3 varchar2(200 char), HOMEPAGE4 varchar2(200 char), HOMEPAGE5 varchar2(200 char), COMPANY_DOMAIN1 varchar2(20 char), COMPANY_DOMAIN2 varchar2(20 char), COMPANY_MEMO varchar2(2000 char), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), COMPANY_INDUSTRY3 number(19,0), REGISTERED_CAPITAL_AMOUNT number(19,2), REGISTERED_CAPITAL_UNIT varchar2(255 char), BUSINESS_OPERATION number(19,0), MAIN_BUSINESS_ADDRESS varchar2(500 char), MAIN_PRODUCTS varchar2(500 char), ESTABLISHMENT_TIME varchar2(10 char), REGISTER_ADDR varchar2(50 char), COPORATE_REPRESENTATIVE varchar2(50 char), BANK_ACCOUNT_OPEN varchar2(50 char), BANK_ACCOUNT varchar2(50 char), FACTORY_SPACE varchar2(10 char), STAFF_AMOUNT number(19,0), RESEARCH_DPT_AMOUNT number(19,0), BRAND_NAME varchar2(50 char), OUTPUT_MONTHLY_AMOUNT number(19,0), OUTPUT_MONTHLY_UNIT number(19,0), TURNOVER_YEARLY number(19,0), MNG_SYS_AUTH varchar2(200 char), QULITY_CONTROL varchar2(10 char), MAIN_MARKET varchar2(100 char), MAIN_CUSTOMER varchar2(100 char), IS_OEM varchar2(2 char), COMPANY_TYPE_NAME varchar2(100 char), COMPANY_SCALE_NAME varchar2(100 char), COMPANY_INDUSTRY1_NAME varchar2(100 char), COMPANY_INDUSTRY2_NAME varchar2(100 char), COMPANY_INDUSTRY3_NAME varchar2(100 char), REGISTERED_CAPITAL_AMOUNT_NAME varchar2(100 char), REGISTERED_CAPITAL_UNIT_NAME varchar2(100 char), BUSINESS_OPERATION_NAME varchar2(100 char), RESEARCH_DPT_AMOUNT_NAME varchar2(100 char), STAFF_AMOUNT_NAME varchar2(100 char), OUTPUT_MONTHLY_AMOUNT_NAME varchar2(100 char), OUTPUT_MONTHLY_UNIT_NAME varchar2(100 char), TURNOVER_YEARLY_NAME varchar2(100 char), IMPORTS_AMOUNT_NAME varchar2(100 char), IMPORTS_AMOUNT number(19,0), EXPORTS_AMOUNT_NAME varchar2(100 char), EXPORTS_AMOUNT number(19,0), PARENT_ID number(19,0), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(20 char), UPDATE_USER varchar2(20 char), primary key (id))
comment on column T_COMPANY.COMPANY_CODE is 'company Id in web'
comment on column T_COMPANY.URL is 'company url in web'
comment on column T_COMPANY.COMPANY_NAME is '��˾��������'
comment on column T_COMPANY.COMPANY_NAME_EN is '��˾Ӣ������'
comment on column T_COMPANY.COMPANY_NAME_SIMPLE is '��˾���ļ��'
comment on column T_COMPANY.COMPANY_NAME_SIMPLE_EN is '��˾Ӣ�ļ��'
comment on column T_COMPANY.COMPANY_TYPE is '��˾����'
comment on column T_COMPANY.COMPANY_SCALE is '��˾��ģ'
comment on column T_COMPANY.COMPANY_INDUSTRY1 is '��ҵ���1 - ��Ӫ��ҵ'
comment on column T_COMPANY.COMPANY_INDUSTRY2 is '��ҵ���2 - ��Ӫ��ҵ'
comment on column T_COMPANY.HOMEPAGE1 is '�� ҳ 1'
comment on column T_COMPANY.HOMEPAGE2 is '�� ҳ 2'
comment on column T_COMPANY.HOMEPAGE3 is '�� ҳ 3'
comment on column T_COMPANY.HOMEPAGE4 is '�� ҳ 4'
comment on column T_COMPANY.HOMEPAGE5 is '�� ҳ 5'
comment on column T_COMPANY.COMPANY_DOMAIN1 is '��˾����1'
comment on column T_COMPANY.COMPANY_DOMAIN2 is '��˾����2'
comment on column T_COMPANY.COMPANY_MEMO is '��˾��ע'
comment on column T_COMPANY.FROM_WHERE is '������Դ����'
comment on column T_COMPANY.FROM_WHERE_NAME is '������Դ'
comment on column T_COMPANY.COMPANY_INDUSTRY3 is '��ҵ���3 - ��Ӫ��ҵ'
comment on column T_COMPANY.REGISTERED_CAPITAL_AMOUNT is 'ע���ʱ����'
comment on column T_COMPANY.REGISTERED_CAPITAL_UNIT is 'ע���ʱ���λ'
comment on column T_COMPANY.BUSINESS_OPERATION is '��Ӫģʽ'
comment on column T_COMPANY.MAIN_BUSINESS_ADDRESS is '��Ҫ��Ӫ�ص�'
comment on column T_COMPANY.MAIN_PRODUCTS is '��Ӫ��Ʒ'
comment on column T_COMPANY.ESTABLISHMENT_TIME is '����ʱ��'
comment on column T_COMPANY.REGISTER_ADDR is '��˾ע���'
comment on column T_COMPANY.COPORATE_REPRESENTATIVE is '����������/������'
comment on column T_COMPANY.BANK_ACCOUNT_OPEN is '��������'
comment on column T_COMPANY.BANK_ACCOUNT is '�����ʺ�'
comment on column T_COMPANY.FACTORY_SPACE is '�������'
comment on column T_COMPANY.STAFF_AMOUNT is 'Ա������'
comment on column T_COMPANY.RESEARCH_DPT_AMOUNT is '�з���������'
comment on column T_COMPANY.BRAND_NAME is 'Ʒ������'
comment on column T_COMPANY.OUTPUT_MONTHLY_AMOUNT is '�²���'
comment on column T_COMPANY.OUTPUT_MONTHLY_UNIT is '�²�����λ'
comment on column T_COMPANY.TURNOVER_YEARLY is '��Ӫҵ�� -> ����ڶ� ���ܴ��� ��Ӫҵ��'
comment on column T_COMPANY.MNG_SYS_AUTH is '������ϵ��֤:ISO 9000 ISO 9001 ISO 9002 ISO 9003 ISO 9004 ISO 14000 ����'
comment on column T_COMPANY.QULITY_CONTROL is '��������:�ڲ�:������:��'
comment on column T_COMPANY.MAIN_MARKET is '��Ҫ�г�: ��½ �۰�̨���� �ձ� ���� ���� ��ŷ ��ŷ ���� ������ �ж� ���� ������ ȫ�� �����г�'
comment on column T_COMPANY.MAIN_CUSTOMER is '��Ҫ�ͻ�Ⱥ,�磺���С���װ����ӡȾ��'
comment on column T_COMPANY.IS_OEM is '�Ƿ��ṩOEM���ӹ����� �� ��'
comment on column T_COMPANY.COMPANY_TYPE_NAME is '��˾����'
comment on column T_COMPANY.COMPANY_SCALE_NAME is '��˾��ģ'
comment on column T_COMPANY.COMPANY_INDUSTRY1_NAME is '��ҵ���1 - ��Ӫ��ҵ'
comment on column T_COMPANY.COMPANY_INDUSTRY2_NAME is '��ҵ���2 - ��Ӫ��ҵ'
comment on column T_COMPANY.COMPANY_INDUSTRY3_NAME is '��ҵ���3 - ��Ӫ��ҵ'
comment on column T_COMPANY.REGISTERED_CAPITAL_AMOUNT_NAME is 'ע���ʱ����'
comment on column T_COMPANY.REGISTERED_CAPITAL_UNIT_NAME is 'ע���ʱ���λ'
comment on column T_COMPANY.BUSINESS_OPERATION_NAME is '��Ӫģʽ'
comment on column T_COMPANY.RESEARCH_DPT_AMOUNT_NAME is 'Ա������'
comment on column T_COMPANY.STAFF_AMOUNT_NAME is '�з���������'
comment on column T_COMPANY.OUTPUT_MONTHLY_AMOUNT_NAME is '�²���'
comment on column T_COMPANY.OUTPUT_MONTHLY_UNIT_NAME is '�²�����λ'
comment on column T_COMPANY.TURNOVER_YEARLY_NAME is '��Ӫҵ�� -> ����ڶ� ���ܴ��� ��Ӫҵ��'
comment on column T_COMPANY.IMPORTS_AMOUNT_NAME is '����ڶ�'
comment on column T_COMPANY.IMPORTS_AMOUNT is '����ڶ�'
comment on column T_COMPANY.EXPORTS_AMOUNT_NAME is '����ڶ� -> ����ڶ� ���ܴ��� ��Ӫҵ��'
comment on column T_COMPANY.EXPORTS_AMOUNT is '����ڶ� -> ����ڶ� ���ܴ��� ��Ӫҵ��'
comment on column T_COMPANY.CREATE_DATE is '����ʱ��'
comment on column T_COMPANY.UPDATE_DATE is '����ʱ��'
comment on column T_COMPANY.CREATE_USER is '������'
comment on column T_COMPANY.UPDATE_USER is '������'
create table T_PERSON (id number(19,0) not null, ID_TYPE number(19,0), ID_TYPE_NAME varchar2(50 char), PERSON_ID varchar2(30 char), NAME_DEFAULT varchar2(200 char), NAME_FIRST varchar2(50 char), NAME_MIDDLE varchar2(50 char), �� varchar2(50 char), NAME_NICK1 varchar2(50 char), NAME_NICK2 varchar2(50 char), NAME_NICK3 varchar2(50 char), SEX varchar2(1 char), BIRTHDAY timestamp, ADDR_LIVE number(19,0), ADDR_LIVE_NAME varchar2(50 char), WORK_YEARS number(19,0), WORK_YEARS_NAME varchar2(50 char), ADDR_DOMICILE number(19,0), ADDR_DOMICILE_NAME varchar2(50 char), ADDR_LIVE_DETAIL varchar2(300 char), ADDR_LIVE_ZIP varchar2(10 char), SARALY_YEAR number(19,0), SARALY_YEAR_NAME varchar2(50 char), TEL_MOBILE varchar2(50 char), TEL_COMPANY varchar2(50 char), TEL_BP varchar2(50 char), TEL_FAMILY varchar2(50 char), HOMEPAGE_SELF1 varchar2(200 char), HOMEPAGE_SELF2 varchar2(200 char), LINK_WANGWANG varchar2(50 char), LINK_QQ varchar2(50 char), LINK_MSN varchar2(50 char), LINK_SKYPE varchar2(50 char), LINK_GTALK varchar2(50 char), LINK_FETION varchar2(50 char), WORK_SARALY_BASIC number(19,2), WORK_BONUS number(19,2), WORK_SUBSIDY number(19,2), WORK_STOCK number(19,2), SELF_ADJUST varchar2(1000 char), JOB_NATURE varchar2(2 char), JOB_INTENT_INDUSTRY1 number(19,0), JOB_INTENT_INDUSTRY_NAME1 varchar2(50 char), JOB_INTENT_INDUSTRY2 number(19,0), JOB_INTENT_INDUSTRY_NAME2 varchar2(50 char), JOB_INTENT_INDUSTRY3 number(19,0), JOB_INTENT_INDUSTRY_NAME3 varchar2(50 char), JOB_INTENT_INDUSTRY4 number(19,0), JOB_INTENT_INDUSTRY_NAME4 varchar2(50 char), JOB_INTENT_INDUSTRY5 number(19,0), JOB_INTENT_INDUSTRY_NAME5 varchar2(50 char), JOB_INTENT_ADDR1 number(19,0), JOB_INTENT_ADDR_NAME1 varchar2(50 char), JOB_INTENT_ADDR2 number(19,0), JOB_INTENT_ADDR_NAME2 varchar2(50 char), JOB_INTENT_ADDR3 number(19,0), JOB_INTENT_ADDR_NAME3 varchar2(50 char), JOB_INTENT_ADDR4 number(19,0), JOB_INTENT_ADDR_NAME4 varchar2(50 char), JOB_INTENT_ADDR5 number(19,0), JOB_INTENT_ADDR_NAME5 varchar2(50 char), JOB_INTENT_FUN1 number(19,0), JOB_INTENT_FUN_NAME1 varchar2(50 char), JOB_INTENT_FUN2 number(19,0), JOB_INTENT_FUN_NAME2 varchar2(50 char), JOB_INTENT_FUN3 number(19,0), JOB_INTENT_FUN_NAME3 varchar2(50 char), JOB_INTENT_FUN4 number(19,0), JOB_INTENT_FUN_NAME4 varchar2(50 char), JOB_INTENT_FUN5 number(19,0), JOB_INTENT_FUN_NAME5 varchar2(50 char), JOB_INTENT_SALARY number(19,0), JOB_INTENT_SALARY_NAME varchar2(50 char), FROM_WHERE number(19,0), FROM_WHERE_NAME varchar2(100 char), CREATE_DATE timestamp, UPDATE_DATE timestamp, CREATE_USER varchar2(50 char), UPDATE_USER varchar2(50 char), primary key (id))
comment on column T_PERSON.ID_TYPE is '֤��������'
comment on column T_PERSON.ID_TYPE_NAME is '֤�����'
comment on column T_PERSON.PERSON_ID is '֤������'
comment on column T_PERSON.NAME_DEFAULT is '����'
comment on column T_PERSON.NAME_FIRST is '��'
comment on column T_PERSON.NAME_MIDDLE is '�����м�'
comment on column T_PERSON.NAME_NICK1 is '�ǳ�1'
comment on column T_PERSON.NAME_NICK2 is '�ǳ�2'
comment on column T_PERSON.NAME_NICK3 is '�ǳ�3'
comment on column T_PERSON.SEX is '�Ա�:1-�У�2-Ů��0-δ֪'
comment on column T_PERSON.BIRTHDAY is '����'
comment on column T_PERSON.ADDR_LIVE is '��ס�ش���'
comment on column T_PERSON.ADDR_LIVE_NAME is '��ס��'
comment on column T_PERSON.WORK_YEARS is '�������޴���'
comment on column T_PERSON.WORK_YEARS_NAME is '��������'
comment on column T_PERSON.ADDR_DOMICILE is '���ڵش���'
comment on column T_PERSON.ADDR_DOMICILE_NAME is '���ڵ�'
comment on column T_PERSON.ADDR_LIVE_DETAIL is '��ס��ַ'
comment on column T_PERSON.ADDR_LIVE_ZIP is '��ס���ʱ�'
comment on column T_PERSON.SARALY_YEAR is 'Ŀǰ��н����'
comment on column T_PERSON.SARALY_YEAR_NAME is 'Ŀǰ��н ��/��'
comment on column T_PERSON.TEL_MOBILE is '�ֻ�'
comment on column T_PERSON.TEL_COMPANY is '��˾�绰'
comment on column T_PERSON.TEL_BP is 'BP��'
comment on column T_PERSON.TEL_FAMILY is '��ͥ�绰'
comment on column T_PERSON.HOMEPAGE_SELF1 is '������ҳ'
comment on column T_PERSON.HOMEPAGE_SELF2 is '������ҳ'
comment on column T_PERSON.LINK_WANGWANG is '�����ʺ�'
comment on column T_PERSON.LINK_QQ is 'QQ�ʺ�'
comment on column T_PERSON.LINK_MSN is 'MSN�ʺ�'
comment on column T_PERSON.LINK_SKYPE is 'SKYPE�ʺ�'
comment on column T_PERSON.LINK_GTALK is 'GTalk�ʺ�'
comment on column T_PERSON.LINK_FETION is '�����ʺ�'
comment on column T_PERSON.WORK_SARALY_BASIC is '������н ��/��'
comment on column T_PERSON.WORK_BONUS is '��Ƚ���/Ӷ�� ��/��'
comment on column T_PERSON.WORK_SUBSIDY is '����/���� ��/��'
comment on column T_PERSON.WORK_STOCK is '��Ʊ��'
comment on column T_PERSON.SELF_ADJUST is '��������'
comment on column T_PERSON.JOB_NATURE is '��������:1-ȫְ;2-��ְ;3-ʵϰ;4-ȫ/��ְ'
comment on column T_PERSON.JOB_INTENT_INDUSTRY1 is '������ҵ����1'
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME1 is '������ҵ1'
comment on column T_PERSON.JOB_INTENT_INDUSTRY2 is '������ҵ����2'
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME2 is '������ҵ2'
comment on column T_PERSON.JOB_INTENT_INDUSTRY3 is '������ҵ����3'
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME3 is '������ҵ3'
comment on column T_PERSON.JOB_INTENT_INDUSTRY4 is '������ҵ����4'
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME4 is '������ҵ4'
comment on column T_PERSON.JOB_INTENT_INDUSTRY5 is '������ҵ����5'
comment on column T_PERSON.JOB_INTENT_INDUSTRY_NAME5 is '������ҵ5'
comment on column T_PERSON.JOB_INTENT_ADDR1 is '�����ַ����1'
comment on column T_PERSON.JOB_INTENT_ADDR_NAME1 is '�����ַ1'
comment on column T_PERSON.JOB_INTENT_ADDR2 is '�����ַ����2'
comment on column T_PERSON.JOB_INTENT_ADDR_NAME2 is '�����ַ2'
comment on column T_PERSON.JOB_INTENT_ADDR3 is '�����ַ����3'
comment on column T_PERSON.JOB_INTENT_ADDR_NAME3 is '�����ַ3'
comment on column T_PERSON.JOB_INTENT_ADDR4 is '�����ַ����4'
comment on column T_PERSON.JOB_INTENT_ADDR_NAME4 is '�����ַ4'
comment on column T_PERSON.JOB_INTENT_ADDR5 is '�����ַ����5'
comment on column T_PERSON.JOB_INTENT_ADDR_NAME5 is '�����ַ5'
comment on column T_PERSON.JOB_INTENT_FUN1 is '����ְ�ܴ���1'
comment on column T_PERSON.JOB_INTENT_FUN_NAME1 is '����ְ��1'
comment on column T_PERSON.JOB_INTENT_FUN2 is '����ְ�ܴ���2'
comment on column T_PERSON.JOB_INTENT_FUN_NAME2 is '����ְ��2'
comment on column T_PERSON.JOB_INTENT_FUN3 is '����ְ�ܴ���3'
comment on column T_PERSON.JOB_INTENT_FUN_NAME3 is '����ְ��3'
comment on column T_PERSON.JOB_INTENT_FUN4 is '����ְ�ܴ���4'
comment on column T_PERSON.JOB_INTENT_FUN_NAME4 is '����ְ��4'
comment on column T_PERSON.JOB_INTENT_FUN5 is '����ְ�ܴ���5'
comment on column T_PERSON.JOB_INTENT_FUN_NAME5 is '����ְ��5'
comment on column T_PERSON.JOB_INTENT_SALARY is '������н����'
comment on column T_PERSON.JOB_INTENT_SALARY_NAME is '������н ��/��'
comment on column T_PERSON.FROM_WHERE is '������Դ����'
comment on column T_PERSON.FROM_WHERE_NAME is '������Դ'
comment on column T_PERSON.CREATE_DATE is '����ʱ��'
comment on column T_PERSON.UPDATE_DATE is '�޸�ʱ��'
comment on column T_PERSON.CREATE_USER is '�����û�'
comment on column T_PERSON.UPDATE_USER is '�޸��û�'
alter table TC_APPEND add constraint FK_C_APPEND_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TC_APPEND add constraint FK_APPEND_COMPANY foreign key (COMPANY_ID) references T_COMPANY
alter table TC_CONTACT_COMMON add constraint FK_CONTACT_COMMON_HEADER foreign key (CONTACT_HEADER_ID) references TC_CONTACT_HEADER
alter table TC_CONTACT_COMMON add constraint FK_CONTACT_COMMON_INFO foreign key (CONTACT_INFO_ID) references TC_CONTACT_INFO
alter table TC_CONTACT_EMAIL add constraint FK_CONTACT_EMAIL_HEADER foreign key (CONTACT_HEADER_ID) references TC_CONTACT_HEADER
alter table TC_CONTACT_EMAIL add constraint FK_CONTACT_EMAIL_EMAIL foreign key (COM_EMAIL_ID) references TC_EMAIL
alter table TC_CONTACT_HEADER add constraint FK_CONTACT_HEADER_CITY foreign key (CITY_ID) references T_CODE
alter table TC_CONTACT_HEADER add constraint FK_C_CONTACT_HEADER_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TC_CONTACT_HEADER add constraint FK_CONTACT_HEADER_COUNTRY foreign key (COUNTRY_ID) references T_CODE
alter table TC_CONTACT_HEADER add constraint FK_CONTACT_HEADER_PROVINCE foreign key (PROVINCE_ID) references T_CODE
alter table TC_CONTACT_HEADER add constraint FK_CONTACT_HEADER_COMPANY foreign key (COMPANY_ID) references T_COMPANY
alter table TC_CONTACT_INFO add constraint FK_C_CONTACT_INFO_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TC_EMAIL add constraint FK_C_EMAIL_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TP_ADDR add constraint FK_P_ADDR_CITY foreign key (CITY_ID) references T_CODE
alter table TP_ADDR add constraint FK_P_ADDR_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TP_ADDR add constraint FK_P_ADDR_PERSON foreign key (PERSON_ID) references T_PERSON
alter table TP_ADDR add constraint FK_P_ADDR_COUNTRY foreign key (COUNTRY_ID) references T_CODE
alter table TP_ADDR add constraint FK_P_ADDR_PROVINCE foreign key (PROVINCE_ID) references T_CODE
alter table TP_APPEND add constraint FK_P_APPEND_TYPE_CODE foreign key (APPEND_TYPE) references T_CODE
alter table TP_APPEND add constraint FK_P_APPEND_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TP_APPEND add constraint FK_P_APPEND_PERSON foreign key (PERSON_ID) references T_PERSON
alter table TP_EDU add constraint FK_P_EDU_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TP_EDU add constraint FK_P_EDU_PERSON foreign key (PERSON_ID) references T_PERSON
alter table TP_EDU add constraint FK_P_EDU_SPECIALITY_CODE foreign key (EDU_SPECIALITY) references T_CODE
alter table TP_EDU add constraint FK_P_EDU_LEVEL_CODE foreign key (EDU_LEVEL) references T_CODE
alter table TP_EMAIL add constraint FK_P_EMAIL_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TP_EMAIL add constraint FK_P_EMAIL_PERSON foreign key (PERSON_ID) references T_PERSON
alter table TP_LANGUAGE add constraint FK_P_LANGUAGE_CODE foreign key (LANGUAGE_CODE) references T_CODE
alter table TP_LANGUAGE add constraint FK_P_LEVEL_CODE foreign key (USE_LEVEL) references T_CODE
alter table TP_LANGUAGE add constraint FK_P_LANGUAGE_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TP_LANGUAGE add constraint FK_P_LANGUAGE_PERSON foreign key (PERSON_ID) references T_PERSON
alter table TP_SKILL add constraint FK_P_SKILL_LEVEL_CODE foreign key (USE_LEVEL) references T_CODE
alter table TP_SKILL add constraint FK_P_SKILL_CODE foreign key (SKILL) references T_CODE
alter table TP_SKILL add constraint FK_P_SKILL_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table TP_SKILL add constraint FK_P_SKILL_PERSON foreign key (PERSON_ID) references T_PERSON
alter table T_CODE add constraint FK_CODE_TYPE foreign key (CODE_TYPE) references T_CODE
alter table T_COMPANY add constraint FK_COMPANY_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table T_COMPANY add constraint FK_COMPANY_PARENT foreign key (PARENT_ID) references T_COMPANY
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN2 foreign key (JOB_INTENT_FUN2) references T_CODE
alter table T_PERSON add constraint FK_PERSON_WORK_YEARS foreign key (WORK_YEARS) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN5 foreign key (JOB_INTENT_FUN5) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR2 foreign key (JOB_INTENT_ADDR2) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR4 foreign key (JOB_INTENT_ADDR4) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY5 foreign key (JOB_INTENT_INDUSTRY5) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY1 foreign key (JOB_INTENT_INDUSTRY1) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR5 foreign key (JOB_INTENT_ADDR5) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY4 foreign key (JOB_INTENT_INDUSTRY4) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR1 foreign key (JOB_INTENT_ADDR1) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN3 foreign key (JOB_INTENT_FUN3) references T_CODE
alter table T_PERSON add constraint FK_PERSON_ID_TYPE foreign key (ID_TYPE) references T_CODE
alter table T_PERSON add constraint FK_PERSON_ADDR_DOMICILE foreign key (ADDR_DOMICILE) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY3 foreign key (JOB_INTENT_INDUSTRY3) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN4 foreign key (JOB_INTENT_FUN4) references T_CODE
alter table T_PERSON add constraint FK_PERSON_ADDR_LIVE foreign key (ADDR_LIVE) references T_CODE
alter table T_PERSON add constraint FK_PERSON_FROM_WHERE foreign key (FROM_WHERE) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_FUN1 foreign key (JOB_INTENT_FUN1) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_ADDR3 foreign key (JOB_INTENT_ADDR3) references T_CODE
alter table T_PERSON add constraint FK_PERSON_SARALY_YEAR foreign key (SARALY_YEAR) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_SALARY foreign key (JOB_INTENT_SALARY) references T_CODE
alter table T_PERSON add constraint FK_PERSON_JOB_INTENT_INDUSTRY2 foreign key (JOB_INTENT_INDUSTRY2) references T_CODE
create sequence SEQ_CODE
create sequence SEQ_COMPANY
create sequence SEQ_C_APPEND
create sequence SEQ_C_CONTACT_HEADER
create sequence SEQ_C_CONTACT_INFO
create sequence SEQ_C_EMAIL
create sequence SEQ_PERSON
create sequence SEQ_P_ADDRESS
create sequence SEQ_P_APPEND
create sequence SEQ_P_EDU
create sequence SEQ_P_EMAIL
create sequence SEQ_P_LANGUAGE
create sequence SEQ_P_SKILL
