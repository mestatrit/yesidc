alter sequence SEQ_CODE
minvalue 100000
maxvalue 999999999999999999999999999
increment by 1
cache 20;

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1, null, 'address', 'address', '��ַ', null, 0, 0, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2, null, 'from.where', 'from where', '������Դ', null, 0, 1, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (3, null, 'work.year', 'work year', '���� ����', null, 0, 2, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (4, null, 'salary.yearly', 'salary yearly', '��н', null, 0, 3, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (5, null, 'salary monthly', 'salary.monthly', '��н', null, 0, 4, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (6, null, 'industry', 'industry', '��ҵ���', null, 0, 5, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (7, null, 'function', 'function', 'ְ�����', null, 0, 6, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (8, null, 'nature', 'nature', '��˾����', null, 0, 7, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (9, null, 'speciality', 'speciality', 'רҵ', null, 0, 8, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (10, null, 'edu.level', 'edu level', '����ˮƽ', null, 0, 9, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11, null, 'language', 'language', '����', null, 0, 10, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12, null, 'level', 'level', '����ˮƽ', null, 0, 11, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13, null, 'skills', 'skills', '����', null, 0, 12, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14, null, 'appendix', 'appendix', '������Ϣ����', null, 0, 13, sysdate, sysdate, 'YTB', 'YTB');

--address
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (101, 1, 'yazhou', '', 'Asia', 'Asia', '����', '����', null, 1, 1, sysdate,sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (102, 1, 'feizhou', '', 'Afric', 'Afric', '����', '����', null, 1, 2, sysdate,sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (103, 1, 'beimeizhou', '', 'North America', 'North America', '������', '������', null, 1, 3, sysdate,sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (104, 1, 'nanmeizhou', '', 'South America', 'South America', '������', '������', null, 1, 4, sysdate,sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (105, 1, 'ouzhou', '', 'Europe', 'Europe', 'ŷ��', '�W��', null, 1, 5, sysdate,sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (106, 1, 'dayangzhou', '', 'Oceania', 'Oceania', '������', '������', null, 1, 6, sysdate,sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (107, 1, 'nanjizhou', '', 'Antarctica', 'Antarctica', '�ϼ���', '�ϘO��', null, 1, 7, sysdate,sysdate, 'YTB', 'YTB');


--From where
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1000, 2, '51job', 'http://www.51job.com', 'ǰ������', null, 0, 1, sysdate, sysdate, 'YTB', 'YTB');
--From where
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1001, 2, 'alibaba', 'http://www.alibaba.com', '����Ͱ�', null, 0, 2, sysdate, sysdate, 'YTB', 'YTB');
