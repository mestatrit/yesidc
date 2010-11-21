insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1, null, 'address', '', '', 'address', '地址', '', '', 0, 0,sysdate,sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2, null, 'from.where', 'from where', '数据来源', null, 0, 1, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (3, null, 'work.year', 'work year', '工作 年限', null, 0, 2, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (4, null, 'salary.yearly', 'salary yearly', '年薪', null, 0, 3, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (5, null, 'salary.monthly', 'salary monthly', '月薪', null, 0, 4, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (6, null, 'industry', 'industry', '行业类别', null, 0, 5, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (7, null, 'function', 'function', '职能类别', null, 0, 6, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (8, null, 'company.nature', 'company nature', '公司性质', null, 0, 7, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (9, null, 'speciality', 'speciality', '专业', null, 0, 8, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (10, null, 'edu.level', 'edu level', '教育水平', null, 0, 9, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11, null, 'language', 'language', '语言', null, 0, 10, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12, null, 'level', 'level', '能力水平', null, 0, 11, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13, null, 'skills', 'skills', '技能', null, 0, 12, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14, null, 'appendix', 'appendix', '附加信息主题', null, 0, 13, sysdate, sysdate, 'YTB', 'YTB');

insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15, null, 'company.scale', 'company scale', '公司规模', null, 0, 1, sysdate, sysdate, 'YTB', 'YTB');


--address
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (101, 1, 'yazhou', '', 'Asia', 'Asia', '亚洲', '亞洲', '', 1, 1,sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (102, 1, 'feizhou', '', 'Afric', 'Afric', '非洲', '非洲', '', 1, 2,sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (103, 1, 'beimeizhou', '', 'North America', 'North America', '北美洲', '北美洲', '', 1, 3,sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (104, 1, 'nanmeizhou', '', 'South America', 'South America', '南美洲', '南美洲', '', 1, 4,sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (105, 1, 'ouzhou', '', 'Europe', 'Europe', '欧洲', '歐洲', '', 1, 5,sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (106, 1, 'dayangzhou', '', 'Oceania', 'Oceania', '大洋洲', '大洋洲', '', 1, 6,sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (107, 1, 'nanjizhou', '', 'Antarctica', 'Antarctica', '南极洲', '南極洲', '', 1, 7,sysdate,sysdate, 'YTB', 'YTB');


--From where
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1000, 2, '51job', 'http://www.51job.com', '前程无忧', null, 0, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1001, 2, 'alibaba', 'http://www.alibaba.com', '阿里巴巴', null, 1, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1002, 2, 'baixing', 'http://www.baixing.com', '百姓网', null, 1, 3, sysdate, sysdate, 'YTB', 'YTB');

--company scale
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1501, 15, '1', '<50 people', '小于50人', null, 0, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1502, 15, '2', '50-150 people', '50-150人', null, 0, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1503, 15, '3', '150-500 people', '150-500人', null, 0, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (1504, 15, '4', '>500 people', '500人以上', null, 0, 4, sysdate, sysdate, 'YTB', 'YTB');

--company nature
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2001, 8, '01', 'Foreign Comp.(Eur./N.Amer.)', '外资(欧美)', null, 0, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2002, 8, '02', 'Foreign Comp.(Others)', '外资(非欧美)', null, 0, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2003, 8, '03', 'Joint Ventures(Eur./N.Amer.)', '合资(欧美)', null, 0, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2004, 8, '04', 'Joint Venture(Others)', '合资(非欧美)', null, 0, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2005, 8, '05', 'State-Owned/Public Comp.', '国企/上市公司', null, 0, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2006, 8, '06', 'Private Comp.', '民营/私营公司', null, 0, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2007, 8, '07', 'Rep. Office of Foreign Comp.', '外企代表处', null, 0, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, ENAME, CNAME, CNAME1, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (2008, 8, '08', 'Others', '其它性质', null, 0, 8, sysdate, sysdate, 'YTB', 'YTB');
