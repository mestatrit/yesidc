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
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (16, null, 'appellation', '', '', 'appellation', '称呼', '', '', 0, 14, sysdate, sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (17, null, 'address.filter', '', '', 'address.filter', '地址过滤集', '', '', 0, 15, sysdate,sysdate, 'YTB', 'YTB');

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

--appellation
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (201, 16, 'Mr.', 'backend', '', 'Mr.', '先生', '1', '', 1, 1, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (202, 16, 'Miss', 'backend', '', 'Miss', '小姐', '2', '', 1, 2, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (203, 16, 'Lady', 'backend', '', 'Lady', '女士', '2', '', 1, 3, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (204, 16, 'Master', 'backend', '', 'Master', '师傅', '1', '', 1, 4, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (205, 16, 'Teacher', 'backend', '', 'Teacher', '老师', '1', '', 1, 5, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (206, 16, 'director', 'backend', '', 'director', '总监', '1', '', 1, 6, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (207, 16, 'general manager', 'backend', '', 'general manager', '总经理', '1', '', 1, 7, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (208, 16, 'vice-general manager', 'backend', '', 'vice-general manager', '副总经理', '1', '', 1, 8, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (209, 16, 'vice manager', 'backend', '', 'vice manager', '副经理', '1', '', 1, 9, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (210, 16, 'vice president', 'backend', '', 'vice president', '副总', '1', '', 1, 10, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (211, 16, 'manager', 'backend', '', 'manager', '经理', '1', '', 1, 11, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (212, 16, 'Proffessor', 'backend', '', 'Proffessor', '教授', '1', '', 1, 12, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (213, 16, 'Doctor', 'backend', '', 'Doctor', '博士', '1', '', 1, 13, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (214, 16, 'Secretary', 'backend', '', 'Secretary', '秘书', '2', '', 1, 14, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (215, 16, 'Driver', 'backend', '', 'Driver', '司机', '1', '', 1, 15, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (216, 16, 'Mrs', 'backend', '', 'Mrs', '太太', '2', '', 1, 16, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (217, 16, 'Aunt', 'backend', '', 'Aunt', '阿姨', '2', '', 1, 17, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (218, 16, 'Assistant', 'backend', '', 'Assistant', '助理', '2', '', 1, 18, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (219, 16, 'Mr.1', 'Frontal', '', 'Mr.1', 'Mr.', '1', '', 1, 21, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (220, 16, 'Mr1', 'Frontal', '', 'Mr1', 'Mr', '1', '', 1, 22, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (221, 16, 'Mrs.1', 'Frontal', '', 'Mrs.1', 'Mrs.', '2', '', 1, 19, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (222, 16, 'Mrs1', 'Frontal', '', 'Mrs1', 'Mrs', '2', '', 1, 20, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (223, 16, 'Miss1', 'Frontal', '', 'Miss1', 'Miss', '2', '', 1, 23, sysdate,sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (224, 16, 'Xiao', 'Frontal', '', 'Xiao', '小', '1', '', 1, 48, sysdate, sysdate, 'YTB', 'YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (249, 16, 'president', 'backend', '', 'president', '总', '1', '', 1, 49, sysdate,sysdate, 'YTB', 'YTB');

--address filters
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (338, 17, 'Area', '', '', 'Area', '区', '', '', 1, 88, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (337, 17, 'Forest zone', '', '', 'Forest zone', '林区', '', '', 1, 87, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (336, 17, 'District', '', '', 'District', '地区', '', '', 1, 86, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (335, 17, 'Allience', '', '', 'Allience', '盟', '', '', 1, 85, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (334, 17, 'Banner', '', '', 'Banner', '旗', '', '', 1, 84, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (333, 17, 'County', '', '', 'County', '县', '', '', 1, 83, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (332, 17, 'City', '', '', 'City', '市', '', '', 1, 82, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (331, 17, 'Province', '', '', 'Province', '省', '', '', 1, 81, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (330, 17, 'Administrative board', '', '', 'Administrative board', '行委', '', '', 1, 80, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (329, 17, 'Autonomous Banner', '', '', 'Autonomous Banner', '自治旗', '', '', 1, 79, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (328, 17, 'Autonomous County', '', '', 'Autonomous County', '自治县', '', '', 1, 78, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (327, 17, 'Autonomous Prefecture', '', '', 'Autonomous Prefecture', '自治州', '', '', 1, 77, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (326, 17, 'hz area', '', '', 'hz area', '回族区', '', '', 1, 76, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (325, 17, 'qz Autonomous County', '', '', 'qz Autonomous County', '羌族自治县', '', '', 1, 75, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (324, 17, 'tuz Autonomous County', '', '', 'tuz Autonomous County', '土族自治县', '', '', 1, 74, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (323, 17, 'shez Autonomous County', '', '', 'shez Autonomous County', '畲族自治县', '', '', 1, 73, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (291, 17, 'lh Banner', '', '', 'lh Banner', '联合旗', '', '', 1, 41, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (315, 17, 'zangz Autonomous County', '', '', 'zz Autonomous County', '藏族自治县', '', '', 1, 65, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (311, 17, 'zz Autonomous Prefecture', '', '', 'zz Autonomous Prefecture', '藏族自治州', '', '', 1, 61, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (304, 17, 'dwez area', '', '', 'dwez area', '达斡尔族区', '', '', 1, 54, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (282, 17, 'dz Autonomous Prefecture', '', '', 'dz Autonomous Prefecture', '傣族自治州', '', '', 1, 32, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (310, 17, 'dz Autonomous County', '', '', 'dz Autonomous County', '侗族自治县', '', '', 1, 60, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (319, 17, 'gez Autonomous County', '', '', 'gez Autonomous County', '各族自治县', '', '', 1, 69, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (295, 17, 'hz Autonomous County', '', '', 'hz Autonomous County', '回族自治县', '', '', 1, 45, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (321, 17, 'huiz Autonomous Prefecture', '', '', 'huiz Autonomous Prefecture', '回族自治州', '', '', 1, 71, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (320, 17, 'liz Autonomous County', '', '', 'liz Autonomous County', '黎族自治县', '', '', 1, 70, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (309, 17, 'mz Autonomous County', '', '', 'mz Autonomous County', '满族自治县', '', '', 1, 59, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (275, 17, 'mg Autonomous County', '', '', 'mg Autonomous County', '蒙古自治县', '', '', 1, 25, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (293, 17, 'mg Autonomous Prefecture', '', '', 'mg Autonomous Prefecture', '蒙古自治州', '', '', 1, 43, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (317, 17, 'maoz Autonomous County', '', '', 'maoz Autonomous County', '苗族自治县', '', '', 1, 67, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (316, 17, 'sshuiz Autonomous County', '', '', 'sz Autonomous County', '水族自治县', '', '', 1, 66, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (292, 17, 'xb Autonomous County', '', '', 'xb Autonomous County', '锡伯自治县', '', '', 1, 42, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (318, 17, 'yaoz Autonomous County', '', '', 'yaoz Autonomous County', '瑶族自治县', '', '', 1, 68, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (312, 17, 'yz Autonomous County', '', '', 'yz Autonomous County', '彝族自治县', '', '', 1, 62, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (322, 17, 'yiz Autonomous Prefecture', '', '', 'yiz Autonomous Prefecture', '彝族自治州', '', '', 1, 72, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (314, 17, 'waz Autonomous County', '', '', 'wz Autonomous County', '佤族自治县', '', '', 1, 64, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (308, 17, 'cxz Autonomous County', '', '', 'cxz Autonomous County', '朝鲜族自治县', '', '', 1, 58, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (299, 17, 'cxz Autonomous Prefecture', '', '', 'cxz Autonomous Prefecture', '朝鲜族自治州', '', '', 1, 49, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (303, 17, 'hnz Autonomous County', '', '', 'hnz Autonomous County', '哈尼族自治县', '', '', 1, 53, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (297, 17, 'hsk Autonomous Prefecture', '', '', 'hsk Autonomous Prefecture', '哈萨克自治州', '', '', 1, 47, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (306, 17, 'lhz Autonomous County', '', '', 'lhz Autonomous County', '拉祜族自治县', '', '', 1, 56, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (301, 17, 'llz Autonomous County', '', '', 'llz Autonomous County', '傈僳族自治县', '', '', 1, 51, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (307, 17, 'mnz Autonomous County', '', '', 'mnz Autonomous County', '毛南族自治县', '', '', 1, 57, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (260, 17, 'mgz Autonomous County', '', '', 'mgz Autonomous County', '蒙古族自治县', '', '', 1, 10, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (296, 17, 'nxz Autonomous County', '', '', 'nxz Autonomous County', '纳西族自治县', '', '', 1, 46, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (300, 17, 'slz Autonomous County', '', '', 'slz Autonomous County', '撒拉族自治县', '', '', 1, 50, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (259, 17, 'tjk Autonomous County', '', '', 'tjk Autonomous County', '塔吉克自治县', '', '', 1, 9, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (298, 17, 'tjz Autonomous County', '', '', 'tjz Autonomous County', '土家族自治县', '', '', 1, 48, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (302, 17, 'ygz Autonomous County', '', '', 'ygz Autonomous County', '裕固族自治县', '', '', 1, 52, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (305, 17, 'mlz Autonomous County', '', '', 'mlz Autonomous County', '仫佬族自治县', '', '', 1, 55, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (294, 17, 'zz/qz Autonomous Prefecture', '', '', 'zz/qz Autonomous Prefecture', '藏族羌族自治州', '', '', 1, 44, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (256, 17, 'dwez Autonomous Banner', '', '', 'dwez Autonomous Banner', '达斡尔族自治旗', '', '', 1, 6, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (288, 17, 'dz/yz Autonomous County', '', '', 'dz/yz Autonomous County', '傣族彝族自治县', '', '', 1, 38, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (289, 17, 'dz/wz Autonomous County', '', '', 'dz/wz Autonomous County', '傣族佤族自治县', '', '', 1, 39, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (257, 17, 'islands and sea', '', '', 'islands and sea', '的岛礁及其海域', '', '', 1, 7, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (279, 17, 'hskz Autonomous County', '', '', 'hskz Autonomous County', '哈萨克族自治县', '', '', 1, 29, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (290, 17, 'hz/tz Autonomous County', '', '', 'hz/tz Autonomous County', '回族土族自治县', '', '', 1, 40, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (280, 17, 'hz/yz Autonomous County', '', '', 'hz/yz Autonomous County', '回族彝族自治县', '', '', 1, 30, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (262, 17, 'kekz Autonomous Prefecture', '', '', 'kekz Autonomous Prefecture', '柯尔克孜自治州', '', '', 1, 12, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (285, 17, 'lz/mz Autonomous County', '', '', 'lz/mz Autonomous County', '黎族苗族自治县', '', '', 1, 35, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (287, 17, 'mz/dz Autonomous County', '', '', 'mz/dz Autonomous County', '苗族侗族自治县', '', '', 1, 37, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (270, 17, 'mz/dz Autonomous Prefecture', '', '', 'mz/dz Autonomous Prefecture', '苗族侗族自治州', '', '', 1, 20, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (281, 17, 'yz/dz Autonomous County', '', '', 'yz/dz Autonomous County', '彝族傣族自治县', '', '', 1, 31, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (284, 17, 'yz/hz Autonomous County', '', '', 'yz/hz Autonomous County', '彝族回族自治县', '', '', 1, 34, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (283, 17, 'zz/mz Autonomous Prefecture', '', '', 'zz/mz Autonomous Prefecture', '壮族苗族自治州', '', '', 1, 33, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (286, 17, 'zz/yz Autonomous County', '', '', 'zz/yz Autonomous County', '壮族瑶族自治县', '', '', 1, 36, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (273, 17, 'bz/pmz Autonomous County', '', '', 'bz/pmz Autonomous County', '白族普米族自治县', '', '', 1, 23, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (265, 17, 'byz/mz Autonomous County', '', '', 'byz/mz Autonomous County', '布依族苗族自治县', '', '', 1, 15, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (261, 17, 'byz/mz Autonomous Prefecture', '', '', 'byz/mz Autonomous Prefecture', '布依族苗族自治州', '', '', 1, 11, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (278, 17, 'dz/jpz Autonomous Prefecture', '', '', 'dz/jpz Autonomous Prefecture', '傣族景颇族自治州', '', '', 1, 28, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (277, 17, 'dlz/nz Autonomous County', '', '', 'dlz/nz Autonomous County', '独龙族怒族自治县', '', '', 1, 27, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (271, 17, 'hnz/yz Autonomous County', '', '', 'hnz/yz Autonomous County', '哈尼族彝族自治县', '', '', 1, 21, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (274, 17, 'hnz/yz Autonomous Prefecture', '', '', 'hnz/yz Autonomous Prefecture', '哈尼族彝族自治州', '', '', 1, 24, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (269, 17, 'mz/mgz Autonomous County', '', '', 'mz/mgz Autonomous County', '满族蒙古族自治县', '', '', 1, 19, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (276, 17, 'mgz/zz Autonomous Prefecture', '', '', 'mgz/zz Autonomous Prefecture', '蒙古族藏族自治州', '', '', 1, 26, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (264, 17, 'mz/byz Autonomous County', '', '', 'mz/byz Autonomous County', '苗族布依族自治县', '', '', 1, 14, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (272, 17, 'mz/djz Autonomous County', '', '', 'mz/djz Autonomous County', '苗族土家族自治县', '', '', 1, 22, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (266, 17, 'tjz/mz Autonomous County', '', '', 'tjz/mz Autonomous County', '土家族苗族自治县', '', '', 1, 16, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (267, 17, 'tjz/mz Autonomous Prefecture', '', '', 'tjz/mz Autonomous Prefecture', '土家族苗族自治州', '', '', 1, 17, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (268, 17, 'glz/mz Autonomous County', '', '', 'glz/mz Autonomous County', '仡佬族苗族自治县', '', '', 1, 18, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (263, 17, 'mz/yz/dz Autonomous County', '', '', 'mz/yz/dz Autonomous County', '苗族瑶族傣族自治县', '', '', 1, 13, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (258, 17, 'yz/hz/mz Autonomous County', '', '', 'yz/hz/mz Autonomous County', '彝族回族苗族自治县', '', '', 1, 8, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (255, 17, 'dz/lhz/wz Autonomous County', '', '', 'dz/lhz/wz Autonomous County', '傣族拉祜族佤族自治县', '', '', 1, 5, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (254, 17, 'hnz/yz/dz Autonomous County', '', '', 'hnz/yz/dz Autonomous County', '哈尼族彝族傣族自治县', '', '', 1, 4, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (253, 17, 'yz/hnz/lhz Autonomous County', '', '', 'yz/hnz/lhz Autonomous County', '彝族哈尼族拉祜族自治县', '', '', 1, 3, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (251, 17, 'baz/dxz/slz Autonomous County', '', '', 'baz/dxz/slz Autonomous County', '保安族东乡族撒拉族自治县', '', '', 1, 1, sysdate,sysdate,'YTB','YTB');
insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (252, 17, 'lhz/wz/blz/dz Autonomous County', '', '', 'lhz/wz/blz/dz Autonomous County', '拉祜族佤族布朗族傣族自治县', '', '', 1, 2, sysdate,sysdate,'YTB','YTB');

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
