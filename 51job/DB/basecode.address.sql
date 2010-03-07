prompt PL/SQL Developer import file
prompt Created on 2009年9月27日 by Administrator
set feedback off
set define off
prompt Loading T_CODE...

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (10048, 101, '156', 'ISO 3166-2:CN', 'CN', 'China', '中国', '大陸', '「GB/T 2659-2000」的「CN」適用於整個中華人民共和國轄區（包括中國大陸、香港、澳門、以及尚未統治的聲稱領土台灣）。而「ISO 3166-1」和「CNS 12842」的「CN」則僅適用於中國大陸，不含港澳地區和台灣。', 2, 48,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11001, 10048, '110000', '', '', 'BeiJingShi', '北京市', '', '', 3, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11035, 11001, '110100', '', '', 'BeiJingShiXiaQu', '北京市辖区', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11380, 11035, '110101', '', '', 'DongChengQu', '东城区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11381, 11035, '110102', '', '', 'XiChengQu', '西城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11382, 11035, '110103', '', '', 'ChongWenQu', '崇文区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11383, 11035, '110104', '', '', 'XuanWuQu', '宣武区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11384, 11035, '110105', '', '', 'ChaoYangQu', '朝阳区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11385, 11035, '110106', '', '', 'FengTaiQu', '丰台区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11386, 11035, '110107', '', '', 'ShiJingShanQu', '石景山区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11387, 11035, '110108', '', '', 'HaiDianQu', '海淀区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11388, 11035, '110109', '', '', 'MenTouGouQu', '门头沟区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11389, 11035, '110111', '', '', 'FangShanQu', '房山区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11390, 11035, '110112', '', '', 'TongZhouQu', '通州区', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11391, 11035, '110113', '', '', 'ShunYiQu', '顺义区', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11392, 11035, '110114', '', '', 'ChangPingQu', '昌平区', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11393, 11035, '110115', '', '', 'DaXingQu', '大兴区', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11394, 11035, '110116', '', '', 'HuaiRouQu', '怀柔区', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11395, 11035, '110117', '', '', 'PingGuQu', '平谷区', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11036, 11001, '110200', '', '', 'BeiJingXian', '北京县', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11396, 11036, '110228', '', '', 'MiYunXian', '密云县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11397, 11036, '110229', '', '', 'YanQingXian', '延庆县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11002, 10048, '120000', '', '', 'TianJinShi', '天津市', '', '', 3, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11037, 11002, '120100', '', '', 'TianJinShiXiaQu', '天津市辖区', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11398, 11037, '120101', '', '', 'HePingQu', '和平区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11399, 11037, '120102', '', '', 'HeDongQu', '河东区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11400, 11037, '120103', '', '', 'HeXiQu', '河西区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11401, 11037, '120104', '', '', 'NanKaiQu', '南开区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11402, 11037, '120105', '', '', 'HeBeiQu', '河北区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11403, 11037, '120106', '', '', 'HongQiaoQu', '红桥区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11404, 11037, '120107', '', '', 'TangGuQu', '塘沽区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11405, 11037, '120108', '', '', 'HanGuQu', '汉沽区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11406, 11037, '120109', '', '', 'DaGangQu', '大港区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11407, 11037, '120110', '', '', 'DongLiQu', '东丽区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11408, 11037, '120111', '', '', 'XiQingQu', '西青区', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11409, 11037, '120112', '', '', 'JinNanQu', '津南区', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11410, 11037, '120113', '', '', 'BeiChenQu', '北辰区', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11411, 11037, '120114', '', '', 'WuQingQu', '武清区', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11412, 11037, '120115', '', '', 'Bao坻Qu', '宝坻区', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11038, 11002, '120200', '', '', 'TianJinXian', '天津县', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11413, 11038, '120221', '', '', 'NingHeXian', '宁河县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11414, 11038, '120223', '', '', 'JingHaiXian', '静海县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11415, 11038, '120225', '', '', 'Ji　Xian', '蓟　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11003, 10048, '130000', '', '', 'HeBei', '河北', '', '', 3, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11039, 11003, '130100', '', '', 'ShiJiaZhuangShi', '石家庄市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11416, 11039, '130101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11417, 11039, '130102', '', '', 'ChangAnQu', '长安区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11418, 11039, '130103', '', '', 'QiaoDongQu', '桥东区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11419, 11039, '130104', '', '', 'QiaoXiQu', '桥西区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11420, 11039, '130105', '', '', 'XinHuaQu', '新华区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11421, 11039, '130107', '', '', 'Jing陉KuangQu', '井陉矿区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11422, 11039, '130108', '', '', 'YuHuaQu', '裕华区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11423, 11039, '130121', '', '', 'Jing陉Xian', '井陉县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11424, 11039, '130123', '', '', 'ZhengDingXian', '正定县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11425, 11039, '130124', '', '', '栾ChengXian', '栾城县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11426, 11039, '130125', '', '', 'XingTangXian', '行唐县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11427, 11039, '130126', '', '', 'LingShouXian', '灵寿县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11428, 11039, '130127', '', '', 'GaoYiXian', '高邑县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11429, 11039, '130128', '', '', 'ShenZeXian', '深泽县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11430, 11039, '130129', '', '', 'ZanHuangXian', '赞皇县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11431, 11039, '130130', '', '', 'WuJiXian', '无极县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11432, 11039, '130131', '', '', 'PingShanXian', '平山县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11433, 11039, '130132', '', '', 'YuanShiXian', '元氏县', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11434, 11039, '130133', '', '', 'Zhao　Xian', '赵　县', '', '', 5, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11435, 11039, '130181', '', '', 'XinJiShi', '辛集市', '', '', 5, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11436, 11039, '130182', '', '', '藁ChengShi', '藁城市', '', '', 5, 21,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11437, 11039, '130183', '', '', 'JinZhouShi', '晋州市', '', '', 5, 22,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11438, 11039, '130184', '', '', 'XinLeShi', '新乐市', '', '', 5, 23,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11439, 11039, '130185', '', '', 'LuQuanShi', '鹿泉市', '', '', 5, 24,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11040, 11003, '130200', '', '', 'TangShanShi', '唐山市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11440, 11040, '130201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11441, 11040, '130202', '', '', 'LuNanQu', '路南区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11442, 11040, '130203', '', '', 'LuBeiQu', '路北区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11443, 11040, '130204', '', '', 'GuYeQu', '古冶区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11444, 11040, '130205', '', '', 'KaiPingQu', '开平区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11445, 11040, '130207', '', '', 'FengNanQu', '丰南区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11446, 11040, '130208', '', '', 'FengRunQu', '丰润区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11447, 11040, '130223', '', '', 'Luan　Xian', '滦　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11448, 11040, '130224', '', '', 'LuanNanXian', '滦南县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11449, 11040, '130225', '', '', 'LeTingXian', '乐亭县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11450, 11040, '130227', '', '', 'QianXiXian', '迁西县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11451, 11040, '130229', '', '', 'YuTianXian', '玉田县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11452, 11040, '130230', '', '', 'TangHaiXian', '唐海县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11453, 11040, '130281', '', '', 'ZunHuaShi', '遵化市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11454, 11040, '130283', '', '', 'QianAnShi', '迁安市', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11041, 11003, '130300', '', '', 'QinHuangDaoShi', '秦皇岛市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11455, 11041, '130301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11456, 11041, '130302', '', '', 'HaiGangQu', '海港区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11457, 11041, '130303', '', '', 'ShanHaiGuanQu', '山海关区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11458, 11041, '130304', '', '', 'BeiDaiHeQu', '北戴河区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11459, 11041, '130321', '', '', 'QingLongManZuZiZhiXian', '青龙满族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11460, 11041, '130322', '', '', 'ChangLiXian', '昌黎县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11461, 11041, '130323', '', '', 'FuNingXian', '抚宁县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11462, 11041, '130324', '', '', 'LuLongXian', '卢龙县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11042, 11003, '130400', '', '', 'HanDanShi', '邯郸市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11463, 11042, '130401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11464, 11042, '130402', '', '', 'HanShanQu', '邯山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11465, 11042, '130403', '', '', 'CongTaiQu', '丛台区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11466, 11042, '130404', '', '', 'FuXingQu', '复兴区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11467, 11042, '130406', '', '', 'FengFengKuangQu', '峰峰矿区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11468, 11042, '130421', '', '', 'HanDanXian', '邯郸县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11469, 11042, '130423', '', '', 'LinZhangXian', '临漳县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11470, 11042, '130424', '', '', 'ChengAnXian', '成安县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11471, 11042, '130425', '', '', 'DaMingXian', '大名县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11472, 11042, '130426', '', '', 'She　Xian', '涉　县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11473, 11042, '130427', '', '', 'Ci　Xian', '磁　县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11474, 11042, '130428', '', '', 'FeiXiangXian', '肥乡县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11475, 11042, '130429', '', '', 'YongNianXian', '永年县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11476, 11042, '130430', '', '', 'Qiu　Xian', '邱　县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11477, 11042, '130431', '', '', 'JiZeXian', '鸡泽县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11478, 11042, '130432', '', '', 'GuangPingXian', '广平县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11479, 11042, '130433', '', '', 'GuanTaoXian', '馆陶县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11480, 11042, '130434', '', '', 'Wei　Xian', '魏　县', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11481, 11042, '130435', '', '', 'QuZhouXian', '曲周县', '', '', 5, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11482, 11042, '130481', '', '', 'WuAnShi', '武安市', '', '', 5, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11043, 11003, '130500', '', '', 'XingTaiShi', '邢台市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11483, 11043, '130501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11484, 11043, '130502', '', '', 'QiaoDongQu', '桥东区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11485, 11043, '130503', '', '', 'QiaoXiQu', '桥西区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11486, 11043, '130521', '', '', 'XingTaiXian', '邢台县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11487, 11043, '130522', '', '', 'LinChengXian', '临城县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11488, 11043, '130523', '', '', 'NeiQiuXian', '内丘县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11489, 11043, '130524', '', '', 'BaiXiangXian', '柏乡县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11490, 11043, '130525', '', '', 'LongYaoXian', '隆尧县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11491, 11043, '130526', '', '', 'Ren　Xian', '任　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11492, 11043, '130527', '', '', 'NanHeXian', '南和县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11493, 11043, '130528', '', '', 'NingJinXian', '宁晋县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11494, 11043, '130529', '', '', 'JuLuXian', '巨鹿县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11495, 11043, '130530', '', '', 'XinHeXian', '新河县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11496, 11043, '130531', '', '', 'GuangZongXian', '广宗县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11497, 11043, '130532', '', '', 'PingXiangXian', '平乡县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11498, 11043, '130533', '', '', 'Wei　Xian', '威　县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11499, 11043, '130534', '', '', 'QingHeXian', '清河县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11500, 11043, '130535', '', '', 'LinXiXian', '临西县', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11501, 11043, '130581', '', '', 'NanGongShi', '南宫市', '', '', 5, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11502, 11043, '130582', '', '', 'ShaHeShi', '沙河市', '', '', 5, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11044, 11003, '130600', '', '', 'BaoDingShi', '保定市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11503, 11044, '130601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11504, 11044, '130602', '', '', 'XinShiQu', '新市区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11505, 11044, '130603', '', '', 'BeiShiQu', '北市区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11506, 11044, '130604', '', '', 'NanShiQu', '南市区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11507, 11044, '130621', '', '', 'ManChengXian', '满城县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11508, 11044, '130622', '', '', 'QingYuanXian', '清苑县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11509, 11044, '130623', '', '', '涞ShuiXian', '涞水县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11510, 11044, '130624', '', '', 'FuPingXian', '阜平县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11511, 11044, '130625', '', '', 'XuShuiXian', '徐水县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11512, 11044, '130626', '', '', 'DingXingXian', '定兴县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11513, 11044, '130627', '', '', 'Tang　Xian', '唐　县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11514, 11044, '130628', '', '', 'GaoYangXian', '高阳县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11515, 11044, '130629', '', '', 'RongChengXian', '容城县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11516, 11044, '130630', '', '', '涞YuanXian', '涞源县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11517, 11044, '130631', '', '', 'WangDuXian', '望都县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11518, 11044, '130632', '', '', 'AnXinXian', '安新县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11519, 11044, '130633', '', '', 'Yi　Xian', '易　县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11520, 11044, '130634', '', '', 'QuYangXian', '曲阳县', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11521, 11044, '130635', '', '', '蠡　Xian', '蠡　县', '', '', 5, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11522, 11044, '130636', '', '', 'ShunPingXian', '顺平县', '', '', 5, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11523, 11044, '130637', '', '', 'BoYeXian', '博野县', '', '', 5, 21,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11524, 11044, '130638', '', '', 'Xiong　Xian', '雄　县', '', '', 5, 22,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11525, 11044, '130681', '', '', '涿ZhouShi', '涿州市', '', '', 5, 23,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11526, 11044, '130682', '', '', 'DingZhouShi', '定州市', '', '', 5, 24,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11527, 11044, '130683', '', '', 'AnGuoShi', '安国市', '', '', 5, 25,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11528, 11044, '130684', '', '', 'GaoBeiDianShi', '高碑店市', '', '', 5, 26,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11045, 11003, '130700', '', '', 'ZhangJiaKouShi', '张家口市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11529, 11045, '130701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11530, 11045, '130702', '', '', 'QiaoDongQu', '桥东区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11531, 11045, '130703', '', '', 'QiaoXiQu', '桥西区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11532, 11045, '130705', '', '', 'XuanHuaQu', '宣化区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11533, 11045, '130706', '', '', 'XiaHuaYuanQu', '下花园区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11534, 11045, '130721', '', '', 'XuanHuaXian', '宣化县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11535, 11045, '130722', '', '', 'ZhangBeiXian', '张北县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11536, 11045, '130723', '', '', 'KangBaoXian', '康保县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11537, 11045, '130724', '', '', 'GuYuanXian', '沽源县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11538, 11045, '130725', '', '', 'ShangYiXian', '尚义县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11539, 11045, '130726', '', '', 'Wei　Xian', '蔚　县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11540, 11045, '130727', '', '', 'YangYuanXian', '阳原县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11541, 11045, '130728', '', '', 'HuaiAnXian', '怀安县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11542, 11045, '130729', '', '', 'WanQuanXian', '万全县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11543, 11045, '130730', '', '', 'HuaiLaiXian', '怀来县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11544, 11045, '130731', '', '', '涿LuXian', '涿鹿县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11545, 11045, '130732', '', '', 'ChiChengXian', '赤城县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11546, 11045, '130733', '', '', 'ChongLiXian', '崇礼县', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11046, 11003, '130800', '', '', 'ChengDeShi', '承德市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11547, 11046, '130801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11548, 11046, '130802', '', '', 'ShuangQiaoQu', '双桥区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11549, 11046, '130803', '', '', 'ShuangLuanQu', '双滦区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11550, 11046, '130804', '', '', 'YingShouYingZiKuangQu', '鹰手营子矿区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11551, 11046, '130821', '', '', 'ChengDeXian', '承德县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11552, 11046, '130822', '', '', 'XingLongXian', '兴隆县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11553, 11046, '130823', '', '', 'PingQuanXian', '平泉县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11554, 11046, '130824', '', '', 'LuanPingXian', '滦平县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11555, 11046, '130825', '', '', 'LongHuaXian', '隆化县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11556, 11046, '130826', '', '', 'FengNingManZuZiZhiXian', '丰宁满族自治县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11557, 11046, '130827', '', '', 'KuanChengManZuZiZhiXian', '宽城满族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11558, 11046, '130828', '', '', 'WeiChangManZuMengGuZuZiZhiXian', '围场满族蒙古族自治县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11047, 11003, '130900', '', '', 'CangZhouShi', '沧州市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11559, 11047, '130901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11560, 11047, '130902', '', '', 'XinHuaQu', '新华区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11561, 11047, '130903', '', '', 'YunHeQu', '运河区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11562, 11047, '130921', '', '', 'Cang　Xian', '沧　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11563, 11047, '130922', '', '', 'Qing　Xian', '青　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11564, 11047, '130923', '', '', 'DongGuangXian', '东光县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11565, 11047, '130924', '', '', 'HaiXingXian', '海兴县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11566, 11047, '130925', '', '', 'YanShanXian', '盐山县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11567, 11047, '130926', '', '', 'SuNingXian', '肃宁县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11568, 11047, '130927', '', '', 'NanPiXian', '南皮县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11569, 11047, '130928', '', '', 'WuQiaoXian', '吴桥县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11570, 11047, '130929', '', '', 'Xian　Xian', '献　县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11571, 11047, '130930', '', '', 'MengCunHuiZuZiZhiXian', '孟村回族自治县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11572, 11047, '130981', '', '', 'BoTouShi', '泊头市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11573, 11047, '130982', '', '', 'RenQiuShi', '任丘市', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11574, 11047, '130983', '', '', 'Huang骅Shi', '黄骅市', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11575, 11047, '130984', '', '', 'HeJianShi', '河间市', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11048, 11003, '131000', '', '', 'LangFangShi', '廊坊市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11576, 11048, '131001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11577, 11048, '131002', '', '', 'AnCiQu', '安次区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11578, 11048, '131003', '', '', 'GuangYangQu', '广阳区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11579, 11048, '131022', '', '', 'GuAnXian', '固安县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11580, 11048, '131023', '', '', 'YongQingXian', '永清县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11581, 11048, '131024', '', '', 'XiangHeXian', '香河县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11582, 11048, '131025', '', '', 'DaChengXian', '大城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11583, 11048, '131026', '', '', 'WenAnXian', '文安县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11584, 11048, '131028', '', '', 'DaChangHuiZuZiZhiXian', '大厂回族自治县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11585, 11048, '131081', '', '', 'BaZhouShi', '霸州市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11586, 11048, '131082', '', '', 'SanHeShi', '三河市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11049, 11003, '131100', '', '', 'HengShuiShi', '衡水市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11587, 11049, '131101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11588, 11049, '131102', '', '', 'TaoChengQu', '桃城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11589, 11049, '131121', '', '', 'ZaoQiangXian', '枣强县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11590, 11049, '131122', '', '', 'WuYiXian', '武邑县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11591, 11049, '131123', '', '', 'WuQiangXian', '武强县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11592, 11049, '131124', '', '', 'RaoYangXian', '饶阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11593, 11049, '131125', '', '', 'AnPingXian', '安平县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11594, 11049, '131126', '', '', 'GuChengXian', '故城县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11595, 11049, '131127', '', '', 'Jing　Xian', '景　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11596, 11049, '131128', '', '', 'FuChengXian', '阜城县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11597, 11049, '131181', '', '', 'JiZhouShi', '冀州市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11598, 11049, '131182', '', '', 'ShenZhouShi', '深州市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11004, 10048, '140000', '', '', 'ShanXi', '山西', '', '', 3, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11050, 11004, '140100', '', '', 'TaiYuanShi', '太原市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11599, 11050, '140101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11600, 11050, '140105', '', '', 'XiaoDianQu', '小店区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11601, 11050, '140106', '', '', 'YingZeQu', '迎泽区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11602, 11050, '140107', '', '', 'XingHuaLingQu', '杏花岭区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11603, 11050, '140108', '', '', 'JianCaoPingQu', '尖草坪区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11604, 11050, '140109', '', '', 'WanBaiLinQu', '万柏林区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11605, 11050, '140110', '', '', 'JinYuanQu', '晋源区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11606, 11050, '140121', '', '', 'QingXuXian', '清徐县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11607, 11050, '140122', '', '', 'YangQuXian', '阳曲县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11608, 11050, '140123', '', '', 'LouFanXian', '娄烦县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11609, 11050, '140181', '', '', 'GuJiaoShi', '古交市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11051, 11004, '140200', '', '', 'DaTongShi', '大同市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11610, 11051, '140201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11611, 11051, '140202', '', '', 'Cheng　Qu', '城　区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11612, 11051, '140203', '', '', 'Kuang　Qu', '矿　区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11613, 11051, '140211', '', '', 'NanJiaoQu', '南郊区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11614, 11051, '140212', '', '', 'XinRongQu', '新荣区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11615, 11051, '140221', '', '', 'YangGaoXian', '阳高县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11616, 11051, '140222', '', '', 'TianZhenXian', '天镇县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11617, 11051, '140223', '', '', 'GuangLingXian', '广灵县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11618, 11051, '140224', '', '', 'LingQiuXian', '灵丘县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11619, 11051, '140225', '', '', 'HunYuanXian', '浑源县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11620, 11051, '140226', '', '', 'ZuoYunXian', '左云县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11621, 11051, '140227', '', '', 'DaTongXian', '大同县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11052, 11004, '140300', '', '', 'YangQuanShi', '阳泉市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11622, 11052, '140301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11623, 11052, '140302', '', '', 'Cheng　Qu', '城　区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11624, 11052, '140303', '', '', 'Kuang　Qu', '矿　区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11625, 11052, '140311', '', '', 'Jiao　Qu', '郊　区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11626, 11052, '140321', '', '', 'PingDingXian', '平定县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11627, 11052, '140322', '', '', 'Yu　Xian', '盂　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11053, 11004, '140400', '', '', 'ChangZhiShi', '长治市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11628, 11053, '140401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11629, 11053, '140402', '', '', 'Cheng　Qu', '城　区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11630, 11053, '140411', '', '', 'Jiao　Qu', '郊　区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11631, 11053, '140421', '', '', 'ChangZhiXian', '长治县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11632, 11053, '140423', '', '', 'XiangYuanXian', '襄垣县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11633, 11053, '140424', '', '', 'TunLiuXian', '屯留县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11634, 11053, '140425', '', '', 'PingShunXian', '平顺县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11635, 11053, '140426', '', '', 'LiChengXian', '黎城县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11636, 11053, '140427', '', '', 'HuGuanXian', '壶关县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11637, 11053, '140428', '', '', 'ChangZiXian', '长子县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11638, 11053, '140429', '', '', 'WuXiangXian', '武乡县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11639, 11053, '140430', '', '', 'Qin　Xian', '沁　县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11640, 11053, '140431', '', '', 'QinYuanXian', '沁源县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11641, 11053, '140481', '', '', 'LuChengShi', '潞城市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11054, 11004, '140500', '', '', 'JinChengShi', '晋城市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11642, 11054, '140501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11643, 11054, '140502', '', '', 'Cheng　Qu', '城　区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11644, 11054, '140521', '', '', 'QinShuiXian', '沁水县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11645, 11054, '140522', '', '', 'YangChengXian', '阳城县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11646, 11054, '140524', '', '', 'LingChuanXian', '陵川县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11647, 11054, '140525', '', '', 'ZeZhouXian', '泽州县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11648, 11054, '140581', '', '', 'GaoPingShi', '高平市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11055, 11004, '140600', '', '', 'ShuoZhouShi', '朔州市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11649, 11055, '140601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11650, 11055, '140602', '', '', 'ShuoChengQu', '朔城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11651, 11055, '140603', '', '', 'PingLuQu', '平鲁区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11652, 11055, '140621', '', '', 'ShanYinXian', '山阴县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11653, 11055, '140622', '', '', 'Ying　Xian', '应　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11654, 11055, '140623', '', '', 'YouYuXian', '右玉县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11655, 11055, '140624', '', '', 'HuaiRenXian', '怀仁县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11056, 11004, '140700', '', '', 'JinZhongShi', '晋中市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11656, 11056, '140701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11657, 11056, '140702', '', '', 'YuCiQu', '榆次区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11658, 11056, '140721', '', '', 'YuSheXian', '榆社县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11659, 11056, '140722', '', '', 'ZuoQuanXian', '左权县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11660, 11056, '140723', '', '', 'HeShunXian', '和顺县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11661, 11056, '140724', '', '', 'XiYangXian', '昔阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11662, 11056, '140725', '', '', 'ShouYangXian', '寿阳县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11663, 11056, '140726', '', '', 'TaiGuXian', '太谷县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11664, 11056, '140727', '', '', 'Qi　Xian', '祁　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11665, 11056, '140728', '', '', 'PingYaoXian', '平遥县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11666, 11056, '140729', '', '', 'LingShiXian', '灵石县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11667, 11056, '140781', '', '', 'JieXiuShi', '介休市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11057, 11004, '140800', '', '', 'YunChengShi', '运城市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11668, 11057, '140801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11669, 11057, '140802', '', '', 'YanHuQu', '盐湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11670, 11057, '140821', '', '', 'Lin猗Xian', '临猗县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11671, 11057, '140822', '', '', 'WanRongXian', '万荣县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11672, 11057, '140823', '', '', 'WenXiXian', '闻喜县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11673, 11057, '140824', '', '', '稷ShanXian', '稷山县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11674, 11057, '140825', '', '', 'Xin绛Xian', '新绛县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11675, 11057, '140826', '', '', '绛　Xian', '绛　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11676, 11057, '140827', '', '', 'YuanQuXian', '垣曲县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11677, 11057, '140828', '', '', 'Xia　Xian', '夏　县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11678, 11057, '140829', '', '', 'PingLuXian', '平陆县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11679, 11057, '140830', '', '', '芮ChengXian', '芮城县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11680, 11057, '140881', '', '', 'YongJiShi', '永济市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11681, 11057, '140882', '', '', 'HeJinShi', '河津市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11058, 11004, '140900', '', '', 'XinZhouShi', '忻州市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11682, 11058, '140901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11683, 11058, '140902', '', '', 'XinFuQu', '忻府区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11684, 11058, '140921', '', '', 'DingXiangXian', '定襄县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11685, 11058, '140922', '', '', 'WuTaiXian', '五台县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11686, 11058, '140923', '', '', 'Dai　Xian', '代　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11687, 11058, '140924', '', '', 'FanZhiXian', '繁峙县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11688, 11058, '140925', '', '', 'NingWuXian', '宁武县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11689, 11058, '140926', '', '', 'JingLeXian', '静乐县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11690, 11058, '140927', '', '', 'ShenChiXian', '神池县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11691, 11058, '140928', '', '', 'WuZhaiXian', '五寨县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11692, 11058, '140929', '', '', '岢岚Xian', '岢岚县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11693, 11058, '140930', '', '', 'HeQuXian', '河曲县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11694, 11058, '140931', '', '', 'BaoDeXian', '保德县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11695, 11058, '140932', '', '', 'PianGuanXian', '偏关县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11696, 11058, '140981', '', '', 'YuanPingShi', '原平市', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11059, 11004, '141000', '', '', 'LinFenShi', '临汾市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11697, 11059, '141001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11698, 11059, '141002', '', '', 'YaoDuQu', '尧都区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11699, 11059, '141021', '', '', 'QuWoXian', '曲沃县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11700, 11059, '141022', '', '', 'YiChengXian', '翼城县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11701, 11059, '141023', '', '', 'XiangFenXian', '襄汾县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11702, 11059, '141024', '', '', 'HongDongXian', '洪洞县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11703, 11059, '141025', '', '', 'Gu　Xian', '古　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11704, 11059, '141026', '', '', 'AnZeXian', '安泽县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11705, 11059, '141027', '', '', 'FuShanXian', '浮山县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11706, 11059, '141028', '', '', 'Ji　Xian', '吉　县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11707, 11059, '141029', '', '', 'XiangNingXian', '乡宁县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11708, 11059, '141030', '', '', 'DaNingXian', '大宁县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11709, 11059, '141031', '', '', '隰　Xian', '隰　县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11710, 11059, '141032', '', '', 'YongHeXian', '永和县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11711, 11059, '141033', '', '', 'Pu　Xian', '蒲　县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11712, 11059, '141034', '', '', 'FenXiXian', '汾西县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11713, 11059, '141081', '', '', 'HouMaShi', '侯马市', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11714, 11059, '141082', '', '', 'HuoZhouShi', '霍州市', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11060, 11004, '141100', '', '', 'LvLiangShi', '吕梁市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11715, 11060, '141101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11716, 11060, '141102', '', '', 'LiShiQu', '离石区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11717, 11060, '141121', '', '', 'WenShuiXian', '文水县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11718, 11060, '141122', '', '', 'JiaoChengXian', '交城县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11719, 11060, '141123', '', '', 'Xing　Xian', '兴　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11720, 11060, '141124', '', '', 'Lin　Xian', '临　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11721, 11060, '141125', '', '', 'LiuLinXian', '柳林县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11722, 11060, '141126', '', '', 'ShiLouXian', '石楼县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11723, 11060, '141127', '', '', '岚　Xian', '岚　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11724, 11060, '141128', '', '', 'FangShanXian', '方山县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11725, 11060, '141129', '', '', 'ZhongYangXian', '中阳县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11726, 11060, '141130', '', '', 'JiaoKouXian', '交口县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11727, 11060, '141181', '', '', 'XiaoYiShi', '孝义市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11728, 11060, '141182', '', '', 'FenYangShi', '汾阳市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11005, 10048, '150000', '', '', 'NeiMengGu', '内蒙古', '', '', 3, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11061, 11005, '150100', '', '', 'HuHeHaoTeShi', '呼和浩特市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11729, 11061, '150101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11730, 11061, '150102', '', '', 'XinChengQu', '新城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11731, 11061, '150103', '', '', 'HuiMinQu', '回民区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11732, 11061, '150104', '', '', 'YuQuanQu', '玉泉区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11733, 11061, '150105', '', '', 'SaiHanQu', '赛罕区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11734, 11061, '150121', '', '', 'TuMoTeZuoQi', '土默特左旗', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11735, 11061, '150122', '', '', 'TuoKeTuoXian', '托克托县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11736, 11061, '150123', '', '', 'HeLinGeErXian', '和林格尔县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11737, 11061, '150124', '', '', 'QingShuiHeXian', '清水河县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11738, 11061, '150125', '', '', 'WuChuanXian', '武川县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11062, 11005, '150200', '', '', 'BaoTouShi', '包头市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11739, 11062, '150201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11740, 11062, '150202', '', '', 'DongHeQu', '东河区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11741, 11062, '150203', '', '', 'KunDuLunQu', '昆都仑区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11742, 11062, '150204', '', '', 'QingShanQu', '青山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11743, 11062, '150205', '', '', 'ShiGuaiQu', '石拐区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11744, 11062, '150206', '', '', 'BaiYunKuangQu', '白云矿区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11745, 11062, '150207', '', '', 'JiuYuanQu', '九原区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11746, 11062, '150221', '', '', 'TuMoTeYouQi', '土默特右旗', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11747, 11062, '150222', '', '', 'GuYangXian', '固阳县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11748, 11062, '150223', '', '', 'DaErHanMaoMingAnLianHeQi', '达尔罕茂明安联合旗', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11063, 11005, '150300', '', '', 'WuHaiShi', '乌海市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11749, 11063, '150301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11750, 11063, '150302', '', '', 'HaiBoWanQu', '海勃湾区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11751, 11063, '150303', '', '', 'HaiNanQu', '海南区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11752, 11063, '150304', '', '', 'WuDaQu', '乌达区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11064, 11005, '150400', '', '', 'ChiFengShi', '赤峰市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11753, 11064, '150401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11754, 11064, '150402', '', '', 'HongShanQu', '红山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11755, 11064, '150403', '', '', 'YuanBaoShanQu', '元宝山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11756, 11064, '150404', '', '', 'SongShanQu', '松山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11757, 11064, '150421', '', '', 'ALuKeErQinQi', '阿鲁科尔沁旗', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11758, 11064, '150422', '', '', 'BaLinZuoQi', '巴林左旗', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11759, 11064, '150423', '', '', 'BaLinYouQi', '巴林右旗', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11760, 11064, '150424', '', '', 'LinXiXian', '林西县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11761, 11064, '150425', '', '', 'KeShiKeTengQi', '克什克腾旗', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11762, 11064, '150426', '', '', 'WengNiuTeQi', '翁牛特旗', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11763, 11064, '150428', '', '', 'KaLaQinQi', '喀喇沁旗', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11764, 11064, '150429', '', '', 'NingChengXian', '宁城县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11765, 11064, '150430', '', '', 'AoHanQi', '敖汉旗', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11065, 11005, '150500', '', '', 'TongLiaoShi', '通辽市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11766, 11065, '150501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11767, 11065, '150502', '', '', 'KeErQinQu', '科尔沁区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11768, 11065, '150521', '', '', 'KeErQinZuoYiZhongQi', '科尔沁左翼中旗', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11769, 11065, '150522', '', '', 'KeErQinZuoYiHouQi', '科尔沁左翼后旗', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11770, 11065, '150523', '', '', 'KaiLuXian', '开鲁县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11771, 11065, '150524', '', '', 'KuLunQi', '库伦旗', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11772, 11065, '150525', '', '', 'NaiManQi', '奈曼旗', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11773, 11065, '150526', '', '', 'ZhaLuTeQi', '扎鲁特旗', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11774, 11065, '150581', '', '', 'HuoLinGuoLeShi', '霍林郭勒市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11066, 11005, '150600', '', '', 'EErDuoSiShi', '鄂尔多斯市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11775, 11066, '150602', '', '', 'DongShengQu', '东胜区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11776, 11066, '150621', '', '', 'DaLaTeQi', '达拉特旗', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11777, 11066, '150622', '', '', 'ZhunGeErQi', '准格尔旗', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11778, 11066, '150623', '', '', 'ETuoKeQianQi', '鄂托克前旗', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11779, 11066, '150624', '', '', 'ETuoKeQi', '鄂托克旗', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11780, 11066, '150625', '', '', 'HangJinQi', '杭锦旗', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11781, 11066, '150626', '', '', 'WuShenQi', '乌审旗', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11782, 11066, '150627', '', '', 'YiJinHuoLuoQi', '伊金霍洛旗', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11067, 11005, '150700', '', '', 'HuLunBeiErShi', '呼伦贝尔市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11783, 11067, '150701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11784, 11067, '150702', '', '', 'HaiLaErQu', '海拉尔区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11785, 11067, '150721', '', '', 'ARongQi', '阿荣旗', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11786, 11067, '150722', '', '', 'MoLiDaWaDaWoErZuZiZhiQi', '莫力达瓦达斡尔族自治旗', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11787, 11067, '150723', '', '', 'ELunChunZiZhiQi', '鄂伦春自治旗', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11788, 11067, '150724', '', '', 'EWenKeZuZiZhiQi', '鄂温克族自治旗', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11789, 11067, '150725', '', '', 'ChenBaErHuQi', '陈巴尔虎旗', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11790, 11067, '150726', '', '', 'XinBaErHuZuoQi', '新巴尔虎左旗', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11791, 11067, '150727', '', '', 'XinBaErHuYouQi', '新巴尔虎右旗', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11792, 11067, '150781', '', '', 'ManZhouLiShi', '满洲里市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11793, 11067, '150782', '', '', 'YaKeShiShi', '牙克石市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11794, 11067, '150783', '', '', 'ZhaLanTunShi', '扎兰屯市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11795, 11067, '150784', '', '', 'EErGuNaShi', '额尔古纳市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11796, 11067, '150785', '', '', 'GenHeShi', '根河市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11068, 11005, '150800', '', '', 'BaYanNaoErShi', '巴彦淖尔市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11797, 11068, '150801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11798, 11068, '150802', '', '', 'LinHeQu', '临河区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11799, 11068, '150821', '', '', 'WuYuanXian', '五原县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11800, 11068, '150822', '', '', '磴KouXian', '磴口县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11801, 11068, '150823', '', '', 'WuLaTeQianQi', '乌拉特前旗', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11802, 11068, '150824', '', '', 'WuLaTeZhongQi', '乌拉特中旗', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11803, 11068, '150825', '', '', 'WuLaTeHouQi', '乌拉特后旗', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11804, 11068, '150826', '', '', 'HangJinHouQi', '杭锦后旗', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11069, 11005, '150900', '', '', 'WuLanChaBuShi', '乌兰察布市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11805, 11069, '150901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11806, 11069, '150902', '', '', 'JiNingQu', '集宁区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11807, 11069, '150921', '', '', 'ZhuoZiXian', '卓资县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11808, 11069, '150922', '', '', 'HuaDeXian', '化德县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11809, 11069, '150923', '', '', 'ShangDuXian', '商都县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11810, 11069, '150924', '', '', 'XingHeXian', '兴和县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11811, 11069, '150925', '', '', 'LiangChengXian', '凉城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11812, 11069, '150926', '', '', 'ChaHaErYouYiQianQi', '察哈尔右翼前旗', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11813, 11069, '150927', '', '', 'ChaHaErYouYiZhongQi', '察哈尔右翼中旗', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11814, 11069, '150928', '', '', 'ChaHaErYouYiHouQi', '察哈尔右翼后旗', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11815, 11069, '150929', '', '', 'SiZiWangQi', '四子王旗', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11816, 11069, '150981', '', '', 'FengZhenShi', '丰镇市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11070, 11005, '152200', '', '', 'XingAnMeng', '兴安盟', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11817, 11070, '152201', '', '', 'WuLanHaoTeShi', '乌兰浩特市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11818, 11070, '152202', '', '', 'AErShanShi', '阿尔山市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11819, 11070, '152221', '', '', 'KeErQinYouYiQianQi', '科尔沁右翼前旗', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11820, 11070, '152222', '', '', 'KeErQinYouYiZhongQi', '科尔沁右翼中旗', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11821, 11070, '152223', '', '', 'Zha赉TeQi', '扎赉特旗', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11822, 11070, '152224', '', '', 'TuQuanXian', '突泉县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11071, 11005, '152500', '', '', 'XiLinGuoLeMeng', '锡林郭勒盟', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11823, 11071, '152501', '', '', 'ErLianHaoTeShi', '二连浩特市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11824, 11071, '152502', '', '', 'XiLinHaoTeShi', '锡林浩特市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11825, 11071, '152522', '', '', 'ABaGaQi', '阿巴嘎旗', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11826, 11071, '152523', '', '', 'SuNiTeZuoQi', '苏尼特左旗', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11827, 11071, '152524', '', '', 'SuNiTeYouQi', '苏尼特右旗', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11828, 11071, '152525', '', '', 'DongWuZhuMuQinQi', '东乌珠穆沁旗', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11829, 11071, '152526', '', '', 'XiWuZhuMuQinQi', '西乌珠穆沁旗', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11830, 11071, '152527', '', '', 'TaiPuSiQi', '太仆寺旗', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11831, 11071, '152528', '', '', 'XiangHuangQi', '镶黄旗', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11832, 11071, '152529', '', '', 'ZhengXiangBaiQi', '正镶白旗', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11833, 11071, '152530', '', '', 'ZhengLanQi', '正蓝旗', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11834, 11071, '152531', '', '', 'DuoLunXian', '多伦县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11072, 11005, '152900', '', '', 'ALaShanMeng', '阿拉善盟', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11835, 11072, '152921', '', '', 'ALaShanZuoQi', '阿拉善左旗', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11836, 11072, '152922', '', '', 'ALaShanYouQi', '阿拉善右旗', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11837, 11072, '152923', '', '', 'EJiNaQi', '额济纳旗', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11006, 10048, '210000', '', '', 'LiaoNing', '辽宁', '', '', 3, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11073, 11006, '210100', '', '', 'ShenYangShi', '沈阳市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11838, 11073, '210101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11839, 11073, '210102', '', '', 'HePingQu', '和平区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11840, 11073, '210103', '', '', 'ShenHeQu', '沈河区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11841, 11073, '210104', '', '', 'DaDongQu', '大东区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11842, 11073, '210105', '', '', 'HuangGuQu', '皇姑区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11843, 11073, '210106', '', '', 'TieXiQu', '铁西区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11844, 11073, '210111', '', '', 'SuJiaTunQu', '苏家屯区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11845, 11073, '210112', '', '', 'DongLingQu', '东陵区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11846, 11073, '210113', '', '', 'XinChengZiQu', '新城子区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11847, 11073, '210114', '', '', 'YuHongQu', '于洪区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11848, 11073, '210122', '', '', 'LiaoZhongXian', '辽中县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11849, 11073, '210123', '', '', 'KangPingXian', '康平县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11850, 11073, '210124', '', '', 'FaKuXian', '法库县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11851, 11073, '210181', '', '', 'XinMinShi', '新民市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11074, 11006, '210200', '', '', 'DaLianShi', '大连市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11852, 11074, '210201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11853, 11074, '210202', '', '', 'ZhongShanQu', '中山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11854, 11074, '210203', '', '', 'XiGangQu', '西岗区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11855, 11074, '210204', '', '', 'ShaHeKouQu', '沙河口区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11856, 11074, '210211', '', '', 'GanJingZiQu', '甘井子区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11857, 11074, '210212', '', '', 'LvShunKouQu', '旅顺口区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11858, 11074, '210213', '', '', 'JinZhouQu', '金州区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11859, 11074, '210224', '', '', 'ChangHaiXian', '长海县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11860, 11074, '210281', '', '', 'WaFangDianShi', '瓦房店市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11861, 11074, '210282', '', '', 'PuLanDianShi', '普兰店市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11862, 11074, '210283', '', '', 'ZhuangHeShi', '庄河市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11075, 11006, '210300', '', '', 'AnShanShi', '鞍山市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11863, 11075, '210301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11864, 11075, '210302', '', '', 'TieDongQu', '铁东区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11865, 11075, '210303', '', '', 'TieXiQu', '铁西区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11866, 11075, '210304', '', '', 'LiShanQu', '立山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11867, 11075, '210311', '', '', 'QianShanQu', '千山区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11868, 11075, '210321', '', '', 'TaiAnXian', '台安县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11869, 11075, '210323', '', '', '岫YanManZuZiZhiXian', '岫岩满族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11870, 11075, '210381', '', '', 'HaiChengShi', '海城市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11076, 11006, '210400', '', '', 'FuShunShi', '抚顺市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11871, 11076, '210401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11872, 11076, '210402', '', '', 'XinFuQu', '新抚区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11873, 11076, '210403', '', '', 'DongZhouQu', '东洲区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11874, 11076, '210404', '', '', 'WangHuaQu', '望花区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11875, 11076, '210411', '', '', 'ShunChengQu', '顺城区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11876, 11076, '210421', '', '', 'FuShunXian', '抚顺县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11877, 11076, '210422', '', '', 'XinBinManZuZiZhiXian', '新宾满族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11878, 11076, '210423', '', '', 'QingYuanManZuZiZhiXian', '清原满族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11077, 11006, '210500', '', '', 'BenXiShi', '本溪市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11879, 11077, '210501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11880, 11077, '210502', '', '', 'PingShanQu', '平山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11881, 11077, '210503', '', '', 'XiHuQu', '溪湖区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11882, 11077, '210504', '', '', 'MingShanQu', '明山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11883, 11077, '210505', '', '', 'NanFenQu', '南芬区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11884, 11077, '210521', '', '', 'BenXiManZuZiZhiXian', '本溪满族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11885, 11077, '210522', '', '', 'HuanRenManZuZiZhiXian', '桓仁满族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11078, 11006, '210600', '', '', 'DanDongShi', '丹东市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11886, 11078, '210601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11887, 11078, '210602', '', '', 'YuanBaoQu', '元宝区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11888, 11078, '210603', '', '', 'ZhenXingQu', '振兴区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11889, 11078, '210604', '', '', 'ZhenAnQu', '振安区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11890, 11078, '210624', '', '', 'KuanDianManZuZiZhiXian', '宽甸满族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11891, 11078, '210681', '', '', 'DongGangShi', '东港市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11892, 11078, '210682', '', '', 'FengChengShi', '凤城市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11079, 11006, '210700', '', '', 'JinZhouShi', '锦州市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11893, 11079, '210701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11894, 11079, '210702', '', '', 'GuTaQu', '古塔区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11895, 11079, '210703', '', '', 'LingHeQu', '凌河区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11896, 11079, '210711', '', '', 'TaiHeQu', '太和区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11897, 11079, '210726', '', '', 'HeiShanXian', '黑山县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11898, 11079, '210727', '', '', 'Yi　Xian', '义　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11899, 11079, '210781', '', '', 'LingHaiShi', '凌海市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11900, 11079, '210782', '', '', 'BeiNingShi', '北宁市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11080, 11006, '210800', '', '', 'YingKouShi', '营口市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11901, 11080, '210801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11902, 11080, '210802', '', '', 'ZhanQianQu', '站前区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11903, 11080, '210803', '', '', 'XiShiQu', '西市区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11904, 11080, '210804', '', '', '鲅YuQuanQu', '鲅鱼圈区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11905, 11080, '210811', '', '', 'LaoBianQu', '老边区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11906, 11080, '210881', '', '', 'GaiZhouShi', '盖州市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11907, 11080, '210882', '', '', 'DaShiQiaoShi', '大石桥市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11081, 11006, '210900', '', '', 'FuXinShi', '阜新市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11908, 11081, '210901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11909, 11081, '210902', '', '', 'HaiZhouQu', '海州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11910, 11081, '210903', '', '', 'XinQiuQu', '新邱区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11911, 11081, '210904', '', '', 'TaiPingQu', '太平区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11912, 11081, '210905', '', '', 'QingHeMenQu', '清河门区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11913, 11081, '210911', '', '', 'XiHeQu', '细河区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11914, 11081, '210921', '', '', 'FuXinMengGuZuZiZhiXian', '阜新蒙古族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11915, 11081, '210922', '', '', 'ZhangWuXian', '彰武县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11082, 11006, '211000', '', '', 'LiaoYangShi', '辽阳市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11916, 11082, '211001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11917, 11082, '211002', '', '', 'BaiTaQu', '白塔区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11918, 11082, '211003', '', '', 'WenShengQu', '文圣区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11919, 11082, '211004', '', '', 'HongWeiQu', '宏伟区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11920, 11082, '211005', '', '', 'GongChangLingQu', '弓长岭区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11921, 11082, '211011', '', '', 'TaiZiHeQu', '太子河区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11922, 11082, '211021', '', '', 'LiaoYangXian', '辽阳县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11923, 11082, '211081', '', '', 'DengTaShi', '灯塔市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11083, 11006, '211100', '', '', 'PanJinShi', '盘锦市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11924, 11083, '211101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11925, 11083, '211102', '', '', 'ShuangTaiZiQu', '双台子区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11926, 11083, '211103', '', '', 'XingLongTaiQu', '兴隆台区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11927, 11083, '211121', '', '', 'DaWaXian', '大洼县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11928, 11083, '211122', '', '', 'PanShanXian', '盘山县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11084, 11006, '211200', '', '', 'TieLingShi', '铁岭市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11929, 11084, '211201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11930, 11084, '211202', '', '', 'YinZhouQu', '银州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11931, 11084, '211204', '', '', 'QingHeQu', '清河区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11932, 11084, '211221', '', '', 'TieLingXian', '铁岭县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11933, 11084, '211223', '', '', 'XiFengXian', '西丰县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11934, 11084, '211224', '', '', 'ChangTuXian', '昌图县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11935, 11084, '211281', '', '', 'DiaoBingShanShi', '调兵山市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11936, 11084, '211282', '', '', 'KaiYuanShi', '开原市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11085, 11006, '211300', '', '', 'ChaoYangShi', '朝阳市', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11937, 11085, '211301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11938, 11085, '211302', '', '', 'ShuangTaQu', '双塔区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11939, 11085, '211303', '', '', 'LongChengQu', '龙城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11940, 11085, '211321', '', '', 'ChaoYangXian', '朝阳县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11941, 11085, '211322', '', '', 'JianPingXian', '建平县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11942, 11085, '211324', '', '', 'KaLaQinZuoYiMengGuZuZiZhiXian', '喀喇沁左翼蒙古族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11943, 11085, '211381', '', '', 'BeiPiaoShi', '北票市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11944, 11085, '211382', '', '', 'LingYuanShi', '凌源市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11086, 11006, '211400', '', '', 'HuLuDaoShi', '葫芦岛市', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11945, 11086, '211401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11946, 11086, '211402', '', '', 'LianShanQu', '连山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11947, 11086, '211403', '', '', 'LongGangQu', '龙港区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11948, 11086, '211404', '', '', 'NanPiaoQu', '南票区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11949, 11086, '211421', '', '', 'SuiZhongXian', '绥中县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11950, 11086, '211422', '', '', 'JianChangXian', '建昌县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11951, 11086, '211481', '', '', 'XingChengShi', '兴城市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11007, 10048, '220000', '', '', 'JiLin', '吉林', '', '', 3, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11087, 11007, '220100', '', '', 'ChangChunShi', '长春市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11952, 11087, '220101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11953, 11087, '220102', '', '', 'NanGuanQu', '南关区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11954, 11087, '220103', '', '', 'KuanChengQu', '宽城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11955, 11087, '220104', '', '', 'ChaoYangQu', '朝阳区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11956, 11087, '220105', '', '', 'ErDaoQu', '二道区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11957, 11087, '220106', '', '', 'LvYuanQu', '绿园区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11958, 11087, '220112', '', '', 'ShuangYangQu', '双阳区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11959, 11087, '220122', '', '', 'NongAnXian', '农安县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11960, 11087, '220181', '', '', 'JiuTaiShi', '九台市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11961, 11087, '220182', '', '', 'YuShuShi', '榆树市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11962, 11087, '220183', '', '', 'DeHuiShi', '德惠市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11088, 11007, '220200', '', '', 'JiLinShi', '吉林市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11963, 11088, '220201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11964, 11088, '220202', '', '', 'ChangYiQu', '昌邑区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11965, 11088, '220203', '', '', 'LongTanQu', '龙潭区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11966, 11088, '220204', '', '', 'ChuanYingQu', '船营区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11967, 11088, '220211', '', '', 'FengManQu', '丰满区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11968, 11088, '220221', '', '', 'YongJiXian', '永吉县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11969, 11088, '220281', '', '', '蛟HeShi', '蛟河市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11970, 11088, '220282', '', '', '桦DianShi', '桦甸市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11971, 11088, '220283', '', '', 'ShuLanShi', '舒兰市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11972, 11088, '220284', '', '', 'PanShiShi', '磐石市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11089, 11007, '220300', '', '', 'SiPingShi', '四平市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11973, 11089, '220301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11974, 11089, '220302', '', '', 'TieXiQu', '铁西区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11975, 11089, '220303', '', '', 'TieDongQu', '铁东区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11976, 11089, '220322', '', '', 'LiShuXian', '梨树县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11977, 11089, '220323', '', '', 'YiTongManZuZiZhiXian', '伊通满族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11978, 11089, '220381', '', '', 'GongZhuLingShi', '公主岭市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11979, 11089, '220382', '', '', 'ShuangLiaoShi', '双辽市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11090, 11007, '220400', '', '', 'LiaoYuanShi', '辽源市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11980, 11090, '220401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11981, 11090, '220402', '', '', 'LongShanQu', '龙山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11982, 11090, '220403', '', '', 'XiAnQu', '西安区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11983, 11090, '220421', '', '', 'DongFengXian', '东丰县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11984, 11090, '220422', '', '', 'DongLiaoXian', '东辽县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11091, 11007, '220500', '', '', 'TongHuaShi', '通化市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11985, 11091, '220501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11986, 11091, '220502', '', '', 'DongChangQu', '东昌区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11987, 11091, '220503', '', '', 'ErDaoJiangQu', '二道江区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11988, 11091, '220521', '', '', 'TongHuaXian', '通化县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11989, 11091, '220523', '', '', 'HuiNanXian', '辉南县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11990, 11091, '220524', '', '', 'LiuHeXian', '柳河县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11991, 11091, '220581', '', '', 'MeiHeKouShi', '梅河口市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11992, 11091, '220582', '', '', 'JiAnShi', '集安市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11092, 11007, '220600', '', '', 'BaiShanShi', '白山市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11993, 11092, '220601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11994, 11092, '220602', '', '', 'BaDaoJiangQu', '八道江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11995, 11092, '220621', '', '', 'FuSongXian', '抚松县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11996, 11092, '220622', '', '', 'JingYuXian', '靖宇县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11997, 11092, '220623', '', '', 'ChangBaiChaoXianZuZiZhiXian', '长白朝鲜族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11998, 11092, '220625', '', '', 'JiangYuanXian', '江源县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11999, 11092, '220681', '', '', 'LinJiangShi', '临江市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11093, 11007, '220700', '', '', 'SongYuanShi', '松原市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12000, 11093, '220701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12001, 11093, '220702', '', '', 'NingJiangQu', '宁江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12002, 11093, '220721', '', '', 'QianGuoErLuoSiMengGuZuZiZhiXian', '前郭尔罗斯蒙古族自治县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12003, 11093, '220722', '', '', 'ChangLingXian', '长岭县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12004, 11093, '220723', '', '', 'QianAnXian', '乾安县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12005, 11093, '220724', '', '', 'FuYuXian', '扶余县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11094, 11007, '220800', '', '', 'BaiChengShi', '白城市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12006, 11094, '220801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12007, 11094, '220802', '', '', '洮BeiQu', '洮北区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12008, 11094, '220821', '', '', 'Zhen赉Xian', '镇赉县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12009, 11094, '220822', '', '', 'TongYuXian', '通榆县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12010, 11094, '220881', '', '', '洮NanShi', '洮南市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12011, 11094, '220882', '', '', 'DaAnShi', '大安市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11095, 11007, '222400', '', '', 'YanBianChaoXianZuZiZhiZhou', '延边朝鲜族自治州', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12012, 11095, '222401', '', '', 'YanJiShi', '延吉市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12013, 11095, '222402', '', '', 'TuMenShi', '图们市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12014, 11095, '222403', '', '', 'DunHuaShi', '敦化市', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12015, 11095, '222404', '', '', '珲ChunShi', '珲春市', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12016, 11095, '222405', '', '', 'LongJingShi', '龙井市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12017, 11095, '222406', '', '', 'HeLongShi', '和龙市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12018, 11095, '222424', '', '', 'WangQingXian', '汪清县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12019, 11095, '222426', '', '', 'AnTuXian', '安图县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11008, 10048, '230000', '', '', 'HeiLongJiang', '黑龙江', '', '', 3, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11096, 11008, '230100', '', '', 'HaErBinShi', '哈尔滨市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12020, 11096, '230101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12021, 11096, '230102', '', '', 'DaoLiQu', '道里区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12022, 11096, '230103', '', '', 'NanGangQu', '南岗区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12023, 11096, '230104', '', '', 'DaoWaiQu', '道外区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12024, 11096, '230106', '', '', 'XiangFangQu', '香坊区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12025, 11096, '230107', '', '', 'DongLiQu', '动力区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12026, 11096, '230108', '', '', 'PingFangQu', '平房区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12027, 11096, '230109', '', '', 'SongBeiQu', '松北区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12028, 11096, '230111', '', '', 'HuLanQu', '呼兰区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12029, 11096, '230123', '', '', 'YiLanXian', '依兰县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12030, 11096, '230124', '', '', 'FangZhengXian', '方正县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12031, 11096, '230125', '', '', 'Bin　Xian', '宾　县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12032, 11096, '230126', '', '', 'BaYanXian', '巴彦县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12033, 11096, '230127', '', '', 'MuLanXian', '木兰县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12034, 11096, '230128', '', '', 'TongHeXian', '通河县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12035, 11096, '230129', '', '', 'YanShouXian', '延寿县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12036, 11096, '230181', '', '', 'AChengShi', '阿城市', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12037, 11096, '230182', '', '', 'ShuangChengShi', '双城市', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12038, 11096, '230183', '', '', 'ShangZhiShi', '尚志市', '', '', 5, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12039, 11096, '230184', '', '', 'WuChangShi', '五常市', '', '', 5, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11097, 11008, '230200', '', '', 'QiQiHaErShi', '齐齐哈尔市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12040, 11097, '230201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12041, 11097, '230202', '', '', 'LongShaQu', '龙沙区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12042, 11097, '230203', '', '', 'JianHuaQu', '建华区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12043, 11097, '230204', '', '', 'TieFengQu', '铁锋区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12044, 11097, '230205', '', '', 'AngAngXiQu', '昂昂溪区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12045, 11097, '230206', '', '', 'FuLaErJiQu', '富拉尔基区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12046, 11097, '230207', '', '', 'NianZiShanQu', '碾子山区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12047, 11097, '230208', '', '', 'MeiLiSiDaWoErZuQu', '梅里斯达斡尔族区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12048, 11097, '230221', '', '', 'LongJiangXian', '龙江县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12049, 11097, '230223', '', '', 'YiAnXian', '依安县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12050, 11097, '230224', '', '', 'TaiLaiXian', '泰来县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12051, 11097, '230225', '', '', 'GanNanXian', '甘南县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12052, 11097, '230227', '', '', 'FuYuXian', '富裕县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12053, 11097, '230229', '', '', 'KeShanXian', '克山县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12054, 11097, '230230', '', '', 'KeDongXian', '克东县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12055, 11097, '230231', '', '', 'BaiQuanXian', '拜泉县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12056, 11097, '230281', '', '', '讷HeShi', '讷河市', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11098, 11008, '230300', '', '', 'JiXiShi', '鸡西市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12057, 11098, '230301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12058, 11098, '230302', '', '', 'JiGuanQu', '鸡冠区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12059, 11098, '230303', '', '', 'HengShanQu', '恒山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12060, 11098, '230304', '', '', 'DiDaoQu', '滴道区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12061, 11098, '230305', '', '', 'LiShuQu', '梨树区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12062, 11098, '230306', '', '', 'ChengZiHeQu', '城子河区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12063, 11098, '230307', '', '', 'MaShanQu', '麻山区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12064, 11098, '230321', '', '', 'JiDongXian', '鸡东县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12065, 11098, '230381', '', '', 'HuLinShi', '虎林市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12066, 11098, '230382', '', '', 'MiShanShi', '密山市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11099, 11008, '230400', '', '', 'HeGangShi', '鹤岗市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12067, 11099, '230401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12068, 11099, '230402', '', '', 'XiangYangQu', '向阳区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12069, 11099, '230403', '', '', 'GongNongQu', '工农区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12070, 11099, '230404', '', '', 'NanShanQu', '南山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12071, 11099, '230405', '', '', 'XingAnQu', '兴安区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12072, 11099, '230406', '', '', 'DongShanQu', '东山区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12073, 11099, '230407', '', '', 'XingShanQu', '兴山区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12074, 11099, '230421', '', '', 'LuoBeiXian', '萝北县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12075, 11099, '230422', '', '', 'SuiBinXian', '绥滨县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11100, 11008, '230500', '', '', 'ShuangYaShanShi', '双鸭山市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12076, 11100, '230501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12077, 11100, '230502', '', '', 'JianShanQu', '尖山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12078, 11100, '230503', '', '', 'LingDongQu', '岭东区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12079, 11100, '230505', '', '', 'SiFangTaiQu', '四方台区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12080, 11100, '230506', '', '', 'BaoShanQu', '宝山区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12081, 11100, '230521', '', '', 'JiXianXian', '集贤县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12082, 11100, '230522', '', '', 'YouYiXian', '友谊县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12083, 11100, '230523', '', '', 'BaoQingXian', '宝清县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12084, 11100, '230524', '', '', 'RaoHeXian', '饶河县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11101, 11008, '230600', '', '', 'DaQingShi', '大庆市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12085, 11101, '230601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12086, 11101, '230602', '', '', 'SaErTuQu', '萨尔图区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12087, 11101, '230603', '', '', 'LongFengQu', '龙凤区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12088, 11101, '230604', '', '', 'RangHuLuQu', '让胡路区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12089, 11101, '230605', '', '', 'HongGangQu', '红岗区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12090, 11101, '230606', '', '', 'DaTongQu', '大同区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12091, 11101, '230621', '', '', 'ZhaoZhouXian', '肇州县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12092, 11101, '230622', '', '', 'ZhaoYuanXian', '肇源县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12093, 11101, '230623', '', '', 'LinDianXian', '林甸县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12094, 11101, '230624', '', '', 'DuErBoTeMengGuZuZiZhiXian', '杜尔伯特蒙古族自治县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11102, 11008, '230700', '', '', 'YiChunShi', '伊春市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12095, 11102, '230701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12096, 11102, '230702', '', '', 'YiChunQu', '伊春区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12097, 11102, '230703', '', '', 'NanChaQu', '南岔区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12098, 11102, '230704', '', '', 'YouHaoQu', '友好区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12099, 11102, '230705', '', '', 'XiLinQu', '西林区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12100, 11102, '230706', '', '', 'CuiLuanQu', '翠峦区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12101, 11102, '230707', '', '', 'XinQingQu', '新青区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12102, 11102, '230708', '', '', 'MeiXiQu', '美溪区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12103, 11102, '230709', '', '', 'JinShanTunQu', '金山屯区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12104, 11102, '230710', '', '', 'WuYingQu', '五营区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12105, 11102, '230711', '', '', 'WuMaHeQu', '乌马河区', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12106, 11102, '230712', '', '', 'TangWangHeQu', '汤旺河区', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12107, 11102, '230713', '', '', 'DaiLingQu', '带岭区', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12108, 11102, '230714', '', '', 'WuYiLingQu', '乌伊岭区', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12109, 11102, '230715', '', '', 'HongXingQu', '红星区', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12110, 11102, '230716', '', '', 'ShangGanLingQu', '上甘岭区', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12111, 11102, '230722', '', '', 'JiaYinXian', '嘉荫县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12112, 11102, '230781', '', '', 'TieLiShi', '铁力市', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11103, 11008, '230800', '', '', 'JiaMuSiShi', '佳木斯市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12113, 11103, '230801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12114, 11103, '230802', '', '', 'YongHongQu', '永红区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12115, 11103, '230803', '', '', 'XiangYangQu', '向阳区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12116, 11103, '230804', '', '', 'QianJinQu', '前进区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12117, 11103, '230805', '', '', 'DongFengQu', '东风区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12118, 11103, '230811', '', '', 'Jiao　Qu', '郊　区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12119, 11103, '230822', '', '', '桦NanXian', '桦南县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12120, 11103, '230826', '', '', '桦ChuanXian', '桦川县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12121, 11103, '230828', '', '', 'TangYuanXian', '汤原县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12122, 11103, '230833', '', '', 'FuYuanXian', '抚远县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12123, 11103, '230881', '', '', 'TongJiangShi', '同江市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12124, 11103, '230882', '', '', 'FuJinShi', '富锦市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11104, 11008, '230900', '', '', 'QiTaiHeShi', '七台河市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12125, 11104, '230901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12126, 11104, '230902', '', '', 'XinXingQu', '新兴区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12127, 11104, '230903', '', '', 'TaoShanQu', '桃山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12128, 11104, '230904', '', '', 'QieZiHeQu', '茄子河区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12129, 11104, '230921', '', '', 'BoLiXian', '勃利县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11105, 11008, '231000', '', '', 'MuDanJiangShi', '牡丹江市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12130, 11105, '231001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12131, 11105, '231002', '', '', 'DongAnQu', '东安区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12132, 11105, '231003', '', '', 'YangMingQu', '阳明区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12133, 11105, '231004', '', '', 'AiMinQu', '爱民区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12134, 11105, '231005', '', '', 'XiAnQu', '西安区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12135, 11105, '231024', '', '', 'DongNingXian', '东宁县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12136, 11105, '231025', '', '', 'LinKouXian', '林口县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12137, 11105, '231081', '', '', 'SuiFenHeShi', '绥芬河市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12138, 11105, '231083', '', '', 'HaiLinShi', '海林市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12139, 11105, '231084', '', '', 'NingAnShi', '宁安市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12140, 11105, '231085', '', '', 'MuLengShi', '穆棱市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11106, 11008, '231100', '', '', 'HeiHeShi', '黑河市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12141, 11106, '231101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12142, 11106, '231102', '', '', 'AiHuiQu', '爱辉区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12143, 11106, '231121', '', '', 'NenJiangXian', '嫩江县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12144, 11106, '231123', '', '', 'XunKeXian', '逊克县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12145, 11106, '231124', '', '', 'SunWuXian', '孙吴县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12146, 11106, '231181', '', '', 'BeiAnShi', '北安市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12147, 11106, '231182', '', '', 'WuDaLianChiShi', '五大连池市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11107, 11008, '231200', '', '', 'SuiHuaShi', '绥化市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12148, 11107, '231201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12149, 11107, '231202', '', '', 'BeiLinQu', '北林区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12150, 11107, '231221', '', '', 'WangKuiXian', '望奎县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12151, 11107, '231222', '', '', 'LanXiXian', '兰西县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12152, 11107, '231223', '', '', 'QingGangXian', '青冈县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12153, 11107, '231224', '', '', 'QingAnXian', '庆安县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12154, 11107, '231225', '', '', 'MingShuiXian', '明水县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12155, 11107, '231226', '', '', 'SuiLengXian', '绥棱县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12156, 11107, '231281', '', '', 'AnDaShi', '安达市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12157, 11107, '231282', '', '', 'ZhaoDongShi', '肇东市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12158, 11107, '231283', '', '', 'HaiLunShi', '海伦市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11108, 11008, '232700', '', '', 'DaXingAnLingDiQu', '大兴安岭地区', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12159, 11108, '232721', '', '', 'HuMaXian', '呼玛县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12160, 11108, '232722', '', '', 'TaHeXian', '塔河县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12161, 11108, '232723', '', '', 'MoHeXian', '漠河县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11009, 10048, '310000', '', '', 'ShangHaiShi', '上海市', '', '', 3, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11109, 11009, '310100', '', '', 'ShangHaiShiXiaQu', '上海市辖区', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12162, 11109, '310101', '', '', 'HuangPuQu', '黄浦区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12163, 11109, '310103', '', '', 'LuWanQu', '卢湾区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12164, 11109, '310104', '', '', 'XuHuiQu', '徐汇区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12165, 11109, '310105', '', '', 'ChangNingQu', '长宁区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12166, 11109, '310106', '', '', 'JingAnQu', '静安区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12167, 11109, '310107', '', '', 'PuTuoQu', '普陀区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12168, 11109, '310108', '', '', 'ZhaBeiQu', '闸北区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12169, 11109, '310109', '', '', 'HongKouQu', '虹口区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12170, 11109, '310110', '', '', 'YangPuQu', '杨浦区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12171, 11109, '310112', '', '', '闵XingQu', '闵行区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12172, 11109, '310113', '', '', 'BaoShanQu', '宝山区', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12173, 11109, '310114', '', '', 'JiaDingQu', '嘉定区', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12174, 11109, '310115', '', '', 'PuDongXinQu', '浦东新区', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12175, 11109, '310116', '', '', 'JinShanQu', '金山区', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12176, 11109, '310117', '', '', 'SongJiangQu', '松江区', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12177, 11109, '310118', '', '', 'QingPuQu', '青浦区', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12178, 11109, '310119', '', '', 'NanHuiQu', '南汇区', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12179, 11109, '310120', '', '', 'FengXianQu', '奉贤区', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11110, 11009, '310200', '', '', 'ShangHaiXian', '上海县', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12180, 11110, '310230', '', '', 'ChongMingXian', '崇明县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11010, 10048, '320000', '', '', 'JiangSu', '江苏', '', '', 3, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11111, 11010, '320100', '', '', 'NanJingShi', '南京市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12181, 11111, '320101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12182, 11111, '320102', '', '', 'XuanWuQu', '玄武区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12183, 11111, '320103', '', '', 'BaiXiaQu', '白下区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12184, 11111, '320104', '', '', 'QinHuaiQu', '秦淮区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12185, 11111, '320105', '', '', 'Jian邺Qu', '建邺区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12186, 11111, '320106', '', '', 'GuLouQu', '鼓楼区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12187, 11111, '320107', '', '', 'XiaGuanQu', '下关区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12188, 11111, '320111', '', '', 'PuKouQu', '浦口区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12189, 11111, '320113', '', '', 'QiXiaQu', '栖霞区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12190, 11111, '320114', '', '', 'YuHuaTaiQu', '雨花台区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12191, 11111, '320115', '', '', 'JiangNingQu', '江宁区', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12192, 11111, '320116', '', '', 'LiuHeQu', '六合区', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12193, 11111, '320124', '', '', '溧ShuiXian', '溧水县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12194, 11111, '320125', '', '', 'GaoChunXian', '高淳县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11112, 11010, '320200', '', '', 'WuXiShi', '无锡市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12195, 11112, '320201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12196, 11112, '320202', '', '', 'ChongAnQu', '崇安区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12197, 11112, '320203', '', '', 'NanChangQu', '南长区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12198, 11112, '320204', '', '', 'BeiTangQu', '北塘区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12199, 11112, '320205', '', '', 'XiShanQu', '锡山区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12200, 11112, '320206', '', '', 'HuiShanQu', '惠山区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12201, 11112, '320211', '', '', 'BinHuQu', '滨湖区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12202, 11112, '320281', '', '', 'JiangYinShi', '江阴市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12203, 11112, '320282', '', '', 'YiXingShi', '宜兴市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11113, 11010, '320300', '', '', 'XuZhouShi', '徐州市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12204, 11113, '320301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12205, 11113, '320302', '', '', 'GuLouQu', '鼓楼区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12206, 11113, '320303', '', '', 'YunLongQu', '云龙区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12207, 11113, '320304', '', '', 'JiuLiQu', '九里区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12208, 11113, '320305', '', '', 'JiaWangQu', '贾汪区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12209, 11113, '320311', '', '', 'QuanShanQu', '泉山区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12210, 11113, '320321', '', '', 'Feng　Xian', '丰　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12211, 11113, '320322', '', '', 'Pei　Xian', '沛　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12212, 11113, '320323', '', '', 'TongShanXian', '铜山县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12213, 11113, '320324', '', '', '睢NingXian', '睢宁县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12214, 11113, '320381', '', '', 'XinYiShi', '新沂市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12215, 11113, '320382', '', '', '邳ZhouShi', '邳州市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11114, 11010, '320400', '', '', 'ChangZhouShi', '常州市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12216, 11114, '320401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12217, 11114, '320402', '', '', 'TianNingQu', '天宁区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12218, 11114, '320404', '', '', 'ZhongLouQu', '钟楼区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12219, 11114, '320405', '', '', 'QiShuYanQu', '戚墅堰区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12220, 11114, '320411', '', '', 'XinBeiQu', '新北区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12221, 11114, '320412', '', '', 'WuJinQu', '武进区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12222, 11114, '320481', '', '', '溧YangShi', '溧阳市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12223, 11114, '320482', '', '', 'JinTanShi', '金坛市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11115, 11010, '320500', '', '', 'SuZhouShi', '苏州市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12224, 11115, '320501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12225, 11115, '320502', '', '', 'CangLangQu', '沧浪区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12226, 11115, '320503', '', '', 'PingJiangQu', '平江区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12227, 11115, '320504', '', '', 'Jin阊Qu', '金阊区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12228, 11115, '320505', '', '', 'HuQiuQu', '虎丘区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12229, 11115, '320506', '', '', 'WuZhongQu', '吴中区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12230, 11115, '320507', '', '', 'XiangChengQu', '相城区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12231, 11115, '320581', '', '', 'ChangShuShi', '常熟市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12232, 11115, '320582', '', '', 'ZhangJiaGangShi', '张家港市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12233, 11115, '320583', '', '', 'KunShanShi', '昆山市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12234, 11115, '320584', '', '', 'WuJiangShi', '吴江市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12235, 11115, '320585', '', '', 'TaiCangShi', '太仓市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11116, 11010, '320600', '', '', 'NanTongShi', '南通市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12236, 11116, '320601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12237, 11116, '320602', '', '', 'ChongChuanQu', '崇川区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12238, 11116, '320611', '', '', 'GangZhaQu', '港闸区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12239, 11116, '320621', '', '', 'HaiAnXian', '海安县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12240, 11116, '320623', '', '', 'RuDongXian', '如东县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12241, 11116, '320681', '', '', 'QiDongShi', '启东市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12242, 11116, '320682', '', '', 'RuGaoShi', '如皋市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12243, 11116, '320683', '', '', 'TongZhouShi', '通州市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12244, 11116, '320684', '', '', 'HaiMenShi', '海门市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11117, 11010, '320700', '', '', 'LianYunGangShi', '连云港市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12245, 11117, '320701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12246, 11117, '320703', '', '', 'LianYunQu', '连云区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12247, 11117, '320705', '', '', 'XinPuQu', '新浦区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12248, 11117, '320706', '', '', 'HaiZhouQu', '海州区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12249, 11117, '320721', '', '', 'GanYuXian', '赣榆县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12250, 11117, '320722', '', '', 'DongHaiXian', '东海县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12251, 11117, '320723', '', '', 'GuanYunXian', '灌云县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12252, 11117, '320724', '', '', 'GuanNanXian', '灌南县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11118, 11010, '320800', '', '', 'HuaiAnShi', '淮安市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12253, 11118, '320801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12254, 11118, '320802', '', '', 'QingHeQu', '清河区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12255, 11118, '320803', '', '', 'ChuZhouQu', '楚州区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12256, 11118, '320804', '', '', 'HuaiYinQu', '淮阴区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12257, 11118, '320811', '', '', 'QingPuQu', '清浦区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12258, 11118, '320826', '', '', 'LianShuiXian', '涟水县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12259, 11118, '320829', '', '', 'HongZeXian', '洪泽县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12260, 11118, '320830', '', '', '盱眙Xian', '盱眙县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12261, 11118, '320831', '', '', 'JinHuXian', '金湖县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11119, 11010, '320900', '', '', 'YanChengShi', '盐城市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12262, 11119, '320901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12263, 11119, '320902', '', '', 'TingHuQu', '亭湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12264, 11119, '320903', '', '', 'YanDuQu', '盐都区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12265, 11119, '320921', '', '', 'XiangShuiXian', '响水县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12266, 11119, '320922', '', '', 'BinHaiXian', '滨海县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12267, 11119, '320923', '', '', 'FuNingXian', '阜宁县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12268, 11119, '320924', '', '', 'SheYangXian', '射阳县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12269, 11119, '320925', '', '', 'JianHuXian', '建湖县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12270, 11119, '320981', '', '', 'DongTaiShi', '东台市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12271, 11119, '320982', '', '', 'DaFengShi', '大丰市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11120, 11010, '321000', '', '', 'YangZhouShi', '扬州市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12272, 11120, '321001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12273, 11120, '321002', '', '', 'GuangLingQu', '广陵区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12274, 11120, '321003', '', '', '邗JiangQu', '邗江区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12275, 11120, '321011', '', '', 'Jiao　Qu', '郊　区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12276, 11120, '321023', '', '', 'BaoYingXian', '宝应县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12277, 11120, '321081', '', '', 'YiZhengShi', '仪征市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12278, 11120, '321084', '', '', 'GaoYouShi', '高邮市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12279, 11120, '321088', '', '', 'JiangDuShi', '江都市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11121, 11010, '321100', '', '', 'ZhenJiangShi', '镇江市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12280, 11121, '321101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12281, 11121, '321102', '', '', 'JingKouQu', '京口区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12282, 11121, '321111', '', '', 'RunZhouQu', '润州区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12283, 11121, '321112', '', '', 'DanTuQu', '丹徒区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12284, 11121, '321181', '', '', 'DanYangShi', '丹阳市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12285, 11121, '321182', '', '', 'YangZhongShi', '扬中市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12286, 11121, '321183', '', '', 'JuRongShi', '句容市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11122, 11010, '321200', '', '', 'TaiZhouShi', '泰州市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12287, 11122, '321201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12288, 11122, '321202', '', '', 'HaiLingQu', '海陵区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12289, 11122, '321203', '', '', 'GaoGangQu', '高港区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12290, 11122, '321281', '', '', 'XingHuaShi', '兴化市', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12291, 11122, '321282', '', '', 'JingJiangShi', '靖江市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12292, 11122, '321283', '', '', 'TaiXingShi', '泰兴市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12293, 11122, '321284', '', '', 'JiangYanShi', '姜堰市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11123, 11010, '321300', '', '', 'SuQianShi', '宿迁市', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12294, 11123, '321301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12295, 11123, '321302', '', '', 'SuChengQu', '宿城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12296, 11123, '321311', '', '', 'SuYuQu', '宿豫区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12297, 11123, '321322', '', '', '沭YangXian', '沭阳县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12298, 11123, '321323', '', '', '泗YangXian', '泗阳县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12299, 11123, '321324', '', '', '泗HongXian', '泗洪县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11011, 10048, '330000', '', '', 'ZheJiang', '浙江', '', '', 3, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11124, 11011, '330100', '', '', 'HangZhouShi', '杭州市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12300, 11124, '330101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12301, 11124, '330102', '', '', 'ShangChengQu', '上城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12302, 11124, '330103', '', '', 'XiaChengQu', '下城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12303, 11124, '330104', '', '', 'JiangGanQu', '江干区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12304, 11124, '330105', '', '', 'GongShuQu', '拱墅区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12305, 11124, '330106', '', '', 'XiHuQu', '西湖区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12306, 11124, '330108', '', '', 'BinJiangQu', '滨江区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12307, 11124, '330109', '', '', 'XiaoShanQu', '萧山区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12308, 11124, '330110', '', '', 'YuHangQu', '余杭区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12309, 11124, '330122', '', '', 'TongLuXian', '桐庐县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12310, 11124, '330127', '', '', 'ChunAnXian', '淳安县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12311, 11124, '330182', '', '', 'JianDeShi', '建德市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12312, 11124, '330183', '', '', 'FuYangShi', '富阳市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12313, 11124, '330185', '', '', 'LinAnShi', '临安市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11125, 11011, '330200', '', '', 'NingBoShi', '宁波市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12314, 11125, '330201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12315, 11125, '330203', '', '', 'HaiShuQu', '海曙区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12316, 11125, '330204', '', '', 'JiangDongQu', '江东区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12317, 11125, '330205', '', '', 'JiangBeiQu', '江北区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12318, 11125, '330206', '', '', 'BeiLunQu', '北仑区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12319, 11125, '330211', '', '', 'ZhenHaiQu', '镇海区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12320, 11125, '330212', '', '', '鄞ZhouQu', '鄞州区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12321, 11125, '330225', '', '', 'XiangShanXian', '象山县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12322, 11125, '330226', '', '', 'NingHaiXian', '宁海县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12323, 11125, '330281', '', '', 'YuYaoShi', '余姚市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12324, 11125, '330282', '', '', 'CiXiShi', '慈溪市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12325, 11125, '330283', '', '', 'FengHuaShi', '奉化市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11126, 11011, '330300', '', '', 'WenZhouShi', '温州市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12326, 11126, '330301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12327, 11126, '330302', '', '', 'LuChengQu', '鹿城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12328, 11126, '330303', '', '', 'LongWanQu', '龙湾区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12329, 11126, '330304', '', '', '瓯HaiQu', '瓯海区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12330, 11126, '330322', '', '', 'DongTouXian', '洞头县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12331, 11126, '330324', '', '', 'YongJiaXian', '永嘉县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12332, 11126, '330326', '', '', 'PingYangXian', '平阳县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12333, 11126, '330327', '', '', 'CangNanXian', '苍南县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12334, 11126, '330328', '', '', 'WenChengXian', '文成县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12335, 11126, '330329', '', '', 'TaiShunXian', '泰顺县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12336, 11126, '330381', '', '', 'RuiAnShi', '瑞安市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12337, 11126, '330382', '', '', 'LeQingShi', '乐清市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11127, 11011, '330400', '', '', 'JiaXingShi', '嘉兴市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12338, 11127, '330401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12339, 11127, '330402', '', '', 'XiuChengQu', '秀城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12340, 11127, '330411', '', '', 'XiuZhouQu', '秀洲区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12341, 11127, '330421', '', '', 'JiaShanXian', '嘉善县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12342, 11127, '330424', '', '', 'HaiYanXian', '海盐县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12343, 11127, '330481', '', '', 'HaiNingShi', '海宁市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12344, 11127, '330482', '', '', 'PingHuShi', '平湖市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12345, 11127, '330483', '', '', 'TongXiangShi', '桐乡市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11128, 11011, '330500', '', '', 'HuZhouShi', '湖州市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12346, 11128, '330501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12347, 11128, '330502', '', '', 'WuXingQu', '吴兴区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12348, 11128, '330503', '', '', 'Nan浔Qu', '南浔区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12349, 11128, '330521', '', '', 'DeQingXian', '德清县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12350, 11128, '330522', '', '', 'ChangXingXian', '长兴县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12351, 11128, '330523', '', '', 'AnJiXian', '安吉县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11129, 11011, '330600', '', '', 'ShaoXingShi', '绍兴市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12352, 11129, '330601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12353, 11129, '330602', '', '', 'YueChengQu', '越城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12354, 11129, '330621', '', '', 'ShaoXingXian', '绍兴县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12355, 11129, '330624', '', '', 'XinChangXian', '新昌县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12356, 11129, '330681', '', '', 'Zhu暨Shi', '诸暨市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12357, 11129, '330682', '', '', 'ShangYuShi', '上虞市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12358, 11129, '330683', '', '', '嵊ZhouShi', '嵊州市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11130, 11011, '330700', '', '', 'JinHuaShi', '金华市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12359, 11130, '330701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12360, 11130, '330702', '', '', '婺ChengQu', '婺城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12361, 11130, '330703', '', '', 'JinDongQu', '金东区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12362, 11130, '330723', '', '', 'WuYiXian', '武义县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12363, 11130, '330726', '', '', 'PuJiangXian', '浦江县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12364, 11130, '330727', '', '', 'PanAnXian', '磐安县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12365, 11130, '330781', '', '', 'LanXiShi', '兰溪市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12366, 11130, '330782', '', '', 'YiWuShi', '义乌市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12367, 11130, '330783', '', '', 'DongYangShi', '东阳市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12368, 11130, '330784', '', '', 'YongKangShi', '永康市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11131, 11011, '330800', '', '', '衢ZhouShi', '衢州市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12369, 11131, '330801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12370, 11131, '330802', '', '', 'KeChengQu', '柯城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12371, 11131, '330803', '', '', '衢JiangQu', '衢江区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12372, 11131, '330822', '', '', 'ChangShanXian', '常山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12373, 11131, '330824', '', '', 'KaiHuaXian', '开化县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12374, 11131, '330825', '', '', 'LongYouXian', '龙游县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12375, 11131, '330881', '', '', 'JiangShanShi', '江山市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11132, 11011, '330900', '', '', 'ZhouShanShi', '舟山市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12376, 11132, '330901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12377, 11132, '330902', '', '', 'DingHaiQu', '定海区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12378, 11132, '330903', '', '', 'PuTuoQu', '普陀区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12379, 11132, '330921', '', '', '岱ShanXian', '岱山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12380, 11132, '330922', '', '', '嵊泗Xian', '嵊泗县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11133, 11011, '331000', '', '', 'TaiZhouShi', '台州市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12381, 11133, '331001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12382, 11133, '331002', '', '', 'JiaoJiangQu', '椒江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12383, 11133, '331003', '', '', 'HuangYanQu', '黄岩区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12384, 11133, '331004', '', '', 'LuQiaoQu', '路桥区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12385, 11133, '331021', '', '', 'YuHuanXian', '玉环县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12386, 11133, '331022', '', '', 'SanMenXian', '三门县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12387, 11133, '331023', '', '', 'TianTaiXian', '天台县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12388, 11133, '331024', '', '', 'XianJuXian', '仙居县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12389, 11133, '331081', '', '', 'WenLingShi', '温岭市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12390, 11133, '331082', '', '', 'LinHaiShi', '临海市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11134, 11011, '331100', '', '', 'LiShuiShi', '丽水市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12391, 11134, '331101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12392, 11134, '331102', '', '', 'LianDuQu', '莲都区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12393, 11134, '331121', '', '', 'QingTianXian', '青田县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12394, 11134, '331122', '', '', '缙YunXian', '缙云县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12395, 11134, '331123', '', '', 'SuiChangXian', '遂昌县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12396, 11134, '331124', '', '', 'SongYangXian', '松阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12397, 11134, '331125', '', '', 'YunHeXian', '云和县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12398, 11134, '331126', '', '', 'QingYuanXian', '庆元县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12399, 11134, '331127', '', '', 'JingNing畲ZuZiZhiXian', '景宁畲族自治县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12400, 11134, '331181', '', '', 'LongQuanShi', '龙泉市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11012, 10048, '340000', '', '', 'AnHui', '安徽', '', '', 3, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11135, 11012, '340100', '', '', 'HeFeiShi', '合肥市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12401, 11135, '340101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12402, 11135, '340102', '', '', 'YaoHaiQu', '瑶海区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12403, 11135, '340103', '', '', 'LuYangQu', '庐阳区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12404, 11135, '340104', '', '', 'ShuShanQu', '蜀山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12405, 11135, '340111', '', '', 'BaoHeQu', '包河区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12406, 11135, '340121', '', '', 'ChangFengXian', '长丰县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12407, 11135, '340122', '', '', 'FeiDongXian', '肥东县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12408, 11135, '340123', '', '', 'FeiXiXian', '肥西县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11136, 11012, '340200', '', '', 'WuHuShi', '芜湖市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12409, 11136, '340201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12410, 11136, '340202', '', '', 'JingHuQu', '镜湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12411, 11136, '340203', '', '', 'MaTangQu', '马塘区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12412, 11136, '340204', '', '', 'XinWuQu', '新芜区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12413, 11136, '340207', '', '', '鸠JiangQu', '鸠江区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12414, 11136, '340221', '', '', 'WuHuXian', '芜湖县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12415, 11136, '340222', '', '', 'FanChangXian', '繁昌县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12416, 11136, '340223', '', '', 'NanLingXian', '南陵县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11137, 11012, '340300', '', '', 'BangBuShi', '蚌埠市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12417, 11137, '340301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12418, 11137, '340302', '', '', 'LongZiHuQu', '龙子湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12419, 11137, '340303', '', '', 'BangShanQu', '蚌山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12420, 11137, '340304', '', '', 'YuHuiQu', '禹会区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12421, 11137, '340311', '', '', 'HuaiShangQu', '淮上区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12422, 11137, '340321', '', '', 'HuaiYuanXian', '怀远县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12423, 11137, '340322', '', '', 'WuHeXian', '五河县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12424, 11137, '340323', '', '', 'GuZhenXian', '固镇县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11138, 11012, '340400', '', '', 'HuaiNanShi', '淮南市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12425, 11138, '340401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12426, 11138, '340402', '', '', 'DaTongQu', '大通区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12427, 11138, '340403', '', '', 'TianJia庵Qu', '田家庵区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12428, 11138, '340404', '', '', 'XieJiaJiQu', '谢家集区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12429, 11138, '340405', '', '', 'BaGongShanQu', '八公山区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12430, 11138, '340406', '', '', 'PanJiQu', '潘集区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12431, 11138, '340421', '', '', 'FengTaiXian', '凤台县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11139, 11012, '340500', '', '', 'MaAnShanShi', '马鞍山市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12432, 11139, '340501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12433, 11139, '340502', '', '', 'JinJiaZhuangQu', '金家庄区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12434, 11139, '340503', '', '', 'HuaShanQu', '花山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12435, 11139, '340504', '', '', 'YuShanQu', '雨山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12436, 11139, '340521', '', '', 'DangTuXian', '当涂县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11140, 11012, '340600', '', '', 'HuaiBeiShi', '淮北市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12437, 11140, '340601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12438, 11140, '340602', '', '', 'DuJiQu', '杜集区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12439, 11140, '340603', '', '', 'XiangShanQu', '相山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12440, 11140, '340604', '', '', 'LieShanQu', '烈山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12441, 11140, '340621', '', '', '濉XiXian', '濉溪县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11141, 11012, '340700', '', '', 'TongLingShi', '铜陵市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12442, 11141, '340701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12443, 11141, '340702', '', '', 'TongGuanShanQu', '铜官山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12444, 11141, '340703', '', '', 'ShiZiShanQu', '狮子山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12445, 11141, '340711', '', '', 'Jiao　Qu', '郊　区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12446, 11141, '340721', '', '', 'TongLingXian', '铜陵县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11142, 11012, '340800', '', '', 'AnQingShi', '安庆市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12447, 11142, '340801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12448, 11142, '340802', '', '', 'YingJiangQu', '迎江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12449, 11142, '340803', '', '', 'DaGuanQu', '大观区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12450, 11142, '340811', '', '', 'Jiao　Qu', '郊　区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12451, 11142, '340822', '', '', 'HuaiNingXian', '怀宁县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12452, 11142, '340823', '', '', '枞YangXian', '枞阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12453, 11142, '340824', '', '', 'QianShanXian', '潜山县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12454, 11142, '340825', '', '', 'TaiHuXian', '太湖县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12455, 11142, '340826', '', '', 'SuSongXian', '宿松县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12456, 11142, '340827', '', '', 'WangJiangXian', '望江县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12457, 11142, '340828', '', '', 'YueXiXian', '岳西县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12458, 11142, '340881', '', '', 'TongChengShi', '桐城市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11143, 11012, '341000', '', '', 'HuangShanShi', '黄山市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12459, 11143, '341001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12460, 11143, '341002', '', '', 'TunXiQu', '屯溪区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12461, 11143, '341003', '', '', 'HuangShanQu', '黄山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12462, 11143, '341004', '', '', 'HuiZhouQu', '徽州区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12463, 11143, '341021', '', '', '歙　Xian', '歙　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12464, 11143, '341022', '', '', 'XiuNingXian', '休宁县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12465, 11143, '341023', '', '', '黟　Xian', '黟　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12466, 11143, '341024', '', '', 'QiMenXian', '祁门县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11144, 11012, '341100', '', '', 'ChuZhouShi', '滁州市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12467, 11144, '341101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12468, 11144, '341102', '', '', 'Lang琊Qu', '琅琊区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12469, 11144, '341103', '', '', 'Nan谯Qu', '南谯区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12470, 11144, '341122', '', '', 'LaiAnXian', '来安县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12471, 11144, '341124', '', '', 'QuanJiaoXian', '全椒县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12472, 11144, '341125', '', '', 'DingYuanXian', '定远县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12473, 11144, '341126', '', '', 'FengYangXian', '凤阳县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12474, 11144, '341181', '', '', 'TianChangShi', '天长市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12475, 11144, '341182', '', '', 'MingGuangShi', '明光市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11145, 11012, '341200', '', '', 'FuYangShi', '阜阳市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12476, 11145, '341201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12477, 11145, '341202', '', '', '颍ZhouQu', '颍州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12478, 11145, '341203', '', '', '颍DongQu', '颍东区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12479, 11145, '341204', '', '', '颍QuanQu', '颍泉区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12480, 11145, '341221', '', '', 'LinQuanXian', '临泉县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12481, 11145, '341222', '', '', 'TaiHeXian', '太和县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12482, 11145, '341225', '', '', 'FuNanXian', '阜南县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12483, 11145, '341226', '', '', '颍ShangXian', '颍上县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12484, 11145, '341282', '', '', 'JieShouShi', '界首市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11146, 11012, '341300', '', '', 'SuZhouShi', '宿州市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12485, 11146, '341301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12486, 11146, '341302', '', '', '墉QiaoQu', '墉桥区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12487, 11146, '341321', '', '', '砀ShanXian', '砀山县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12488, 11146, '341322', '', '', 'Xiao　Xian', '萧　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12489, 11146, '341323', '', '', 'Ling璧Xian', '灵璧县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12490, 11146, '341324', '', '', '泗　Xian', '泗　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11147, 11012, '341400', '', '', 'ChaoHuShi', '巢湖市', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12491, 11147, '341401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12492, 11147, '341402', '', '', 'JuChaoQu', '居巢区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12493, 11147, '341421', '', '', 'LuJiangXian', '庐江县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12494, 11147, '341422', '', '', 'WuWeiXian', '无为县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12495, 11147, '341423', '', '', 'HanShanXian', '含山县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12496, 11147, '341424', '', '', 'He　Xian', '和　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11148, 11012, '341500', '', '', 'LiuAnShi', '六安市', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12497, 11148, '341501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12498, 11148, '341502', '', '', 'JinAnQu', '金安区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12499, 11148, '341503', '', '', 'YuAnQu', '裕安区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12500, 11148, '341521', '', '', 'Shou　Xian', '寿　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12501, 11148, '341522', '', '', 'HuoQiuXian', '霍邱县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12502, 11148, '341523', '', '', 'ShuChengXian', '舒城县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12503, 11148, '341524', '', '', 'JinZhaiXian', '金寨县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12504, 11148, '341525', '', '', 'HuoShanXian', '霍山县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11149, 11012, '341600', '', '', '亳ZhouShi', '亳州市', '', '', 4, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12505, 11149, '341601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12506, 11149, '341602', '', '', '谯ChengQu', '谯城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12507, 11149, '341621', '', '', 'WoYangXian', '涡阳县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12508, 11149, '341622', '', '', 'MengChengXian', '蒙城县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12509, 11149, '341623', '', '', 'LiXinXian', '利辛县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11150, 11012, '341700', '', '', 'ChiZhouShi', '池州市', '', '', 4, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12510, 11150, '341701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12511, 11150, '341702', '', '', 'GuiChiQu', '贵池区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12512, 11150, '341721', '', '', 'DongZhiXian', '东至县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12513, 11150, '341722', '', '', 'ShiTaiXian', '石台县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12514, 11150, '341723', '', '', 'QingYangXian', '青阳县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11151, 11012, '341800', '', '', 'XuanChengShi', '宣城市', '', '', 4, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12515, 11151, '341801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12516, 11151, '341802', '', '', 'XuanZhouQu', '宣州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12517, 11151, '341821', '', '', 'LangXiXian', '郎溪县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12518, 11151, '341822', '', '', 'GuangDeXian', '广德县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12519, 11151, '341823', '', '', '泾　Xian', '泾　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12520, 11151, '341824', '', '', 'JiXiXian', '绩溪县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12521, 11151, '341825', '', '', '旌DeXian', '旌德县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12522, 11151, '341881', '', '', 'NingGuoShi', '宁国市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11013, 10048, '350000', '', '', 'FuJian', '福建', '', '', 3, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11152, 11013, '350100', '', '', 'FuZhouShi', '福州市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12523, 11152, '350101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12524, 11152, '350102', '', '', 'GuLouQu', '鼓楼区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12525, 11152, '350103', '', '', 'TaiJiangQu', '台江区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12526, 11152, '350104', '', '', 'CangShanQu', '仓山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12527, 11152, '350105', '', '', 'MaWeiQu', '马尾区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12528, 11152, '350111', '', '', 'JinAnQu', '晋安区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12529, 11152, '350121', '', '', 'MinHouXian', '闽侯县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12530, 11152, '350122', '', '', 'LianJiangXian', '连江县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12531, 11152, '350123', '', '', 'LuoYuanXian', '罗源县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12532, 11152, '350124', '', '', 'MinQingXian', '闽清县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12533, 11152, '350125', '', '', 'YongTaiXian', '永泰县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12534, 11152, '350128', '', '', 'PingTanXian', '平潭县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12535, 11152, '350181', '', '', 'FuQingShi', '福清市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12536, 11152, '350182', '', '', 'ChangLeShi', '长乐市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11153, 11013, '350200', '', '', 'XiaMenShi', '厦门市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12537, 11153, '350201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12538, 11153, '350203', '', '', 'SiMingQu', '思明区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12539, 11153, '350205', '', '', 'HaiCangQu', '海沧区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12540, 11153, '350206', '', '', 'HuLiQu', '湖里区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12541, 11153, '350211', '', '', 'JiMeiQu', '集美区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12542, 11153, '350212', '', '', 'TongAnQu', '同安区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12543, 11153, '350213', '', '', 'XiangAnQu', '翔安区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11154, 11013, '350300', '', '', 'PuTianShi', '莆田市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12544, 11154, '350301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12545, 11154, '350302', '', '', 'ChengXiangQu', '城厢区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12546, 11154, '350303', '', '', 'HanJiangQu', '涵江区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12547, 11154, '350304', '', '', 'LiChengQu', '荔城区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12548, 11154, '350305', '', '', 'XiuYuQu', '秀屿区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12549, 11154, '350322', '', '', 'XianYouXian', '仙游县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11155, 11013, '350400', '', '', 'SanMingShi', '三明市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12550, 11155, '350401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12551, 11155, '350402', '', '', 'MeiLieQu', '梅列区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12552, 11155, '350403', '', '', 'SanYuanQu', '三元区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12553, 11155, '350421', '', '', 'MingXiXian', '明溪县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12554, 11155, '350423', '', '', 'QingLiuXian', '清流县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12555, 11155, '350424', '', '', 'NingHuaXian', '宁化县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12556, 11155, '350425', '', '', 'DaTianXian', '大田县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12557, 11155, '350426', '', '', 'YouXiXian', '尤溪县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12558, 11155, '350427', '', '', 'Sha　Xian', '沙　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12559, 11155, '350428', '', '', 'JiangLeXian', '将乐县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12560, 11155, '350429', '', '', 'TaiNingXian', '泰宁县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12561, 11155, '350430', '', '', 'JianNingXian', '建宁县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12562, 11155, '350481', '', '', 'YongAnShi', '永安市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11156, 11013, '350500', '', '', 'QuanZhouShi', '泉州市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12563, 11156, '350501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12564, 11156, '350502', '', '', 'LiChengQu', '鲤城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12565, 11156, '350503', '', '', 'FengZeQu', '丰泽区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12566, 11156, '350504', '', '', 'LuoJiangQu', '洛江区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12567, 11156, '350505', '', '', 'QuanGangQu', '泉港区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12568, 11156, '350521', '', '', 'HuiAnXian', '惠安县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12569, 11156, '350524', '', '', 'AnXiXian', '安溪县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12570, 11156, '350525', '', '', 'YongChunXian', '永春县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12571, 11156, '350526', '', '', 'DeHuaXian', '德化县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12572, 11156, '350527', '', '', 'JinMenXian', '金门县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12573, 11156, '350581', '', '', 'ShiShiShi', '石狮市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12574, 11156, '350582', '', '', 'JinJiangShi', '晋江市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12575, 11156, '350583', '', '', 'NanAnShi', '南安市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11157, 11013, '350600', '', '', 'ZhangZhouShi', '漳州市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12576, 11157, '350601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12577, 11157, '350602', '', '', '芗ChengQu', '芗城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12578, 11157, '350603', '', '', 'LongWenQu', '龙文区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12579, 11157, '350622', '', '', 'YunXiaoXian', '云霄县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12580, 11157, '350623', '', '', 'ZhangPuXian', '漳浦县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12581, 11157, '350624', '', '', '诏AnXian', '诏安县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12582, 11157, '350625', '', '', 'ChangTaiXian', '长泰县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12583, 11157, '350626', '', '', 'DongShanXian', '东山县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12584, 11157, '350627', '', '', 'NanJingXian', '南靖县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12585, 11157, '350628', '', '', 'PingHeXian', '平和县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12586, 11157, '350629', '', '', 'HuaAnXian', '华安县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12587, 11157, '350681', '', '', 'LongHaiShi', '龙海市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11158, 11013, '350700', '', '', 'NanPingShi', '南平市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12588, 11158, '350701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12589, 11158, '350702', '', '', 'YanPingQu', '延平区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12590, 11158, '350721', '', '', 'ShunChangXian', '顺昌县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12591, 11158, '350722', '', '', 'PuChengXian', '浦城县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12592, 11158, '350723', '', '', 'GuangZeXian', '光泽县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12593, 11158, '350724', '', '', 'SongXiXian', '松溪县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12594, 11158, '350725', '', '', 'ZhengHeXian', '政和县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12595, 11158, '350781', '', '', 'ShaoWuShi', '邵武市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12596, 11158, '350782', '', '', 'WuYiShanShi', '武夷山市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12597, 11158, '350783', '', '', 'Jian瓯Shi', '建瓯市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12598, 11158, '350784', '', '', 'JianYangShi', '建阳市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11159, 11013, '350800', '', '', 'LongYanShi', '龙岩市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12599, 11159, '350801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12600, 11159, '350802', '', '', 'XinLuoQu', '新罗区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12601, 11159, '350821', '', '', 'ChangTingXian', '长汀县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12602, 11159, '350822', '', '', 'YongDingXian', '永定县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12603, 11159, '350823', '', '', 'ShangHangXian', '上杭县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12604, 11159, '350824', '', '', 'WuPingXian', '武平县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12605, 11159, '350825', '', '', 'LianChengXian', '连城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12606, 11159, '350881', '', '', 'ZhangPingShi', '漳平市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11160, 11013, '350900', '', '', 'NingDeShi', '宁德市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12607, 11160, '350901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12608, 11160, '350902', '', '', 'JiaoChengQu', '蕉城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12609, 11160, '350921', '', '', 'XiaPuXian', '霞浦县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12610, 11160, '350922', '', '', 'GuTianXian', '古田县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12611, 11160, '350923', '', '', 'PingNanXian', '屏南县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12612, 11160, '350924', '', '', 'ShouNingXian', '寿宁县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12613, 11160, '350925', '', '', 'ZhouNingXian', '周宁县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12614, 11160, '350926', '', '', '柘RongXian', '柘荣县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12615, 11160, '350981', '', '', 'FuAnShi', '福安市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12616, 11160, '350982', '', '', 'FuDingShi', '福鼎市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11014, 10048, '360000', '', '', 'JiangXi', '江西', '', '', 3, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11161, 11014, '360100', '', '', 'NanChangShi', '南昌市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12617, 11161, '360101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12618, 11161, '360102', '', '', 'DongHuQu', '东湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12619, 11161, '360103', '', '', 'XiHuQu', '西湖区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12620, 11161, '360104', '', '', 'QingYunPuQu', '青云谱区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12621, 11161, '360105', '', '', 'WanLiQu', '湾里区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12622, 11161, '360111', '', '', 'QingShanHuQu', '青山湖区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12623, 11161, '360121', '', '', 'NanChangXian', '南昌县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12624, 11161, '360122', '', '', 'XinJianXian', '新建县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12625, 11161, '360123', '', '', 'AnYiXian', '安义县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12626, 11161, '360124', '', '', 'JinXianXian', '进贤县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11162, 11014, '360200', '', '', 'JingDeZhenShi', '景德镇市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12627, 11162, '360201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12628, 11162, '360202', '', '', 'ChangJiangQu', '昌江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12629, 11162, '360203', '', '', 'ZhuShanQu', '珠山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12630, 11162, '360222', '', '', 'FuLiangXian', '浮梁县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12631, 11162, '360281', '', '', 'LePingShi', '乐平市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11163, 11014, '360300', '', '', 'PingXiangShi', '萍乡市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12632, 11163, '360301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12633, 11163, '360302', '', '', 'AnYuanQu', '安源区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12634, 11163, '360313', '', '', 'XiangDongQu', '湘东区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12635, 11163, '360321', '', '', 'LianHuaXian', '莲花县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12636, 11163, '360322', '', '', 'ShangLiXian', '上栗县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12637, 11163, '360323', '', '', 'LuXiXian', '芦溪县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11164, 11014, '360400', '', '', 'JiuJiangShi', '九江市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12638, 11164, '360401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12639, 11164, '360402', '', '', 'LuShanQu', '庐山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12640, 11164, '360403', '', '', '浔YangQu', '浔阳区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12641, 11164, '360421', '', '', 'JiuJiangXian', '九江县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12642, 11164, '360423', '', '', 'WuNingXian', '武宁县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12643, 11164, '360424', '', '', 'XiuShuiXian', '修水县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12644, 11164, '360425', '', '', 'YongXiuXian', '永修县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12645, 11164, '360426', '', '', 'DeAnXian', '德安县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12646, 11164, '360427', '', '', 'XingZiXian', '星子县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12647, 11164, '360428', '', '', 'DuChangXian', '都昌县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12648, 11164, '360429', '', '', 'HuKouXian', '湖口县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12649, 11164, '360430', '', '', 'PengZeXian', '彭泽县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12650, 11164, '360481', '', '', 'RuiChangShi', '瑞昌市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11165, 11014, '360500', '', '', 'XinYuShi', '新余市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12651, 11165, '360501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12652, 11165, '360502', '', '', 'YuShuiQu', '渝水区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12653, 11165, '360521', '', '', 'FenYiXian', '分宜县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11166, 11014, '360600', '', '', 'YingTanShi', '鹰潭市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12654, 11166, '360601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12655, 11166, '360602', '', '', 'YueHuQu', '月湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12656, 11166, '360622', '', '', 'YuJiangXian', '余江县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12657, 11166, '360681', '', '', 'GuiXiShi', '贵溪市', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11167, 11014, '360700', '', '', 'GanZhouShi', '赣州市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12658, 11167, '360701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12659, 11167, '360702', '', '', 'ZhangGongQu', '章贡区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12660, 11167, '360721', '', '', 'Gan　Xian', '赣　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12661, 11167, '360722', '', '', 'XinFengXian', '信丰县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12662, 11167, '360723', '', '', 'DaYuXian', '大余县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12663, 11167, '360724', '', '', 'ShangYouXian', '上犹县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12664, 11167, '360725', '', '', 'ChongYiXian', '崇义县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12665, 11167, '360726', '', '', 'AnYuanXian', '安远县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12666, 11167, '360727', '', '', 'LongNanXian', '龙南县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12667, 11167, '360728', '', '', 'DingNanXian', '定南县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12668, 11167, '360729', '', '', 'QuanNanXian', '全南县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12669, 11167, '360730', '', '', 'NingDuXian', '宁都县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12670, 11167, '360731', '', '', 'YuDuXian', '于都县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12671, 11167, '360732', '', '', 'XingGuoXian', '兴国县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12672, 11167, '360733', '', '', 'HuiChangXian', '会昌县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12673, 11167, '360734', '', '', 'XunWuXian', '寻乌县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12674, 11167, '360735', '', '', 'ShiChengXian', '石城县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12675, 11167, '360781', '', '', 'RuiJinShi', '瑞金市', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12676, 11167, '360782', '', '', 'NanKangShi', '南康市', '', '', 5, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11168, 11014, '360800', '', '', 'JiAnShi', '吉安市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12677, 11168, '360801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12678, 11168, '360802', '', '', 'JiZhouQu', '吉州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12679, 11168, '360803', '', '', 'QingYuanQu', '青原区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12680, 11168, '360821', '', '', 'JiAnXian', '吉安县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12681, 11168, '360822', '', '', 'JiShuiXian', '吉水县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12682, 11168, '360823', '', '', 'XiaJiangXian', '峡江县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12683, 11168, '360824', '', '', 'XinGanXian', '新干县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12684, 11168, '360825', '', '', 'YongFengXian', '永丰县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12685, 11168, '360826', '', '', 'TaiHeXian', '泰和县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12686, 11168, '360827', '', '', 'SuiChuanXian', '遂川县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12687, 11168, '360828', '', '', 'WanAnXian', '万安县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12688, 11168, '360829', '', '', 'AnFuXian', '安福县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12689, 11168, '360830', '', '', 'YongXinXian', '永新县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12690, 11168, '360881', '', '', 'JingGangShanShi', '井冈山市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11169, 11014, '360900', '', '', 'YiChunShi', '宜春市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12691, 11169, '360901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12692, 11169, '360902', '', '', 'YuanZhouQu', '袁州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12693, 11169, '360921', '', '', 'FengXinXian', '奉新县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12694, 11169, '360922', '', '', 'WanZaiXian', '万载县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12695, 11169, '360923', '', '', 'ShangGaoXian', '上高县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12696, 11169, '360924', '', '', 'YiFengXian', '宜丰县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12697, 11169, '360925', '', '', 'JingAnXian', '靖安县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12698, 11169, '360926', '', '', 'TongGuXian', '铜鼓县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12699, 11169, '360981', '', '', 'FengChengShi', '丰城市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12700, 11169, '360982', '', '', 'ZhangShuShi', '樟树市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12701, 11169, '360983', '', '', 'GaoAnShi', '高安市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11170, 11014, '361000', '', '', 'FuZhouShi', '抚州市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12702, 11170, '361001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12703, 11170, '361002', '', '', 'LinChuanQu', '临川区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12704, 11170, '361021', '', '', 'NanChengXian', '南城县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12705, 11170, '361022', '', '', 'LiChuanXian', '黎川县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12706, 11170, '361023', '', '', 'NanFengXian', '南丰县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12707, 11170, '361024', '', '', 'ChongRenXian', '崇仁县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12708, 11170, '361025', '', '', 'LeAnXian', '乐安县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12709, 11170, '361026', '', '', 'YiHuangXian', '宜黄县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12710, 11170, '361027', '', '', 'JinXiXian', '金溪县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12711, 11170, '361028', '', '', 'ZiXiXian', '资溪县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12712, 11170, '361029', '', '', 'DongXiangXian', '东乡县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12713, 11170, '361030', '', '', 'GuangChangXian', '广昌县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11171, 11014, '361100', '', '', 'ShangRaoShi', '上饶市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12714, 11171, '361101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12715, 11171, '361102', '', '', 'XinZhouQu', '信州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12716, 11171, '361121', '', '', 'ShangRaoXian', '上饶县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12717, 11171, '361122', '', '', 'GuangFengXian', '广丰县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12718, 11171, '361123', '', '', 'YuShanXian', '玉山县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12719, 11171, '361124', '', '', 'QianShanXian', '铅山县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12720, 11171, '361125', '', '', 'HengFengXian', '横峰县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12721, 11171, '361126', '', '', '弋YangXian', '弋阳县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12722, 11171, '361127', '', '', 'YuGanXian', '余干县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12723, 11171, '361128', '', '', '鄱YangXian', '鄱阳县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12724, 11171, '361129', '', '', 'WanNianXian', '万年县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12725, 11171, '361130', '', '', '婺YuanXian', '婺源县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12726, 11171, '361181', '', '', 'DeXingShi', '德兴市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11015, 10048, '370000', '', '', 'ShanDong', '山东', '', '', 3, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11172, 11015, '370100', '', '', 'JiNanShi', '济南市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12727, 11172, '370101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12728, 11172, '370102', '', '', 'LiXiaQu', '历下区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12729, 11172, '370103', '', '', 'ShiZhongQu', '市中区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12730, 11172, '370104', '', '', 'HuaiYinQu', '槐荫区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12731, 11172, '370105', '', '', 'TianQiaoQu', '天桥区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12732, 11172, '370112', '', '', 'LiChengQu', '历城区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12733, 11172, '370113', '', '', 'ChangQingQu', '长清区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12734, 11172, '370124', '', '', 'PingYinXian', '平阴县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12735, 11172, '370125', '', '', 'JiYangXian', '济阳县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12736, 11172, '370126', '', '', 'ShangHeXian', '商河县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12737, 11172, '370181', '', '', 'ZhangQiuShi', '章丘市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11173, 11015, '370200', '', '', 'QingDaoShi', '青岛市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12738, 11173, '370201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12739, 11173, '370202', '', '', 'ShiNanQu', '市南区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12740, 11173, '370203', '', '', 'ShiBeiQu', '市北区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12741, 11173, '370205', '', '', 'SiFangQu', '四方区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12742, 11173, '370211', '', '', 'HuangDaoQu', '黄岛区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12743, 11173, '370212', '', '', '崂ShanQu', '崂山区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12744, 11173, '370213', '', '', 'LiCangQu', '李沧区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12745, 11173, '370214', '', '', 'ChengYangQu', '城阳区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12746, 11173, '370281', '', '', 'JiaoZhouShi', '胶州市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12747, 11173, '370282', '', '', 'JiMoShi', '即墨市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12748, 11173, '370283', '', '', 'PingDuShi', '平度市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12749, 11173, '370284', '', '', 'JiaoNanShi', '胶南市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12750, 11173, '370285', '', '', 'LaiXiShi', '莱西市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11174, 11015, '370300', '', '', 'ZiBoShi', '淄博市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12751, 11174, '370301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12752, 11174, '370302', '', '', 'ZiChuanQu', '淄川区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12753, 11174, '370303', '', '', 'ZhangDianQu', '张店区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12754, 11174, '370304', '', '', 'BoShanQu', '博山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12755, 11174, '370305', '', '', 'LinZiQu', '临淄区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12756, 11174, '370306', '', '', 'ZhouCunQu', '周村区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12757, 11174, '370321', '', '', 'HuanTaiXian', '桓台县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12758, 11174, '370322', '', '', 'GaoQingXian', '高青县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12759, 11174, '370323', '', '', 'YiYuanXian', '沂源县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11175, 11015, '370400', '', '', 'ZaoZhuangShi', '枣庄市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12760, 11175, '370401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12761, 11175, '370402', '', '', 'ShiZhongQu', '市中区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12762, 11175, '370403', '', '', 'XueChengQu', '薛城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12763, 11175, '370404', '', '', '峄ChengQu', '峄城区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12764, 11175, '370405', '', '', 'TaiErZhuangQu', '台儿庄区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12765, 11175, '370406', '', '', 'ShanTingQu', '山亭区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12766, 11175, '370481', '', '', '滕ZhouShi', '滕州市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11176, 11015, '370500', '', '', 'DongYingShi', '东营市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12767, 11176, '370501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12768, 11176, '370502', '', '', 'DongYingQu', '东营区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12769, 11176, '370503', '', '', 'HeKouQu', '河口区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12770, 11176, '370521', '', '', 'KenLiXian', '垦利县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12771, 11176, '370522', '', '', 'LiJinXian', '利津县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12772, 11176, '370523', '', '', 'GuangRaoXian', '广饶县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11177, 11015, '370600', '', '', 'YanTaiShi', '烟台市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12773, 11177, '370601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12774, 11177, '370602', '', '', 'Zhi罘Qu', '芝罘区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12775, 11177, '370611', '', '', 'FuShanQu', '福山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12776, 11177, '370612', '', '', 'MouPingQu', '牟平区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12777, 11177, '370613', '', '', 'LaiShanQu', '莱山区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12778, 11177, '370634', '', '', 'ChangDaoXian', '长岛县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12779, 11177, '370681', '', '', 'LongKouShi', '龙口市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12780, 11177, '370682', '', '', 'LaiYangShi', '莱阳市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12781, 11177, '370683', '', '', 'LaiZhouShi', '莱州市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12782, 11177, '370684', '', '', 'PengLaiShi', '蓬莱市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12783, 11177, '370685', '', '', 'ZhaoYuanShi', '招远市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12784, 11177, '370686', '', '', 'QiXiaShi', '栖霞市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12785, 11177, '370687', '', '', 'HaiYangShi', '海阳市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11178, 11015, '370700', '', '', 'WeiFangShi', '潍坊市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12786, 11178, '370701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12787, 11178, '370702', '', '', 'WeiChengQu', '潍城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12788, 11178, '370703', '', '', 'HanTingQu', '寒亭区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12789, 11178, '370704', '', '', 'FangZiQu', '坊子区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12790, 11178, '370705', '', '', 'KuiWenQu', '奎文区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12791, 11178, '370724', '', '', 'Lin朐Xian', '临朐县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12792, 11178, '370725', '', '', 'ChangLeXian', '昌乐县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12793, 11178, '370781', '', '', 'QingZhouShi', '青州市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12794, 11178, '370782', '', '', 'ZhuChengShi', '诸城市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12795, 11178, '370783', '', '', 'ShouGuangShi', '寿光市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12796, 11178, '370784', '', '', 'AnQiuShi', '安丘市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12797, 11178, '370785', '', '', 'GaoMiShi', '高密市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12798, 11178, '370786', '', '', 'ChangYiShi', '昌邑市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11179, 11015, '370800', '', '', 'JiNingShi', '济宁市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12799, 11179, '370801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12800, 11179, '370802', '', '', 'ShiZhongQu', '市中区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12801, 11179, '370811', '', '', 'RenChengQu', '任城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12802, 11179, '370826', '', '', 'WeiShanXian', '微山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12803, 11179, '370827', '', '', 'YuTaiXian', '鱼台县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12804, 11179, '370828', '', '', 'JinXiangXian', '金乡县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12805, 11179, '370829', '', '', 'JiaXiangXian', '嘉祥县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12806, 11179, '370830', '', '', '汶ShangXian', '汶上县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12807, 11179, '370831', '', '', '泗ShuiXian', '泗水县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12808, 11179, '370832', '', '', 'LiangShanXian', '梁山县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12809, 11179, '370881', '', '', 'QuFuShi', '曲阜市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12810, 11179, '370882', '', '', '兖ZhouShi', '兖州市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12811, 11179, '370883', '', '', 'ZouChengShi', '邹城市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11180, 11015, '370900', '', '', 'TaiAnShi', '泰安市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12812, 11180, '370901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12813, 11180, '370902', '', '', 'TaiShanQu', '泰山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12814, 11180, '370903', '', '', '岱YueQu', '岱岳区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12815, 11180, '370921', '', '', 'NingYangXian', '宁阳县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12816, 11180, '370923', '', '', 'DongPingXian', '东平县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12817, 11180, '370982', '', '', 'XinTaiShi', '新泰市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12818, 11180, '370983', '', '', 'FeiChengShi', '肥城市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11181, 11015, '371000', '', '', 'WeiHaiShi', '威海市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12819, 11181, '371001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12820, 11181, '371002', '', '', 'HuanCuiQu', '环翠区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12821, 11181, '371081', '', '', 'WenDengShi', '文登市', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12822, 11181, '371082', '', '', 'RongChengShi', '荣成市', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12823, 11181, '371083', '', '', 'RuShanShi', '乳山市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11182, 11015, '371100', '', '', 'RiZhaoShi', '日照市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12824, 11182, '371101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12825, 11182, '371102', '', '', 'DongGangQu', '东港区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12826, 11182, '371103', '', '', '岚ShanQu', '岚山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12827, 11182, '371121', '', '', 'WuLianXian', '五莲县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12828, 11182, '371122', '', '', '莒　Xian', '莒　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11183, 11015, '371200', '', '', 'LaiWuShi', '莱芜市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12829, 11183, '371201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12830, 11183, '371202', '', '', 'LaiChengQu', '莱城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12831, 11183, '371203', '', '', 'GangChengQu', '钢城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11184, 11015, '371300', '', '', 'LinYiShi', '临沂市', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12832, 11184, '371301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12833, 11184, '371302', '', '', 'LanShanQu', '兰山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12834, 11184, '371311', '', '', 'LuoZhuangQu', '罗庄区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12835, 11184, '371312', '', '', 'HeDongQu', '河东区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12836, 11184, '371321', '', '', 'YiNanXian', '沂南县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12837, 11184, '371322', '', '', '郯ChengXian', '郯城县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12838, 11184, '371323', '', '', 'YiShuiXian', '沂水县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12839, 11184, '371324', '', '', 'CangShanXian', '苍山县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12840, 11184, '371325', '', '', 'Fei　Xian', '费　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12841, 11184, '371326', '', '', 'PingYiXian', '平邑县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12842, 11184, '371327', '', '', '莒NanXian', '莒南县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12843, 11184, '371328', '', '', 'MengYinXian', '蒙阴县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12844, 11184, '371329', '', '', 'Lin沭Xian', '临沭县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11185, 11015, '371400', '', '', 'DeZhouShi', '德州市', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12845, 11185, '371401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12846, 11185, '371402', '', '', 'DeChengQu', '德城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12847, 11185, '371421', '', '', 'Ling　Xian', '陵　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12848, 11185, '371422', '', '', 'NingJinXian', '宁津县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12849, 11185, '371423', '', '', 'QingYunXian', '庆云县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12850, 11185, '371424', '', '', 'LinYiXian', '临邑县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12851, 11185, '371425', '', '', 'QiHeXian', '齐河县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12852, 11185, '371426', '', '', 'PingYuanXian', '平原县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12853, 11185, '371427', '', '', 'XiaJinXian', '夏津县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12854, 11185, '371428', '', '', 'WuChengXian', '武城县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12855, 11185, '371481', '', '', 'LeLingShi', '乐陵市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12856, 11185, '371482', '', '', 'YuChengShi', '禹城市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11186, 11015, '371500', '', '', 'LiaoChengShi', '聊城市', '', '', 4, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12857, 11186, '371501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12858, 11186, '371502', '', '', 'DongChangFuQu', '东昌府区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12859, 11186, '371521', '', '', 'YangGuXian', '阳谷县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12860, 11186, '371522', '', '', '莘　Xian', '莘　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12861, 11186, '371523', '', '', '茌PingXian', '茌平县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12862, 11186, '371524', '', '', 'DongAXian', '东阿县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12863, 11186, '371525', '', '', 'Guan　Xian', '冠　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12864, 11186, '371526', '', '', 'GaoTangXian', '高唐县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12865, 11186, '371581', '', '', 'LinQingShi', '临清市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11187, 11015, '371600', '', '', 'BinZhouShi', '滨州市', '', '', 4, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12866, 11187, '371601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12867, 11187, '371602', '', '', 'BinChengQu', '滨城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12868, 11187, '371621', '', '', 'HuiMinXian', '惠民县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12869, 11187, '371622', '', '', 'YangXinXian', '阳信县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12870, 11187, '371623', '', '', 'Wu棣Xian', '无棣县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12871, 11187, '371624', '', '', 'ZhanHuaXian', '沾化县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12872, 11187, '371625', '', '', 'BoXingXian', '博兴县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12873, 11187, '371626', '', '', 'ZouPingXian', '邹平县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11188, 11015, '371700', '', '', 'HeZeShi', '荷泽市', '', '', 4, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12874, 11188, '371701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12875, 11188, '371702', '', '', 'MuDanQu', '牡丹区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12876, 11188, '371721', '', '', 'Cao　Xian', '曹　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12877, 11188, '371722', '', '', 'Dan　Xian', '单　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12878, 11188, '371723', '', '', 'ChengWuXian', '成武县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12879, 11188, '371724', '', '', 'JuYeXian', '巨野县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12880, 11188, '371725', '', '', '郓ChengXian', '郓城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12881, 11188, '371726', '', '', '鄄ChengXian', '鄄城县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12882, 11188, '371727', '', '', 'DingTaoXian', '定陶县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12883, 11188, '371728', '', '', 'DongMingXian', '东明县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11016, 10048, '410000', '', '', 'HeNan', '河南', '', '', 3, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11189, 11016, '410100', '', '', 'ZhengZhouShi', '郑州市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12884, 11189, '410101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12885, 11189, '410102', '', '', 'ZhongYuanQu', '中原区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12886, 11189, '410103', '', '', 'ErQiQu', '二七区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12887, 11189, '410104', '', '', 'GuanChengHuiZuQu', '管城回族区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12888, 11189, '410105', '', '', 'JinShuiQu', '金水区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12889, 11189, '410106', '', '', 'ShangJieQu', '上街区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12890, 11189, '410108', '', '', '邙ShanQu', '邙山区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12891, 11189, '410122', '', '', 'ZhongMouXian', '中牟县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12892, 11189, '410181', '', '', 'GongYiShi', '巩义市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12893, 11189, '410182', '', '', '荥YangShi', '荥阳市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12894, 11189, '410183', '', '', 'XinMiShi', '新密市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12895, 11189, '410184', '', '', 'XinZhengShi', '新郑市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12896, 11189, '410185', '', '', 'DengFengShi', '登封市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11190, 11016, '410200', '', '', 'KaiFengShi', '开封市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12897, 11190, '410201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12898, 11190, '410202', '', '', 'LongTingQu', '龙亭区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12899, 11190, '410203', '', '', 'ShunHeHuiZuQu', '顺河回族区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12900, 11190, '410204', '', '', 'GuLouQu', '鼓楼区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12901, 11190, '410205', '', '', 'NanGuanQu', '南关区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12902, 11190, '410211', '', '', 'Jiao　Qu', '郊　区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12903, 11190, '410221', '', '', '杞　Xian', '杞　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12904, 11190, '410222', '', '', 'TongXuXian', '通许县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12905, 11190, '410223', '', '', 'WeiShiXian', '尉氏县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12906, 11190, '410224', '', '', 'KaiFengXian', '开封县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12907, 11190, '410225', '', '', 'LanKaoXian', '兰考县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11191, 11016, '410300', '', '', 'LuoYangShi', '洛阳市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12908, 11191, '410301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12909, 11191, '410302', '', '', 'LaoChengQu', '老城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12910, 11191, '410303', '', '', 'XiGongQu', '西工区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12911, 11191, '410304', '', '', '廛HeHuiZuQu', '廛河回族区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12912, 11191, '410305', '', '', 'JianXiQu', '涧西区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12913, 11191, '410306', '', '', 'JiLiQu', '吉利区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12914, 11191, '410307', '', '', 'LuoLongQu', '洛龙区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12915, 11191, '410322', '', '', 'MengJinXian', '孟津县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12916, 11191, '410323', '', '', 'XinAnXian', '新安县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12917, 11191, '410324', '', '', '栾ChuanXian', '栾川县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12918, 11191, '410325', '', '', '嵩　Xian', '嵩　县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12919, 11191, '410326', '', '', 'RuYangXian', '汝阳县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12920, 11191, '410327', '', '', 'YiYangXian', '宜阳县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12921, 11191, '410328', '', '', 'LuoNingXian', '洛宁县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12922, 11191, '410329', '', '', 'YiChuanXian', '伊川县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12923, 11191, '410381', '', '', '偃ShiShi', '偃师市', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11192, 11016, '410400', '', '', 'PingDingShanShi', '平顶山市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12924, 11192, '410401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12925, 11192, '410402', '', '', 'XinHuaQu', '新华区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12926, 11192, '410403', '', '', 'WeiDongQu', '卫东区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12927, 11192, '410404', '', '', 'ShiLongQu', '石龙区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12928, 11192, '410411', '', '', 'ZhanHeQu', '湛河区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12929, 11192, '410421', '', '', 'BaoFengXian', '宝丰县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12930, 11192, '410422', '', '', 'Ye　Xian', '叶　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12931, 11192, '410423', '', '', 'LuShanXian', '鲁山县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12932, 11192, '410425', '', '', '郏　Xian', '郏　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12933, 11192, '410481', '', '', 'WuGangShi', '舞钢市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12934, 11192, '410482', '', '', 'RuZhouShi', '汝州市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11193, 11016, '410500', '', '', 'AnYangShi', '安阳市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12935, 11193, '410501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12936, 11193, '410502', '', '', 'WenFengQu', '文峰区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12937, 11193, '410503', '', '', 'BeiGuanQu', '北关区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12938, 11193, '410505', '', '', 'YinDuQu', '殷都区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12939, 11193, '410506', '', '', 'LongAnQu', '龙安区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12940, 11193, '410522', '', '', 'AnYangXian', '安阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12941, 11193, '410523', '', '', 'TangYinXian', '汤阴县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12942, 11193, '410526', '', '', 'Hua　Xian', '滑　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12943, 11193, '410527', '', '', 'NeiHuangXian', '内黄县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12944, 11193, '410581', '', '', 'LinZhouShi', '林州市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11194, 11016, '410600', '', '', 'HeBiShi', '鹤壁市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12945, 11194, '410601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12946, 11194, '410602', '', '', 'HeShanQu', '鹤山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12947, 11194, '410603', '', '', 'ShanChengQu', '山城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12948, 11194, '410611', '', '', '淇BinQu', '淇滨区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12949, 11194, '410621', '', '', 'Jun　Xian', '浚　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12950, 11194, '410622', '', '', '淇　Xian', '淇　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11195, 11016, '410700', '', '', 'XinXiangShi', '新乡市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12951, 11195, '410701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12952, 11195, '410702', '', '', 'HongQiQu', '红旗区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12953, 11195, '410703', '', '', 'WeiBinQu', '卫滨区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12954, 11195, '410704', '', '', 'FengQuanQu', '凤泉区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12955, 11195, '410711', '', '', 'MuYeQu', '牧野区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12956, 11195, '410721', '', '', 'XinXiangXian', '新乡县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12957, 11195, '410724', '', '', 'HuoJiaXian', '获嘉县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12958, 11195, '410725', '', '', 'YuanYangXian', '原阳县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12959, 11195, '410726', '', '', 'YanJinXian', '延津县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12960, 11195, '410727', '', '', 'FengQiuXian', '封丘县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12961, 11195, '410728', '', '', 'ChangYuanXian', '长垣县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12962, 11195, '410781', '', '', 'WeiHuiShi', '卫辉市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12963, 11195, '410782', '', '', 'HuiXianShi', '辉县市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11196, 11016, '410800', '', '', 'JiaoZuoShi', '焦作市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12964, 11196, '410801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12965, 11196, '410802', '', '', 'JieFangQu', '解放区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12966, 11196, '410803', '', '', 'ZhongZhanQu', '中站区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12967, 11196, '410804', '', '', 'MaCunQu', '马村区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12968, 11196, '410811', '', '', 'ShanYangQu', '山阳区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12969, 11196, '410821', '', '', 'XiuWuXian', '修武县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12970, 11196, '410822', '', '', 'BoAiXian', '博爱县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12971, 11196, '410823', '', '', 'Wu陟Xian', '武陟县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12972, 11196, '410825', '', '', 'Wen　Xian', '温　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12973, 11196, '410881', '', '', 'JiYuanShi', '济源市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12974, 11196, '410882', '', '', 'QinYangShi', '沁阳市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12975, 11196, '410883', '', '', 'MengZhouShi', '孟州市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11197, 11016, '410900', '', '', '濮YangShi', '濮阳市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12976, 11197, '410901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12977, 11197, '410902', '', '', 'HuaLongQu', '华龙区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12978, 11197, '410922', '', '', 'QingFengXian', '清丰县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12979, 11197, '410923', '', '', 'NanLeXian', '南乐县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12980, 11197, '410926', '', '', 'Fan　Xian', '范　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12981, 11197, '410927', '', '', 'TaiQianXian', '台前县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12982, 11197, '410928', '', '', '濮YangXian', '濮阳县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11198, 11016, '411000', '', '', 'XuChangShi', '许昌市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12983, 11198, '411001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12984, 11198, '411002', '', '', 'WeiDuQu', '魏都区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12985, 11198, '411023', '', '', 'XuChangXian', '许昌县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12986, 11198, '411024', '', '', '鄢LingXian', '鄢陵县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12987, 11198, '411025', '', '', 'XiangChengXian', '襄城县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12988, 11198, '411081', '', '', 'YuZhouShi', '禹州市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12989, 11198, '411082', '', '', 'ChangGeShi', '长葛市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11199, 11016, '411100', '', '', '漯HeShi', '漯河市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12990, 11199, '411101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12991, 11199, '411102', '', '', 'YuanHuiQu', '源汇区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12992, 11199, '411103', '', '', '郾ChengQu', '郾城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12993, 11199, '411104', '', '', 'ZhaoLingQu', '召陵区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12994, 11199, '411121', '', '', 'WuYangXian', '舞阳县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12995, 11199, '411122', '', '', 'Lin颍Xian', '临颍县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11200, 11016, '411200', '', '', 'SanMenXiaShi', '三门峡市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12996, 11200, '411201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12997, 11200, '411202', '', '', 'HuBinQu', '湖滨区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12998, 11200, '411221', '', '', '渑ChiXian', '渑池县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (12999, 11200, '411222', '', '', 'Shan　Xian', '陕　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13000, 11200, '411224', '', '', 'LuShiXian', '卢氏县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13001, 11200, '411281', '', '', 'YiMaShi', '义马市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13002, 11200, '411282', '', '', 'LingBaoShi', '灵宝市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11201, 11016, '411300', '', '', 'NanYangShi', '南阳市', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13003, 11201, '411301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13004, 11201, '411302', '', '', 'WanChengQu', '宛城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13005, 11201, '411303', '', '', 'WoLongQu', '卧龙区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13006, 11201, '411321', '', '', 'NanZhaoXian', '南召县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13007, 11201, '411322', '', '', 'FangChengXian', '方城县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13008, 11201, '411323', '', '', 'XiXiaXian', '西峡县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13009, 11201, '411324', '', '', 'ZhenPingXian', '镇平县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13010, 11201, '411325', '', '', 'NeiXiangXian', '内乡县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13011, 11201, '411326', '', '', '淅ChuanXian', '淅川县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13012, 11201, '411327', '', '', 'SheQiXian', '社旗县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13013, 11201, '411328', '', '', 'TangHeXian', '唐河县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13014, 11201, '411329', '', '', 'XinYeXian', '新野县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13015, 11201, '411330', '', '', 'TongBaiXian', '桐柏县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13016, 11201, '411381', '', '', 'DengZhouShi', '邓州市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11202, 11016, '411400', '', '', 'ShangQiuShi', '商丘市', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13017, 11202, '411401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13018, 11202, '411402', '', '', 'LiangYuanQu', '梁园区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13019, 11202, '411403', '', '', '睢YangQu', '睢阳区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13020, 11202, '411421', '', '', 'MinQuanXian', '民权县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13021, 11202, '411422', '', '', '睢　Xian', '睢　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13022, 11202, '411423', '', '', 'NingLingXian', '宁陵县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13023, 11202, '411424', '', '', '柘ChengXian', '柘城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13024, 11202, '411425', '', '', 'YuChengXian', '虞城县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13025, 11202, '411426', '', '', 'XiaYiXian', '夏邑县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13026, 11202, '411481', '', '', 'YongChengShi', '永城市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11203, 11016, '411500', '', '', 'XinYangShi', '信阳市', '', '', 4, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13027, 11203, '411501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13028, 11203, '411502', '', '', 'ShiHeQu', '师河区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13029, 11203, '411503', '', '', 'PingQiaoQu', '平桥区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13030, 11203, '411521', '', '', 'LuoShanXian', '罗山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13031, 11203, '411522', '', '', 'GuangShanXian', '光山县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13032, 11203, '411523', '', '', 'Xin　Xian', '新　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13033, 11203, '411524', '', '', 'ShangChengXian', '商城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13034, 11203, '411525', '', '', 'GuShiXian', '固始县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13035, 11203, '411526', '', '', '潢ChuanXian', '潢川县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13036, 11203, '411527', '', '', 'HuaiBinXian', '淮滨县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13037, 11203, '411528', '', '', 'Xi　Xian', '息　县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11204, 11016, '411600', '', '', 'ZhouKouShi', '周口市', '', '', 4, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13038, 11204, '411601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13039, 11204, '411602', '', '', 'ChuanHuiQu', '川汇区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13040, 11204, '411621', '', '', 'FuGouXian', '扶沟县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13041, 11204, '411622', '', '', 'XiHuaXian', '西华县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13042, 11204, '411623', '', '', 'ShangShuiXian', '商水县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13043, 11204, '411624', '', '', 'ShenQiuXian', '沈丘县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13044, 11204, '411625', '', '', 'DanChengXian', '郸城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13045, 11204, '411626', '', '', 'HuaiYangXian', '淮阳县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13046, 11204, '411627', '', '', 'TaiKangXian', '太康县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13047, 11204, '411628', '', '', 'LuYiXian', '鹿邑县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13048, 11204, '411681', '', '', 'XiangChengShi', '项城市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11205, 11016, '411700', '', '', 'ZhuMaDianShi', '驻马店市', '', '', 4, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13049, 11205, '411701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13050, 11205, '411702', '', '', '驿ChengQu', '驿城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13051, 11205, '411721', '', '', 'XiPingXian', '西平县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13052, 11205, '411722', '', '', 'ShangCaiXian', '上蔡县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13053, 11205, '411723', '', '', 'PingYuXian', '平舆县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13054, 11205, '411724', '', '', 'ZhengYangXian', '正阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13055, 11205, '411725', '', '', 'QueShanXian', '确山县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13056, 11205, '411726', '', '', 'MiYangXian', '泌阳县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13057, 11205, '411727', '', '', 'RuNanXian', '汝南县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13058, 11205, '411728', '', '', 'SuiPingXian', '遂平县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13059, 11205, '411729', '', '', 'XinCaiXian', '新蔡县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11017, 10048, '420000', '', '', 'HuBei', '湖北', '', '', 3, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11206, 11017, '420100', '', '', 'WuHanShi', '武汉市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13060, 11206, '420101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13061, 11206, '420102', '', '', 'JiangAnQu', '江岸区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13062, 11206, '420103', '', '', 'JiangHanQu', '江汉区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13063, 11206, '420104', '', '', 'QiaoKouQu', '乔口区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13064, 11206, '420105', '', '', 'HanYangQu', '汉阳区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13065, 11206, '420106', '', '', 'WuChangQu', '武昌区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13066, 11206, '420107', '', '', 'QingShanQu', '青山区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13067, 11206, '420111', '', '', 'HongShanQu', '洪山区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13068, 11206, '420112', '', '', 'DongXiHuQu', '东西湖区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13069, 11206, '420113', '', '', 'HanNanQu', '汉南区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13070, 11206, '420114', '', '', 'CaiDianQu', '蔡甸区', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13071, 11206, '420115', '', '', 'JiangXiaQu', '江夏区', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13072, 11206, '420116', '', '', 'Huang陂Qu', '黄陂区', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13073, 11206, '420117', '', '', 'XinZhouQu', '新洲区', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11207, 11017, '420200', '', '', 'HuangShiShi', '黄石市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13074, 11207, '420201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13075, 11207, '420202', '', '', 'HuangShiGangQu', '黄石港区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13076, 11207, '420203', '', '', 'XiSaiShanQu', '西塞山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13077, 11207, '420204', '', '', 'XiaLuQu', '下陆区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13078, 11207, '420205', '', '', 'TieShanQu', '铁山区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13079, 11207, '420222', '', '', 'YangXinXian', '阳新县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13080, 11207, '420281', '', '', 'DaYeShi', '大冶市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11208, 11017, '420300', '', '', 'ShiYanShi', '十堰市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13081, 11208, '420301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13082, 11208, '420302', '', '', 'MaoJianQu', '茅箭区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13083, 11208, '420303', '', '', 'ZhangWanQu', '张湾区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13084, 11208, '420321', '', '', 'Yun　Xian', '郧　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13085, 11208, '420322', '', '', 'YunXiXian', '郧西县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13086, 11208, '420323', '', '', 'ZhuShanXian', '竹山县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13087, 11208, '420324', '', '', 'ZhuXiXian', '竹溪县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13088, 11208, '420325', '', '', 'Fang　Xian', '房　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13089, 11208, '420381', '', '', 'DanJiangKouShi', '丹江口市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11209, 11017, '420500', '', '', 'YiChangShi', '宜昌市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13090, 11209, '420501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13091, 11209, '420502', '', '', 'XiLingQu', '西陵区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13092, 11209, '420503', '', '', 'WuJiaGangQu', '伍家岗区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13093, 11209, '420504', '', '', 'DianJunQu', '点军区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13094, 11209, '420505', '', '', '猇TingQu', '猇亭区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13095, 11209, '420506', '', '', 'YiLingQu', '夷陵区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13096, 11209, '420525', '', '', 'YuanAnXian', '远安县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13097, 11209, '420526', '', '', 'XingShanXian', '兴山县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13098, 11209, '420527', '', '', '秭GuiXian', '秭归县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13099, 11209, '420528', '', '', 'ChangYangTuJiaZuZiZhiXian', '长阳土家族自治县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13100, 11209, '420529', '', '', 'WuFengTuJiaZuZiZhiXian', '五峰土家族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13101, 11209, '420581', '', '', 'YiDuShi', '宜都市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13102, 11209, '420582', '', '', 'DangYangShi', '当阳市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13103, 11209, '420583', '', '', 'ZhiJiangShi', '枝江市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11210, 11017, '420600', '', '', 'XiangFanShi', '襄樊市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13104, 11210, '420601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13105, 11210, '420602', '', '', 'XiangChengQu', '襄城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13106, 11210, '420606', '', '', 'FanChengQu', '樊城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13107, 11210, '420607', '', '', 'XiangYangQu', '襄阳区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13108, 11210, '420624', '', '', 'NanZhangXian', '南漳县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13109, 11210, '420625', '', '', 'GuChengXian', '谷城县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13110, 11210, '420626', '', '', 'BaoKangXian', '保康县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13111, 11210, '420682', '', '', 'LaoHeKouShi', '老河口市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13112, 11210, '420683', '', '', 'ZaoYangShi', '枣阳市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13113, 11210, '420684', '', '', 'YiChengShi', '宜城市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11211, 11017, '420700', '', '', 'EZhouShi', '鄂州市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13114, 11211, '420701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13115, 11211, '420702', '', '', 'LiangZiHuQu', '梁子湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13116, 11211, '420703', '', '', 'HuaRongQu', '华容区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13117, 11211, '420704', '', '', 'EChengQu', '鄂城区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11212, 11017, '420800', '', '', 'JingMenShi', '荆门市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13118, 11212, '420801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13119, 11212, '420802', '', '', 'DongBaoQu', '东宝区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13120, 11212, '420804', '', '', 'DuoDaoQu', '掇刀区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13121, 11212, '420821', '', '', 'JingShanXian', '京山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13122, 11212, '420822', '', '', 'ShaYangXian', '沙洋县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13123, 11212, '420881', '', '', 'ZhongXiangShi', '钟祥市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11213, 11017, '420900', '', '', 'XiaoGanShi', '孝感市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13124, 11213, '420901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13125, 11213, '420902', '', '', 'XiaoNanQu', '孝南区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13126, 11213, '420921', '', '', 'XiaoChangXian', '孝昌县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13127, 11213, '420922', '', '', 'DaWuXian', '大悟县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13128, 11213, '420923', '', '', 'YunMengXian', '云梦县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13129, 11213, '420981', '', '', 'YingChengShi', '应城市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13130, 11213, '420982', '', '', 'AnLuShi', '安陆市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13131, 11213, '420984', '', '', 'HanChuanShi', '汉川市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11214, 11017, '421000', '', '', 'JingZhouShi', '荆州市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13132, 11214, '421001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13133, 11214, '421002', '', '', 'ShaShiQu', '沙市区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13134, 11214, '421003', '', '', 'JingZhouQu', '荆州区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13135, 11214, '421022', '', '', 'GongAnXian', '公安县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13136, 11214, '421023', '', '', 'JianLiXian', '监利县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13137, 11214, '421024', '', '', 'JiangLingXian', '江陵县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13138, 11214, '421081', '', '', 'ShiShouShi', '石首市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13139, 11214, '421083', '', '', 'HongHuShi', '洪湖市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13140, 11214, '421087', '', '', 'SongZiShi', '松滋市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11215, 11017, '421100', '', '', 'HuangGangShi', '黄冈市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13141, 11215, '421101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13142, 11215, '421102', '', '', 'HuangZhouQu', '黄州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13143, 11215, '421121', '', '', 'TuanFengXian', '团风县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13144, 11215, '421122', '', '', 'HongAnXian', '红安县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13145, 11215, '421123', '', '', 'LuoTianXian', '罗田县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13146, 11215, '421124', '', '', 'YingShanXian', '英山县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13147, 11215, '421125', '', '', '浠ShuiXian', '浠水县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13148, 11215, '421126', '', '', '蕲ChunXian', '蕲春县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13149, 11215, '421127', '', '', 'HuangMeiXian', '黄梅县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13150, 11215, '421181', '', '', 'MaChengShi', '麻城市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13151, 11215, '421182', '', '', 'WuXueShi', '武穴市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11216, 11017, '421200', '', '', 'XianNingShi', '咸宁市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13152, 11216, '421201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13153, 11216, '421202', '', '', 'XianAnQu', '咸安区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13154, 11216, '421221', '', '', 'JiaYuXian', '嘉鱼县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13155, 11216, '421222', '', '', 'TongChengXian', '通城县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13156, 11216, '421223', '', '', 'ChongYangXian', '崇阳县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13157, 11216, '421224', '', '', 'TongShanXian', '通山县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13158, 11216, '421281', '', '', 'ChiBiShi', '赤壁市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11217, 11017, '421300', '', '', 'SuiZhouShi', '随州市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13159, 11217, '421301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13160, 11217, '421302', '', '', 'ZengDuQu', '曾都区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13161, 11217, '421381', '', '', 'GuangShuiShi', '广水市', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11218, 11017, '422800', '', '', 'EnShiTuJiaZuMiaoZuZiZhiZhou', '恩施土家族苗族自治州', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13162, 11218, '422801', '', '', 'EnShiShi', '恩施市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13163, 11218, '422802', '', '', 'LiChuanShi', '利川市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13164, 11218, '422822', '', '', 'JianShiXian', '建始县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13165, 11218, '422823', '', '', 'BaDongXian', '巴东县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13166, 11218, '422825', '', '', 'XuanEnXian', '宣恩县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13167, 11218, '422826', '', '', 'XianFengXian', '咸丰县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13168, 11218, '422827', '', '', 'LaiFengXian', '来凤县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13169, 11218, '422828', '', '', 'HeFengXian', '鹤峰县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11219, 11017, '429000', '', '', 'ShengZhiXiaXingZhengDanWei', '省直辖行政单位', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13170, 11219, '429004', '', '', 'XianTaoShi', '仙桃市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13171, 11219, '429005', '', '', 'QianJiangShi', '潜江市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13172, 11219, '429006', '', '', 'TianMenShi', '天门市', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13173, 11219, '429021', '', '', 'ShenNongJiaLinQu', '神农架林区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11018, 10048, '430000', '', '', 'HuNan', '湖南', '', '', 3, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11220, 11018, '430100', '', '', 'ChangShaShi', '长沙市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13174, 11220, '430101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13175, 11220, '430102', '', '', '芙RongQu', '芙蓉区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13176, 11220, '430103', '', '', 'TianXinQu', '天心区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13177, 11220, '430104', '', '', 'YueLuQu', '岳麓区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13178, 11220, '430105', '', '', 'KaiFuQu', '开福区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13179, 11220, '430111', '', '', 'YuHuaQu', '雨花区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13180, 11220, '430121', '', '', 'ChangShaXian', '长沙县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13181, 11220, '430122', '', '', 'WangChengXian', '望城县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13182, 11220, '430124', '', '', 'NingXiangXian', '宁乡县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13183, 11220, '430181', '', '', '浏YangShi', '浏阳市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11221, 11018, '430200', '', '', 'ZhuZhouShi', '株洲市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13184, 11221, '430201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13185, 11221, '430202', '', '', 'HeTangQu', '荷塘区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13186, 11221, '430203', '', '', 'Lu淞Qu', '芦淞区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13187, 11221, '430204', '', '', 'ShiFengQu', '石峰区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13188, 11221, '430211', '', '', 'TianYuanQu', '天元区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13189, 11221, '430221', '', '', 'ZhuZhouXian', '株洲县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13190, 11221, '430223', '', '', '攸　Xian', '攸　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13191, 11221, '430224', '', '', 'ChaLingXian', '茶陵县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13192, 11221, '430225', '', '', 'YanLingXian', '炎陵县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13193, 11221, '430281', '', '', '醴LingShi', '醴陵市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11222, 11018, '430300', '', '', 'XiangTanShi', '湘潭市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13194, 11222, '430301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13195, 11222, '430302', '', '', 'YuHuQu', '雨湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13196, 11222, '430304', '', '', 'YueTangQu', '岳塘区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13197, 11222, '430321', '', '', 'XiangTanXian', '湘潭县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13198, 11222, '430381', '', '', 'XiangXiangShi', '湘乡市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13199, 11222, '430382', '', '', 'ShaoShanShi', '韶山市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11223, 11018, '430400', '', '', 'HengYangShi', '衡阳市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13200, 11223, '430401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13201, 11223, '430405', '', '', 'Zhu晖Qu', '珠晖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13202, 11223, '430406', '', '', 'YanFengQu', '雁峰区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13203, 11223, '430407', '', '', 'ShiGuQu', '石鼓区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13204, 11223, '430408', '', '', 'ZhengXiangQu', '蒸湘区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13205, 11223, '430412', '', '', 'NanYueQu', '南岳区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13206, 11223, '430421', '', '', 'HengYangXian', '衡阳县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13207, 11223, '430422', '', '', 'HengNanXian', '衡南县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13208, 11223, '430423', '', '', 'HengShanXian', '衡山县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13209, 11223, '430424', '', '', 'HengDongXian', '衡东县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13210, 11223, '430426', '', '', 'QiDongXian', '祁东县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13211, 11223, '430481', '', '', '耒YangShi', '耒阳市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13212, 11223, '430482', '', '', 'ChangNingShi', '常宁市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11224, 11018, '430500', '', '', 'ShaoYangShi', '邵阳市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13213, 11224, '430501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13214, 11224, '430502', '', '', 'ShuangQingQu', '双清区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13215, 11224, '430503', '', '', 'DaXiangQu', '大祥区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13216, 11224, '430511', '', '', 'BeiTaQu', '北塔区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13217, 11224, '430521', '', '', 'ShaoDongXian', '邵东县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13218, 11224, '430522', '', '', 'XinShaoXian', '新邵县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13219, 11224, '430523', '', '', 'ShaoYangXian', '邵阳县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13220, 11224, '430524', '', '', 'LongHuiXian', '隆回县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13221, 11224, '430525', '', '', 'DongKouXian', '洞口县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13222, 11224, '430527', '', '', 'SuiNingXian', '绥宁县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13223, 11224, '430528', '', '', 'XinNingXian', '新宁县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13224, 11224, '430529', '', '', 'ChengBuMiaoZuZiZhiXian', '城步苗族自治县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13225, 11224, '430581', '', '', 'WuGangShi', '武冈市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11225, 11018, '430600', '', '', 'YueYangShi', '岳阳市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13226, 11225, '430601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13227, 11225, '430602', '', '', 'YueYangLouQu', '岳阳楼区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13228, 11225, '430603', '', '', 'YunXiQu', '云溪区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13229, 11225, '430611', '', '', 'JunShanQu', '君山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13230, 11225, '430621', '', '', 'YueYangXian', '岳阳县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13231, 11225, '430623', '', '', 'HuaRongXian', '华容县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13232, 11225, '430624', '', '', 'XiangYinXian', '湘阴县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13233, 11225, '430626', '', '', 'PingJiangXian', '平江县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13234, 11225, '430681', '', '', '汨LuoShi', '汨罗市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13235, 11225, '430682', '', '', 'LinXiangShi', '临湘市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11226, 11018, '430700', '', '', 'ChangDeShi', '常德市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13236, 11226, '430701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13237, 11226, '430702', '', '', 'WuLingQu', '武陵区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13238, 11226, '430703', '', '', 'DingChengQu', '鼎城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13239, 11226, '430721', '', '', 'AnXiangXian', '安乡县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13240, 11226, '430722', '', '', 'HanShouXian', '汉寿县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13241, 11226, '430723', '', '', '澧　Xian', '澧　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13242, 11226, '430724', '', '', 'Lin澧Xian', '临澧县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13243, 11226, '430725', '', '', 'TaoYuanXian', '桃源县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13244, 11226, '430726', '', '', 'ShiMenXian', '石门县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13245, 11226, '430781', '', '', 'JinShiShi', '津市市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11227, 11018, '430800', '', '', 'ZhangJiaJieShi', '张家界市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13246, 11227, '430801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13247, 11227, '430802', '', '', 'YongDingQu', '永定区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13248, 11227, '430811', '', '', 'WuLingYuanQu', '武陵源区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13249, 11227, '430821', '', '', 'CiLiXian', '慈利县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13250, 11227, '430822', '', '', 'SangZhiXian', '桑植县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11228, 11018, '430900', '', '', 'YiYangShi', '益阳市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13251, 11228, '430901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13252, 11228, '430902', '', '', 'ZiYangQu', '资阳区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13253, 11228, '430903', '', '', 'HeShanQu', '赫山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13254, 11228, '430921', '', '', 'Nan　Xian', '南　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13255, 11228, '430922', '', '', 'TaoJiangXian', '桃江县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13256, 11228, '430923', '', '', 'AnHuaXian', '安化县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13257, 11228, '430981', '', '', '沅JiangShi', '沅江市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11229, 11018, '431000', '', '', 'ChenZhouShi', '郴州市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13258, 11229, '431001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13259, 11229, '431002', '', '', 'BeiHuQu', '北湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13260, 11229, '431003', '', '', 'SuXianQu', '苏仙区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13261, 11229, '431021', '', '', 'GuiYangXian', '桂阳县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13262, 11229, '431022', '', '', 'YiZhangXian', '宜章县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13263, 11229, '431023', '', '', 'YongXingXian', '永兴县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13264, 11229, '431024', '', '', 'JiaHeXian', '嘉禾县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13265, 11229, '431025', '', '', 'LinWuXian', '临武县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13266, 11229, '431026', '', '', 'RuChengXian', '汝城县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13267, 11229, '431027', '', '', 'GuiDongXian', '桂东县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13268, 11229, '431028', '', '', 'AnRenXian', '安仁县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13269, 11229, '431081', '', '', 'ZiXingShi', '资兴市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11230, 11018, '431100', '', '', 'YongZhouShi', '永州市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13270, 11230, '431101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13271, 11230, '431102', '', '', 'ZhiShanQu', '芝山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13272, 11230, '431103', '', '', 'LengShuiTanQu', '冷水滩区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13273, 11230, '431121', '', '', 'QiYangXian', '祁阳县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13274, 11230, '431122', '', '', 'DongAnXian', '东安县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13275, 11230, '431123', '', '', 'ShuangPaiXian', '双牌县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13276, 11230, '431124', '', '', 'Dao　Xian', '道　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13277, 11230, '431125', '', '', 'JiangYongXian', '江永县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13278, 11230, '431126', '', '', 'NingYuanXian', '宁远县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13279, 11230, '431127', '', '', 'LanShanXian', '蓝山县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13280, 11230, '431128', '', '', 'XinTianXian', '新田县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13281, 11230, '431129', '', '', 'JiangHuaYaoZuZiZhiXian', '江华瑶族自治县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11231, 11018, '431200', '', '', 'HuaiHuaShi', '怀化市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13282, 11231, '431201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13283, 11231, '431202', '', '', 'HeChengQu', '鹤城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13284, 11231, '431221', '', '', 'ZhongFangXian', '中方县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13285, 11231, '431222', '', '', '沅LingXian', '沅陵县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13286, 11231, '431223', '', '', 'ChenXiXian', '辰溪县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13287, 11231, '431224', '', '', '溆PuXian', '溆浦县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13288, 11231, '431225', '', '', 'HuiTongXian', '会同县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13289, 11231, '431226', '', '', 'MaYangMiaoZuZiZhiXian', '麻阳苗族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13290, 11231, '431227', '', '', 'XinHuangDongZuZiZhiXian', '新晃侗族自治县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13291, 11231, '431228', '', '', '芷JiangDongZuZiZhiXian', '芷江侗族自治县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13292, 11231, '431229', '', '', 'JingZhouMiaoZuDongZuZiZhiXian', '靖州苗族侗族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13293, 11231, '431230', '', '', 'TongDaoDongZuZiZhiXian', '通道侗族自治县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13294, 11231, '431281', '', '', 'HongJiangShi', '洪江市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11232, 11018, '431300', '', '', 'LouDiShi', '娄底市', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13295, 11232, '431301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13296, 11232, '431302', '', '', 'LouXingQu', '娄星区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13297, 11232, '431321', '', '', 'ShuangFengXian', '双峰县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13298, 11232, '431322', '', '', 'XinHuaXian', '新化县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13299, 11232, '431381', '', '', 'LengShuiJiangShi', '冷水江市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13300, 11232, '431382', '', '', 'LianYuanShi', '涟源市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11233, 11018, '433100', '', '', 'XiangXiTuJiaZuMiaoZuZiZhiZhou', '湘西土家族苗族自治州', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13301, 11233, '433101', '', '', 'JiShouShi', '吉首市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13302, 11233, '433122', '', '', '泸XiXian', '泸溪县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13303, 11233, '433123', '', '', 'FengHuangXian', '凤凰县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13304, 11233, '433124', '', '', 'HuaYuanXian', '花垣县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13305, 11233, '433125', '', '', 'BaoJingXian', '保靖县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13306, 11233, '433126', '', '', 'GuZhangXian', '古丈县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13307, 11233, '433127', '', '', 'YongShunXian', '永顺县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13308, 11233, '433130', '', '', 'LongShanXian', '龙山县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11019, 10048, '440000', '', '', 'GuangDong', '广东', '', '', 3, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11234, 11019, '440100', '', '', 'GuangZhouShi', '广州市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13309, 11234, '440101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13310, 11234, '440102', '', '', 'DongShanQu', '东山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13311, 11234, '440103', '', '', 'LiWanQu', '荔湾区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13312, 11234, '440104', '', '', 'YueXiuQu', '越秀区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13313, 11234, '440105', '', '', 'HaiZhuQu', '海珠区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13314, 11234, '440106', '', '', 'TianHeQu', '天河区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13315, 11234, '440107', '', '', 'FangCunQu', '芳村区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13316, 11234, '440111', '', '', 'BaiYunQu', '白云区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13317, 11234, '440112', '', '', 'HuangPuQu', '黄埔区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13318, 11234, '440113', '', '', 'Fan禺Qu', '番禺区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13319, 11234, '440114', '', '', 'HuaDuQu', '花都区', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13320, 11234, '440183', '', '', 'ZengChengShi', '增城市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13321, 11234, '440184', '', '', 'CongHuaShi', '从化市', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11235, 11019, '440200', '', '', 'ShaoGuanShi', '韶关市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13322, 11235, '440201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13323, 11235, '440203', '', '', 'WuJiangQu', '武江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13324, 11235, '440204', '', '', '浈JiangQu', '浈江区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13325, 11235, '440205', '', '', 'QuJiangQu', '曲江区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13326, 11235, '440222', '', '', 'ShiXingXian', '始兴县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13327, 11235, '440224', '', '', 'RenHuaXian', '仁化县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13328, 11235, '440229', '', '', 'WengYuanXian', '翁源县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13329, 11235, '440232', '', '', 'RuYuanYaoZuZiZhiXian', '乳源瑶族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13330, 11235, '440233', '', '', 'XinFengXian', '新丰县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13331, 11235, '440281', '', '', 'LeChangShi', '乐昌市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13332, 11235, '440282', '', '', 'NanXiongShi', '南雄市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11236, 11019, '440300', '', '', 'Shen圳Shi', '深圳市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13333, 11236, '440301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13334, 11236, '440303', '', '', 'LuoHuQu', '罗湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13335, 11236, '440304', '', '', 'FuTianQu', '福田区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13336, 11236, '440305', '', '', 'NanShanQu', '南山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13337, 11236, '440306', '', '', 'BaoAnQu', '宝安区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13338, 11236, '440307', '', '', 'LongGangQu', '龙岗区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13339, 11236, '440308', '', '', 'YanTianQu', '盐田区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11237, 11019, '440400', '', '', 'ZhuHaiShi', '珠海市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13340, 11237, '440401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13341, 11237, '440402', '', '', 'XiangZhouQu', '香洲区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13342, 11237, '440403', '', '', 'DouMenQu', '斗门区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13343, 11237, '440404', '', '', 'JinWanQu', '金湾区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11238, 11019, '440500', '', '', 'ShanTouShi', '汕头市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13344, 11238, '440501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13345, 11238, '440507', '', '', 'LongHuQu', '龙湖区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13346, 11238, '440511', '', '', 'JinPingQu', '金平区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13347, 11238, '440512', '', '', '濠JiangQu', '濠江区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13348, 11238, '440513', '', '', 'ChaoYangQu', '潮阳区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13349, 11238, '440514', '', '', 'ChaoNanQu', '潮南区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13350, 11238, '440515', '', '', 'ChengHaiQu', '澄海区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13351, 11238, '440523', '', '', 'NanAoXian', '南澳县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11239, 11019, '440600', '', '', 'FoShanShi', '佛山市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13352, 11239, '440601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13353, 11239, '440604', '', '', '禅ChengQu', '禅城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13354, 11239, '440605', '', '', 'NanHaiQu', '南海区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13355, 11239, '440606', '', '', 'ShunDeQu', '顺德区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13356, 11239, '440607', '', '', 'SanShuiQu', '三水区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13357, 11239, '440608', '', '', 'GaoMingQu', '高明区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11240, 11019, '440700', '', '', 'JiangMenShi', '江门市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13358, 11240, '440701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13359, 11240, '440703', '', '', 'PengJiangQu', '蓬江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13360, 11240, '440704', '', '', 'JiangHaiQu', '江海区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13361, 11240, '440705', '', '', 'XinHuiQu', '新会区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13362, 11240, '440781', '', '', 'TaiShanShi', '台山市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13363, 11240, '440783', '', '', 'KaiPingShi', '开平市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13364, 11240, '440784', '', '', 'HeShanShi', '鹤山市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13365, 11240, '440785', '', '', 'EnPingShi', '恩平市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11241, 11019, '440800', '', '', 'ZhanJiangShi', '湛江市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13366, 11241, '440801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13367, 11241, '440802', '', '', 'ChiKanQu', '赤坎区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13368, 11241, '440803', '', '', 'XiaShanQu', '霞山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13369, 11241, '440804', '', '', 'PoTouQu', '坡头区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13370, 11241, '440811', '', '', 'MaZhangQu', '麻章区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13371, 11241, '440823', '', '', 'SuiXiXian', '遂溪县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13372, 11241, '440825', '', '', 'XuWenXian', '徐闻县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13373, 11241, '440881', '', '', 'LianJiangShi', '廉江市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13374, 11241, '440882', '', '', 'LeiZhouShi', '雷州市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13375, 11241, '440883', '', '', 'WuChuanShi', '吴川市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11242, 11019, '440900', '', '', 'MaoMingShi', '茂名市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13376, 11242, '440901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13377, 11242, '440902', '', '', 'MaoNanQu', '茂南区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13378, 11242, '440903', '', '', 'MaoGangQu', '茂港区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13379, 11242, '440923', '', '', 'DianBaiXian', '电白县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13380, 11242, '440981', '', '', 'GaoZhouShi', '高州市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13381, 11242, '440982', '', '', 'HuaZhouShi', '化州市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13382, 11242, '440983', '', '', 'XinYiShi', '信宜市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11243, 11019, '441200', '', '', 'ZhaoQingShi', '肇庆市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13383, 11243, '441201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13384, 11243, '441202', '', '', 'DuanZhouQu', '端州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13385, 11243, '441203', '', '', 'DingHuQu', '鼎湖区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13386, 11243, '441223', '', '', 'GuangNingXian', '广宁县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13387, 11243, '441224', '', '', 'HuaiJiXian', '怀集县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13388, 11243, '441225', '', '', 'FengKaiXian', '封开县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13389, 11243, '441226', '', '', 'DeQingXian', '德庆县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13390, 11243, '441283', '', '', 'GaoYaoShi', '高要市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13391, 11243, '441284', '', '', 'SiHuiShi', '四会市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11244, 11019, '441300', '', '', 'HuiZhouShi', '惠州市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13392, 11244, '441301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13393, 11244, '441302', '', '', 'HuiChengQu', '惠城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13394, 11244, '441303', '', '', 'HuiYangQu', '惠阳区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13395, 11244, '441322', '', '', 'BoLuoXian', '博罗县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13396, 11244, '441323', '', '', 'HuiDongXian', '惠东县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13397, 11244, '441324', '', '', 'LongMenXian', '龙门县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11245, 11019, '441400', '', '', 'MeiZhouShi', '梅州市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13398, 11245, '441401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13399, 11245, '441402', '', '', 'MeiJiangQu', '梅江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13400, 11245, '441421', '', '', 'Mei　Xian', '梅　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13401, 11245, '441422', '', '', 'DaPuXian', '大埔县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13402, 11245, '441423', '', '', 'FengShunXian', '丰顺县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13403, 11245, '441424', '', '', 'WuHuaXian', '五华县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13404, 11245, '441426', '', '', 'PingYuanXian', '平远县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13405, 11245, '441427', '', '', 'JiaoLingXian', '蕉岭县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13406, 11245, '441481', '', '', 'XingNingShi', '兴宁市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11246, 11019, '441500', '', '', 'ShanWeiShi', '汕尾市', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13407, 11246, '441501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13408, 11246, '441502', '', '', 'Cheng　Qu', '城　区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13409, 11246, '441521', '', '', 'HaiFengXian', '海丰县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13410, 11246, '441523', '', '', 'LuHeXian', '陆河县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13411, 11246, '441581', '', '', 'LuFengShi', '陆丰市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11247, 11019, '441600', '', '', 'HeYuanShi', '河源市', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13412, 11247, '441601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13413, 11247, '441602', '', '', 'YuanChengQu', '源城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13414, 11247, '441621', '', '', 'ZiJinXian', '紫金县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13415, 11247, '441622', '', '', 'LongChuanXian', '龙川县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13416, 11247, '441623', '', '', 'LianPingXian', '连平县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13417, 11247, '441624', '', '', 'HePingXian', '和平县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13418, 11247, '441625', '', '', 'DongYuanXian', '东源县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11248, 11019, '441700', '', '', 'YangJiangShi', '阳江市', '', '', 4, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13419, 11248, '441701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13420, 11248, '441702', '', '', 'JiangChengQu', '江城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13421, 11248, '441721', '', '', 'YangXiXian', '阳西县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13422, 11248, '441723', '', '', 'YangDongXian', '阳东县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13423, 11248, '441781', '', '', 'YangChunShi', '阳春市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11249, 11019, '441800', '', '', 'QingYuanShi', '清远市', '', '', 4, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13424, 11249, '441801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13425, 11249, '441802', '', '', 'QingChengQu', '清城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13426, 11249, '441821', '', '', 'FoGangXian', '佛冈县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13427, 11249, '441823', '', '', 'YangShanXian', '阳山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13428, 11249, '441825', '', '', 'LianShanZhuangZuYaoZuZiZhiXian', '连山壮族瑶族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13429, 11249, '441826', '', '', 'LianNanYaoZuZiZhiXian', '连南瑶族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13430, 11249, '441827', '', '', 'QingXinXian', '清新县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13431, 11249, '441881', '', '', 'YingDeShi', '英德市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13432, 11249, '441882', '', '', 'LianZhouShi', '连州市', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11250, 11019, '441900', '', '', 'Dong莞Shi', '东莞市', '', '', 4, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11251, 11019, '442000', '', '', 'ZhongShanShi', '中山市', '', '', 4, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11252, 11019, '445100', '', '', 'ChaoZhouShi', '潮州市', '', '', 4, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13433, 11252, '445101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13434, 11252, '445102', '', '', 'XiangQiaoQu', '湘桥区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13435, 11252, '445121', '', '', 'ChaoAnXian', '潮安县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13436, 11252, '445122', '', '', 'RaoPingXian', '饶平县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11253, 11019, '445200', '', '', 'JieYangShi', '揭阳市', '', '', 4, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13437, 11253, '445201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13438, 11253, '445202', '', '', '榕ChengQu', '榕城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13439, 11253, '445221', '', '', 'JieDongXian', '揭东县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13440, 11253, '445222', '', '', 'JieXiXian', '揭西县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13441, 11253, '445224', '', '', 'HuiLaiXian', '惠来县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13442, 11253, '445281', '', '', 'PuNingShi', '普宁市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11254, 11019, '445300', '', '', 'YunFuShi', '云浮市', '', '', 4, 21,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13443, 11254, '445301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13444, 11254, '445302', '', '', 'YunChengQu', '云城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13445, 11254, '445321', '', '', 'XinXingXian', '新兴县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13446, 11254, '445322', '', '', 'YuNanXian', '郁南县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13447, 11254, '445323', '', '', 'YunAnXian', '云安县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13448, 11254, '445381', '', '', 'LuoDingShi', '罗定市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11020, 10048, '450000', '', '', 'GuangXiZhuangZu', '广西壮族', '', '', 3, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11255, 11020, '450100', '', '', 'NanNingShi', '南宁市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13449, 11255, '450101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13450, 11255, '450102', '', '', 'XingNingQu', '兴宁区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13451, 11255, '450103', '', '', 'QingXiuQu', '青秀区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13452, 11255, '450105', '', '', 'JiangNanQu', '江南区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13453, 11255, '450107', '', '', 'XiXiangTangQu', '西乡塘区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13454, 11255, '450108', '', '', 'LiangQingQu', '良庆区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13455, 11255, '450109', '', '', '邕NingQu', '邕宁区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13456, 11255, '450122', '', '', 'WuMingXian', '武鸣县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13457, 11255, '450123', '', '', 'LongAnXian', '隆安县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13458, 11255, '450124', '', '', 'MaShanXian', '马山县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13459, 11255, '450125', '', '', 'ShangLinXian', '上林县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13460, 11255, '450126', '', '', 'BinYangXian', '宾阳县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13461, 11255, '450127', '', '', 'Heng　Xian', '横　县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11256, 11020, '450200', '', '', 'LiuZhouShi', '柳州市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13462, 11256, '450201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13463, 11256, '450202', '', '', 'ChengZhongQu', '城中区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13464, 11256, '450203', '', '', 'YuFengQu', '鱼峰区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13465, 11256, '450204', '', '', 'LiuNanQu', '柳南区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13466, 11256, '450205', '', '', 'LiuBeiQu', '柳北区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13467, 11256, '450221', '', '', 'LiuJiangXian', '柳江县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13468, 11256, '450222', '', '', 'LiuChengXian', '柳城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13469, 11256, '450223', '', '', 'LuZhaiXian', '鹿寨县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13470, 11256, '450224', '', '', 'RongAnXian', '融安县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13471, 11256, '450225', '', '', 'RongShuiMiaoZuZiZhiXian', '融水苗族自治县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13472, 11256, '450226', '', '', 'SanJiangDongZuZiZhiXian', '三江侗族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11257, 11020, '450300', '', '', 'GuiLinShi', '桂林市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13473, 11257, '450301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13474, 11257, '450302', '', '', 'XiuFengQu', '秀峰区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13475, 11257, '450303', '', '', 'DieCaiQu', '叠彩区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13476, 11257, '450304', '', '', 'XiangShanQu', '象山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13477, 11257, '450305', '', '', 'QiXingQu', '七星区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13478, 11257, '450311', '', '', 'YanShanQu', '雁山区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13479, 11257, '450321', '', '', 'YangShuoXian', '阳朔县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13480, 11257, '450322', '', '', 'LinGuiXian', '临桂县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13481, 11257, '450323', '', '', 'LingChuanXian', '灵川县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13482, 11257, '450324', '', '', 'QuanZhouXian', '全州县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13483, 11257, '450325', '', '', 'XingAnXian', '兴安县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13484, 11257, '450326', '', '', 'YongFuXian', '永福县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13485, 11257, '450327', '', '', 'GuanYangXian', '灌阳县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13486, 11257, '450328', '', '', 'LongShengGeZuZiZhiXian', '龙胜各族自治县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13487, 11257, '450329', '', '', 'ZiYuanXian', '资源县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13488, 11257, '450330', '', '', 'PingLeXian', '平乐县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13489, 11257, '450331', '', '', 'LiPuXian', '荔蒲县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13490, 11257, '450332', '', '', 'GongChengYaoZuZiZhiXian', '恭城瑶族自治县', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11258, 11020, '450400', '', '', 'WuZhouShi', '梧州市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13491, 11258, '450401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13492, 11258, '450403', '', '', 'WanXiuQu', '万秀区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13493, 11258, '450404', '', '', 'DieShanQu', '蝶山区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13494, 11258, '450405', '', '', 'ChangZhouQu', '长洲区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13495, 11258, '450421', '', '', 'CangWuXian', '苍梧县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13496, 11258, '450422', '', '', 'Teng　Xian', '藤　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13497, 11258, '450423', '', '', 'MengShanXian', '蒙山县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13498, 11258, '450481', '', '', '岑XiShi', '岑溪市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11259, 11020, '450500', '', '', 'BeiHaiShi', '北海市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13499, 11259, '450501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13500, 11259, '450502', '', '', 'HaiChengQu', '海城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13501, 11259, '450503', '', '', 'YinHaiQu', '银海区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13502, 11259, '450512', '', '', 'TieShanGangQu', '铁山港区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13503, 11259, '450521', '', '', 'HePuXian', '合浦县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11260, 11020, '450600', '', '', 'FangChengGangShi', '防城港市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13504, 11260, '450601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13505, 11260, '450602', '', '', 'GangKouQu', '港口区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13506, 11260, '450603', '', '', 'FangChengQu', '防城区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13507, 11260, '450621', '', '', 'ShangSiXian', '上思县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13508, 11260, '450681', '', '', 'DongXingShi', '东兴市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11261, 11020, '450700', '', '', 'QinZhouShi', '钦州市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13509, 11261, '450701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13510, 11261, '450702', '', '', 'QinNanQu', '钦南区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13511, 11261, '450703', '', '', 'QinBeiQu', '钦北区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13512, 11261, '450721', '', '', 'LingShanXian', '灵山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13513, 11261, '450722', '', '', 'PuBeiXian', '浦北县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11262, 11020, '450800', '', '', 'GuiGangShi', '贵港市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13514, 11262, '450801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13515, 11262, '450802', '', '', 'GangBeiQu', '港北区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13516, 11262, '450803', '', '', 'GangNanQu', '港南区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13517, 11262, '450804', '', '', '覃TangQu', '覃塘区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13518, 11262, '450821', '', '', 'PingNanXian', '平南县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13519, 11262, '450881', '', '', 'GuiPingShi', '桂平市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11263, 11020, '450900', '', '', 'YuLinShi', '玉林市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13520, 11263, '450901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13521, 11263, '450902', '', '', 'YuZhouQu', '玉州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13522, 11263, '450921', '', '', 'Rong　Xian', '容　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13523, 11263, '450922', '', '', 'LuChuanXian', '陆川县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13524, 11263, '450923', '', '', 'BoBaiXian', '博白县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13525, 11263, '450924', '', '', 'XingYeXian', '兴业县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13526, 11263, '450981', '', '', 'BeiLiuShi', '北流市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11264, 11020, '451000', '', '', 'BaiSeShi', '百色市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13527, 11264, '451001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13528, 11264, '451002', '', '', 'YouJiangQu', '右江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13529, 11264, '451021', '', '', 'TianYangXian', '田阳县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13530, 11264, '451022', '', '', 'TianDongXian', '田东县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13531, 11264, '451023', '', '', 'PingGuoXian', '平果县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13532, 11264, '451024', '', '', 'DeBaoXian', '德保县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13533, 11264, '451025', '', '', 'JingXiXian', '靖西县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13534, 11264, '451026', '', '', 'NaPoXian', '那坡县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13535, 11264, '451027', '', '', 'LingYunXian', '凌云县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13536, 11264, '451028', '', '', 'LeYeXian', '乐业县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13537, 11264, '451029', '', '', 'TianLinXian', '田林县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13538, 11264, '451030', '', '', 'XiLinXian', '西林县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13539, 11264, '451031', '', '', 'LongLinGeZuZiZhiXian', '隆林各族自治县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11265, 11020, '451100', '', '', 'HeZhouShi', '贺州市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13540, 11265, '451101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13541, 11265, '451102', '', '', 'BaBuQu', '八步区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13542, 11265, '451121', '', '', 'ZhaoPingXian', '昭平县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13543, 11265, '451122', '', '', 'ZhongShanXian', '钟山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13544, 11265, '451123', '', '', 'FuChuanYaoZuZiZhiXian', '富川瑶族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11266, 11020, '451200', '', '', 'HeChiShi', '河池市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13545, 11266, '451201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13546, 11266, '451202', '', '', 'JinChengJiangQu', '金城江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13547, 11266, '451221', '', '', 'NanDanXian', '南丹县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13548, 11266, '451222', '', '', 'TianEXian', '天峨县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13549, 11266, '451223', '', '', 'FengShanXian', '凤山县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13550, 11266, '451224', '', '', 'DongLanXian', '东兰县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13551, 11266, '451225', '', '', 'LuoCheng仫LaoZuZiZhiXian', '罗城仫佬族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13552, 11266, '451226', '', '', 'HuanJiangMaoNanZuZiZhiXian', '环江毛南族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13553, 11266, '451227', '', '', 'BaMaYaoZuZiZhiXian', '巴马瑶族自治县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13554, 11266, '451228', '', '', 'DuAnYaoZuZiZhiXian', '都安瑶族自治县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13555, 11266, '451229', '', '', 'DaHuaYaoZuZiZhiXian', '大化瑶族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13556, 11266, '451281', '', '', 'YiZhouShi', '宜州市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11267, 11020, '451300', '', '', 'LaiBinShi', '来宾市', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13557, 11267, '451301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13558, 11267, '451302', '', '', 'XingBinQu', '兴宾区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13559, 11267, '451321', '', '', 'XinChengXian', '忻城县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13560, 11267, '451322', '', '', 'XiangZhouXian', '象州县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13561, 11267, '451323', '', '', 'WuXuanXian', '武宣县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13562, 11267, '451324', '', '', 'JinXiuYaoZuZiZhiXian', '金秀瑶族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13563, 11267, '451381', '', '', 'HeShanShi', '合山市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11268, 11020, '451400', '', '', 'ChongZuoShi', '崇左市', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13564, 11268, '451401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13565, 11268, '451402', '', '', 'JiangZhouQu', '江洲区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13566, 11268, '451421', '', '', 'FuSuiXian', '扶绥县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13567, 11268, '451422', '', '', 'NingMingXian', '宁明县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13568, 11268, '451423', '', '', 'LongZhouXian', '龙州县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13569, 11268, '451424', '', '', 'DaXinXian', '大新县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13570, 11268, '451425', '', '', 'TianDengXian', '天等县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13571, 11268, '451481', '', '', 'PingXiangShi', '凭祥市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11021, 10048, '460000', '', '', 'HaiNan', '海南', '', '', 3, 21,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11269, 11021, '460100', '', '', 'HaiKouShi', '海口市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13572, 11269, '460101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13573, 11269, '460105', '', '', 'XiuYingQu', '秀英区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13574, 11269, '460106', '', '', 'LongHuaQu', '龙华区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13575, 11269, '460107', '', '', 'QiongShanQu', '琼山区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13576, 11269, '460108', '', '', 'MeiLanQu', '美兰区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11270, 11021, '460200', '', '', 'SanYaShi', '三亚市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13577, 11270, '460201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11271, 11021, '469000', '', '', 'ShengZhiXiaXianJiXingZhengDanWei', '省直辖县级行政单位', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13578, 11271, '469001', '', '', 'WuZhiShanShi', '五指山市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13579, 11271, '469002', '', '', 'QiongHaiShi', '琼海市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13580, 11271, '469003', '', '', '儋ZhouShi', '儋州市', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13581, 11271, '469005', '', '', 'WenChangShi', '文昌市', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13582, 11271, '469006', '', '', 'WanNingShi', '万宁市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13583, 11271, '469007', '', '', 'DongFangShi', '东方市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13584, 11271, '469025', '', '', 'DingAnXian', '定安县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13585, 11271, '469026', '', '', 'TunChangXian', '屯昌县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13586, 11271, '469027', '', '', 'ChengMaiXian', '澄迈县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13587, 11271, '469028', '', '', 'LinGaoXian', '临高县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13588, 11271, '469030', '', '', 'BaiShaLiZuZiZhiXian', '白沙黎族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13589, 11271, '469031', '', '', 'ChangJiangLiZuZiZhiXian', '昌江黎族自治县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13590, 11271, '469033', '', '', 'LeDongLiZuZiZhiXian', '乐东黎族自治县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13591, 11271, '469034', '', '', 'LingShuiLiZuZiZhiXian', '陵水黎族自治县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13592, 11271, '469035', '', '', 'BaoTingLiZuMiaoZuZiZhiXian', '保亭黎族苗族自治县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13593, 11271, '469036', '', '', 'QiongZhongLiZuMiaoZuZiZhiXian', '琼中黎族苗族自治县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13594, 11271, '469037', '', '', 'XiShaQunDao', '西沙群岛', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13595, 11271, '469038', '', '', 'NanShaQunDao', '南沙群岛', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13596, 11271, '469039', '', '', 'ZhongShaQunDaoDeDaoJiaoJiQiHaiYu', '中沙群岛的岛礁及其海域', '', '', 5, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11022, 10048, '500000', '', '', 'ZhongQingShi', '重庆市', '', '', 3, 22,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11272, 11022, '500100', '', '', 'ZhongQingShiXiaQu', '重庆市辖区', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13597, 11272, '500101', '', '', 'WanZhouQu', '万州区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13598, 11272, '500102', '', '', 'FuLingQu', '涪陵区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13599, 11272, '500103', '', '', 'YuZhongQu', '渝中区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13600, 11272, '500104', '', '', 'DaDuKouQu', '大渡口区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13601, 11272, '500105', '', '', 'JiangBeiQu', '江北区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13602, 11272, '500106', '', '', 'ShaPingBaQu', '沙坪坝区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13603, 11272, '500107', '', '', 'JiuLongPoQu', '九龙坡区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13604, 11272, '500108', '', '', 'NanAnQu', '南岸区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13605, 11272, '500109', '', '', 'Bei碚Qu', '北碚区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13606, 11272, '500110', '', '', 'WanShengQu', '万盛区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13607, 11272, '500111', '', '', 'ShuangQiaoQu', '双桥区', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13608, 11272, '500112', '', '', 'YuBeiQu', '渝北区', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13609, 11272, '500113', '', '', 'BaNanQu', '巴南区', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13610, 11272, '500114', '', '', 'QianJiangQu', '黔江区', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13611, 11272, '500115', '', '', 'ChangShouQu', '长寿区', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11273, 11022, '500200', '', '', 'ZhongQingXian', '重庆县', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13612, 11273, '500222', '', '', '綦JiangXian', '綦江县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13613, 11273, '500223', '', '', '潼NanXian', '潼南县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13614, 11273, '500224', '', '', 'TongLiangXian', '铜梁县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13615, 11273, '500225', '', '', 'DaZuXian', '大足县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13616, 11273, '500226', '', '', 'RongChangXian', '荣昌县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13617, 11273, '500227', '', '', '璧ShanXian', '璧山县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13618, 11273, '500228', '', '', 'LiangPingXian', '梁平县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13619, 11273, '500229', '', '', 'ChengKouXian', '城口县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13620, 11273, '500230', '', '', 'FengDuXian', '丰都县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13621, 11273, '500231', '', '', 'DianJiangXian', '垫江县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13622, 11273, '500232', '', '', 'WuLongXian', '武隆县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13623, 11273, '500233', '', '', 'Zhong　Xian', '忠　县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13624, 11273, '500234', '', '', 'Kai　Xian', '开　县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13625, 11273, '500235', '', '', 'YunYangXian', '云阳县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13626, 11273, '500236', '', '', 'FengJieXian', '奉节县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13627, 11273, '500237', '', '', 'WuShanXian', '巫山县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13628, 11273, '500238', '', '', 'WuXiXian', '巫溪县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13629, 11273, '500240', '', '', 'ShiZhuTuJiaZuZiZhiXian', '石柱土家族自治县', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13630, 11273, '500241', '', '', 'XiuShanTuJiaZuMiaoZuZiZhiXian', '秀山土家族苗族自治县', '', '', 5, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13631, 11273, '500242', '', '', 'YouYangTuJiaZuMiaoZuZiZhiXian', '酉阳土家族苗族自治县', '', '', 5, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13632, 11273, '500243', '', '', 'PengShuiMiaoZuTuJiaZuZiZhiXian', '彭水苗族土家族自治县', '', '', 5, 21,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11274, 11022, '500300', '', '', 'ZhongQingShi', '重庆市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13633, 11274, '500381', '', '', 'JiangJinShi', '江津市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13634, 11274, '500382', '', '', 'HeChuanShi', '合川市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13635, 11274, '500383', '', '', 'YongChuanShi', '永川市', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13636, 11274, '500384', '', '', 'NanChuanShi', '南川市', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11023, 10048, '510000', '', '', 'SiChuan', '四川', '', '', 3, 23,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11275, 11023, '510100', '', '', 'ChengDuShi', '成都市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13637, 11275, '510101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13638, 11275, '510104', '', '', 'JinJiangQu', '锦江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13639, 11275, '510105', '', '', 'QingYangQu', '青羊区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13640, 11275, '510106', '', '', 'JinNiuQu', '金牛区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13641, 11275, '510107', '', '', 'WuHouQu', '武侯区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13642, 11275, '510108', '', '', 'ChengHuaQu', '成华区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13643, 11275, '510112', '', '', 'LongQuan驿Qu', '龙泉驿区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13644, 11275, '510113', '', '', 'QingBaiJiangQu', '青白江区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13645, 11275, '510114', '', '', 'XinDuQu', '新都区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13646, 11275, '510115', '', '', 'WenJiangQu', '温江区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13647, 11275, '510121', '', '', 'JinTangXian', '金堂县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13648, 11275, '510122', '', '', 'ShuangLiuXian', '双流县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13649, 11275, '510124', '', '', '郫　Xian', '郫　县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13650, 11275, '510129', '', '', 'DaYiXian', '大邑县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13651, 11275, '510131', '', '', 'PuJiangXian', '蒲江县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13652, 11275, '510132', '', '', 'XinJinXian', '新津县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13653, 11275, '510181', '', '', 'DuJiangYanShi', '都江堰市', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13654, 11275, '510182', '', '', 'PengZhouShi', '彭州市', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13655, 11275, '510183', '', '', '邛崃Shi', '邛崃市', '', '', 5, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13656, 11275, '510184', '', '', 'ChongZhouShi', '崇州市', '', '', 5, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11276, 11023, '510300', '', '', 'ZiGongShi', '自贡市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13657, 11276, '510301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13658, 11276, '510302', '', '', 'ZiLiuJingQu', '自流井区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13659, 11276, '510303', '', '', 'GongJingQu', '贡井区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13660, 11276, '510304', '', '', 'DaAnQu', '大安区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13661, 11276, '510311', '', '', 'YanTanQu', '沿滩区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13662, 11276, '510321', '', '', 'Rong　Xian', '荣　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13663, 11276, '510322', '', '', 'FuShunXian', '富顺县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11277, 11023, '510400', '', '', 'PanZhiHuaShi', '攀枝花市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13664, 11277, '510401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13665, 11277, '510402', '', '', 'Dong　Qu', '东　区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13666, 11277, '510403', '', '', 'Xi　Qu', '西　区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13667, 11277, '510411', '', '', 'RenHeQu', '仁和区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13668, 11277, '510421', '', '', 'MiYiXian', '米易县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13669, 11277, '510422', '', '', 'YanBianXian', '盐边县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11278, 11023, '510500', '', '', '泸ZhouShi', '泸州市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13670, 11278, '510501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13671, 11278, '510502', '', '', 'JiangYangQu', '江阳区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13672, 11278, '510503', '', '', 'NaXiQu', '纳溪区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13673, 11278, '510504', '', '', 'LongMaTanQu', '龙马潭区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13674, 11278, '510521', '', '', '泸　Xian', '泸　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13675, 11278, '510522', '', '', 'HeJiangXian', '合江县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13676, 11278, '510524', '', '', 'XuYongXian', '叙永县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13677, 11278, '510525', '', '', 'Gu蔺Xian', '古蔺县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11279, 11023, '510600', '', '', 'DeYangShi', '德阳市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13678, 11279, '510601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13679, 11279, '510603', '', '', '旌YangQu', '旌阳区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13680, 11279, '510623', '', '', 'ZhongJiangXian', '中江县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13681, 11279, '510626', '', '', 'LuoJiangXian', '罗江县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13682, 11279, '510681', '', '', 'GuangHanShi', '广汉市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13683, 11279, '510682', '', '', 'Shi邡Shi', '什邡市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13684, 11279, '510683', '', '', 'MianZhuShi', '绵竹市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11280, 11023, '510700', '', '', 'MianYangShi', '绵阳市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13685, 11280, '510701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13686, 11280, '510703', '', '', 'FuChengQu', '涪城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13687, 11280, '510704', '', '', 'YouXianQu', '游仙区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13688, 11280, '510722', '', '', 'SanTaiXian', '三台县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13689, 11280, '510723', '', '', 'YanTingXian', '盐亭县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13690, 11280, '510724', '', '', 'An　Xian', '安　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13691, 11280, '510725', '', '', '梓潼Xian', '梓潼县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13692, 11280, '510726', '', '', 'BeiChuanQiangZuZiZhiXian', '北川羌族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13693, 11280, '510727', '', '', 'PingWuXian', '平武县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13694, 11280, '510781', '', '', 'JiangYouShi', '江油市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11281, 11023, '510800', '', '', 'GuangYuanShi', '广元市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13695, 11281, '510801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13696, 11281, '510802', '', '', 'ShiZhongQu', '市中区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13697, 11281, '510811', '', '', 'YuanBaQu', '元坝区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13698, 11281, '510812', '', '', 'ChaoTianQu', '朝天区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13699, 11281, '510821', '', '', 'WangCangXian', '旺苍县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13700, 11281, '510822', '', '', 'QingChuanXian', '青川县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13701, 11281, '510823', '', '', 'JianGeXian', '剑阁县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13702, 11281, '510824', '', '', 'CangXiXian', '苍溪县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11282, 11023, '510900', '', '', 'SuiNingShi', '遂宁市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13703, 11282, '510901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13704, 11282, '510903', '', '', 'ChuanShanQu', '船山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13705, 11282, '510904', '', '', 'AnJuQu', '安居区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13706, 11282, '510921', '', '', 'PengXiXian', '蓬溪县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13707, 11282, '510922', '', '', 'SheHongXian', '射洪县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13708, 11282, '510923', '', '', 'DaYingXian', '大英县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11283, 11023, '511000', '', '', 'NeiJiangShi', '内江市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13709, 11283, '511001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13710, 11283, '511002', '', '', 'ShiZhongQu', '市中区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13711, 11283, '511011', '', '', 'DongXingQu', '东兴区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13712, 11283, '511024', '', '', 'WeiYuanXian', '威远县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13713, 11283, '511025', '', '', 'ZiZhongXian', '资中县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13714, 11283, '511028', '', '', 'LongChangXian', '隆昌县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11284, 11023, '511100', '', '', 'LeShanShi', '乐山市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13715, 11284, '511101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13716, 11284, '511102', '', '', 'ShiZhongQu', '市中区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13717, 11284, '511111', '', '', 'ShaWanQu', '沙湾区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13718, 11284, '511112', '', '', 'WuTongQiaoQu', '五通桥区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13719, 11284, '511113', '', '', 'JinKouHeQu', '金口河区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13720, 11284, '511123', '', '', '犍WeiXian', '犍为县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13721, 11284, '511124', '', '', 'JingYanXian', '井研县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13722, 11284, '511126', '', '', 'JiaJiangXian', '夹江县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13723, 11284, '511129', '', '', '沐ChuanXian', '沐川县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13724, 11284, '511132', '', '', 'EBianYiZuZiZhiXian', '峨边彝族自治县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13725, 11284, '511133', '', '', 'MaBianYiZuZiZhiXian', '马边彝族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13726, 11284, '511181', '', '', 'EMeiShanShi', '峨眉山市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11285, 11023, '511300', '', '', 'NanChongShi', '南充市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13727, 11285, '511301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13728, 11285, '511302', '', '', 'ShunQingQu', '顺庆区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13729, 11285, '511303', '', '', 'GaoPingQu', '高坪区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13730, 11285, '511304', '', '', 'JiaLingQu', '嘉陵区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13731, 11285, '511321', '', '', 'NanBuXian', '南部县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13732, 11285, '511322', '', '', 'YingShanXian', '营山县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13733, 11285, '511323', '', '', 'PengAnXian', '蓬安县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13734, 11285, '511324', '', '', 'YiLongXian', '仪陇县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13735, 11285, '511325', '', '', 'XiChongXian', '西充县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13736, 11285, '511381', '', '', '阆ZhongShi', '阆中市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11286, 11023, '511400', '', '', 'MeiShanShi', '眉山市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13737, 11286, '511401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13738, 11286, '511402', '', '', 'DongPoQu', '东坡区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13739, 11286, '511421', '', '', 'RenShouXian', '仁寿县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13740, 11286, '511422', '', '', 'PengShanXian', '彭山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13741, 11286, '511423', '', '', 'HongYaXian', '洪雅县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13742, 11286, '511424', '', '', 'DanLengXian', '丹棱县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13743, 11286, '511425', '', '', 'QingShenXian', '青神县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11287, 11023, '511500', '', '', 'YiBinShi', '宜宾市', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13744, 11287, '511501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13745, 11287, '511502', '', '', 'CuiPingQu', '翠屏区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13746, 11287, '511521', '', '', 'YiBinXian', '宜宾县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13747, 11287, '511522', '', '', 'NanXiXian', '南溪县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13748, 11287, '511523', '', '', 'JiangAnXian', '江安县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13749, 11287, '511524', '', '', 'ChangNingXian', '长宁县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13750, 11287, '511525', '', '', 'Gao　Xian', '高　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13751, 11287, '511526', '', '', '珙　Xian', '珙　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13752, 11287, '511527', '', '', '筠LianXian', '筠连县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13753, 11287, '511528', '', '', 'XingWenXian', '兴文县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13754, 11287, '511529', '', '', 'PingShanXian', '屏山县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11288, 11023, '511600', '', '', 'GuangAnShi', '广安市', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13755, 11288, '511601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13756, 11288, '511602', '', '', 'GuangAnQu', '广安区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13757, 11288, '511621', '', '', 'YueChiXian', '岳池县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13758, 11288, '511622', '', '', 'WuShengXian', '武胜县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13759, 11288, '511623', '', '', 'LinShuiXian', '邻水县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13760, 11288, '511681', '', '', 'HuaYingShi', '华莹市', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11289, 11023, '511700', '', '', 'DaZhouShi', '达州市', '', '', 4, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13761, 11289, '511701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13762, 11289, '511702', '', '', 'TongChuanQu', '通川区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13763, 11289, '511721', '', '', 'Da　Xian', '达　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13764, 11289, '511722', '', '', 'XuanHanXian', '宣汉县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13765, 11289, '511723', '', '', 'KaiJiangXian', '开江县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13766, 11289, '511724', '', '', 'DaZhuXian', '大竹县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13767, 11289, '511725', '', '', 'Qu　Xian', '渠　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13768, 11289, '511781', '', '', 'WanYuanShi', '万源市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11290, 11023, '511800', '', '', 'YaAnShi', '雅安市', '', '', 4, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13769, 11290, '511801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13770, 11290, '511802', '', '', 'YuChengQu', '雨城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13771, 11290, '511821', '', '', 'MingShanXian', '名山县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13772, 11290, '511822', '', '', '荥JingXian', '荥经县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13773, 11290, '511823', '', '', 'HanYuanXian', '汉源县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13774, 11290, '511824', '', '', 'ShiMianXian', '石棉县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13775, 11290, '511825', '', '', 'TianQuanXian', '天全县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13776, 11290, '511826', '', '', 'LuShanXian', '芦山县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13777, 11290, '511827', '', '', 'BaoXingXian', '宝兴县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11291, 11023, '511900', '', '', 'BaZhongShi', '巴中市', '', '', 4, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13778, 11291, '511901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13779, 11291, '511902', '', '', 'BaZhouQu', '巴州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13780, 11291, '511921', '', '', 'TongJiangXian', '通江县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13781, 11291, '511922', '', '', 'NanJiangXian', '南江县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13782, 11291, '511923', '', '', 'PingChangXian', '平昌县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11292, 11023, '512000', '', '', 'ZiYangShi', '资阳市', '', '', 4, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13783, 11292, '512001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13784, 11292, '512002', '', '', 'YanJiangQu', '雁江区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13785, 11292, '512021', '', '', 'AnYueXian', '安岳县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13786, 11292, '512022', '', '', 'LeZhiXian', '乐至县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13787, 11292, '512081', '', '', 'JianYangShi', '简阳市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11293, 11023, '513200', '', '', 'ABaCangZuQiangZuZiZhiZhou', '阿坝藏族羌族自治州', '', '', 4, 19,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13788, 11293, '513221', '', '', '汶ChuanXian', '汶川县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13789, 11293, '513222', '', '', 'Li　Xian', '理　县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13790, 11293, '513223', '', '', 'Mao　Xian', '茂　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13791, 11293, '513224', '', '', 'SongPanXian', '松潘县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13792, 11293, '513225', '', '', 'JiuZhaiGouXian', '九寨沟县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13793, 11293, '513226', '', '', 'JinChuanXian', '金川县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13794, 11293, '513227', '', '', 'XiaoJinXian', '小金县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13795, 11293, '513228', '', '', 'HeiShuiXian', '黑水县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13796, 11293, '513229', '', '', 'MaErKangXian', '马尔康县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13797, 11293, '513230', '', '', 'RangTangXian', '壤塘县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13798, 11293, '513231', '', '', 'ABaXian', '阿坝县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13799, 11293, '513232', '', '', 'RuoErGaiXian', '若尔盖县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13800, 11293, '513233', '', '', 'HongYuanXian', '红原县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11294, 11023, '513300', '', '', 'GanZiCangZuZiZhiZhou', '甘孜藏族自治州', '', '', 4, 20,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13801, 11294, '513321', '', '', 'KangDingXian', '康定县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13802, 11294, '513322', '', '', '泸DingXian', '泸定县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13803, 11294, '513323', '', '', 'DanBaXian', '丹巴县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13804, 11294, '513324', '', '', 'JiuLongXian', '九龙县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13805, 11294, '513325', '', '', 'YaJiangXian', '雅江县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13806, 11294, '513326', '', '', 'Dao孚Xian', '道孚县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13807, 11294, '513327', '', '', 'LuHuoXian', '炉霍县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13808, 11294, '513328', '', '', 'GanZiXian', '甘孜县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13809, 11294, '513329', '', '', 'XinLongXian', '新龙县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13810, 11294, '513330', '', '', 'DeGeXian', '德格县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13811, 11294, '513331', '', '', 'BaiYuXian', '白玉县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13812, 11294, '513332', '', '', 'ShiQuXian', '石渠县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13813, 11294, '513333', '', '', 'SeDaXian', '色达县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13814, 11294, '513334', '', '', 'LiTangXian', '理塘县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13815, 11294, '513335', '', '', 'BaTangXian', '巴塘县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13816, 11294, '513336', '', '', 'XiangChengXian', '乡城县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13817, 11294, '513337', '', '', 'DaoChengXian', '稻城县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13818, 11294, '513338', '', '', 'DeRongXian', '得荣县', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11295, 11023, '513400', '', '', 'LiangShanYiZuZiZhiZhou', '凉山彝族自治州', '', '', 4, 21,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13819, 11295, '513401', '', '', 'XiChangShi', '西昌市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13820, 11295, '513422', '', '', 'MuLiCangZuZiZhiXian', '木里藏族自治县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13821, 11295, '513423', '', '', 'YanYuanXian', '盐源县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13822, 11295, '513424', '', '', 'DeChangXian', '德昌县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13823, 11295, '513425', '', '', 'HuiLiXian', '会理县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13824, 11295, '513426', '', '', 'HuiDongXian', '会东县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13825, 11295, '513427', '', '', 'NingNanXian', '宁南县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13826, 11295, '513428', '', '', 'PuGeXian', '普格县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13827, 11295, '513429', '', '', 'BuTuoXian', '布拖县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13828, 11295, '513430', '', '', 'JinYangXian', '金阳县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13829, 11295, '513431', '', '', 'ZhaoJueXian', '昭觉县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13830, 11295, '513432', '', '', 'XiDeXian', '喜德县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13831, 11295, '513433', '', '', 'MianNingXian', '冕宁县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13832, 11295, '513434', '', '', 'YueXiXian', '越西县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13833, 11295, '513435', '', '', 'GanLuoXian', '甘洛县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13834, 11295, '513436', '', '', 'MeiGuXian', '美姑县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13835, 11295, '513437', '', '', 'LeiBoXian', '雷波县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11024, 10048, '520000', '', '', 'GuiZhou', '贵州', '', '', 3, 24,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11296, 11024, '520100', '', '', 'GuiYangShi', '贵阳市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13836, 11296, '520101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13837, 11296, '520102', '', '', 'NanMingQu', '南明区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13838, 11296, '520103', '', '', 'YunYanQu', '云岩区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13839, 11296, '520111', '', '', 'HuaXiQu', '花溪区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13840, 11296, '520112', '', '', 'WuDangQu', '乌当区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13841, 11296, '520113', '', '', 'BaiYunQu', '白云区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13842, 11296, '520114', '', '', 'XiaoHeQu', '小河区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13843, 11296, '520121', '', '', 'KaiYangXian', '开阳县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13844, 11296, '520122', '', '', 'XiFengXian', '息烽县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13845, 11296, '520123', '', '', 'XiuWenXian', '修文县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13846, 11296, '520181', '', '', 'QingZhenShi', '清镇市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11297, 11024, '520200', '', '', 'LiuPanShuiShi', '六盘水市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13847, 11297, '520201', '', '', 'ZhongShanQu', '钟山区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13848, 11297, '520203', '', '', 'LiuZhiTeQu', '六枝特区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13849, 11297, '520221', '', '', 'ShuiChengXian', '水城县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13850, 11297, '520222', '', '', 'Pan　Xian', '盘　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11298, 11024, '520300', '', '', 'ZunYiShi', '遵义市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13851, 11298, '520301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13852, 11298, '520302', '', '', 'HongHuaGangQu', '红花岗区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13853, 11298, '520303', '', '', 'HuiChuanQu', '汇川区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13854, 11298, '520321', '', '', 'ZunYiXian', '遵义县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13855, 11298, '520322', '', '', 'Tong梓Xian', '桐梓县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13856, 11298, '520323', '', '', 'SuiYangXian', '绥阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13857, 11298, '520324', '', '', 'ZhengAnXian', '正安县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13858, 11298, '520325', '', '', 'DaoZhen仡LaoZuMiaoZuZiZhiXian', '道真仡佬族苗族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13859, 11298, '520326', '', '', 'WuChuan仡LaoZuMiaoZuZiZhiXian', '务川仡佬族苗族自治县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13860, 11298, '520327', '', '', 'FengGangXian', '凤冈县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13861, 11298, '520328', '', '', '湄TanXian', '湄潭县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13862, 11298, '520329', '', '', 'YuQingXian', '余庆县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13863, 11298, '520330', '', '', 'XiShuiXian', '习水县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13864, 11298, '520381', '', '', 'ChiShuiShi', '赤水市', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13865, 11298, '520382', '', '', 'RenHuaiShi', '仁怀市', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11299, 11024, '520400', '', '', 'AnShunShi', '安顺市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13866, 11299, '520401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13867, 11299, '520402', '', '', 'XiXiuQu', '西秀区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13868, 11299, '520421', '', '', 'PingBaXian', '平坝县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13869, 11299, '520422', '', '', 'PuDingXian', '普定县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13870, 11299, '520423', '', '', 'ZhenNingBuYiZuMiaoZuZiZhiXian', '镇宁布依族苗族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13871, 11299, '520424', '', '', 'GuanLingBuYiZuMiaoZuZiZhiXian', '关岭布依族苗族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13872, 11299, '520425', '', '', 'ZiYunMiaoZuBuYiZuZiZhiXian', '紫云苗族布依族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11300, 11024, '522200', '', '', 'TongRenDiQu', '铜仁地区', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13873, 11300, '522201', '', '', 'TongRenShi', '铜仁市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13874, 11300, '522222', '', '', 'JiangKouXian', '江口县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13875, 11300, '522223', '', '', 'YuPingDongZuZiZhiXian', '玉屏侗族自治县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13876, 11300, '522224', '', '', 'Shi阡Xian', '石阡县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13877, 11300, '522225', '', '', 'SiNanXian', '思南县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13878, 11300, '522226', '', '', 'YinJiangTuJiaZuMiaoZuZiZhiXian', '印江土家族苗族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13879, 11300, '522227', '', '', 'DeJiangXian', '德江县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13880, 11300, '522228', '', '', 'YanHeTuJiaZuZiZhiXian', '沿河土家族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13881, 11300, '522229', '', '', 'SongTaoMiaoZuZiZhiXian', '松桃苗族自治县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13882, 11300, '522230', '', '', 'WanShanTeQu', '万山特区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11301, 11024, '522300', '', '', 'QianXiNanBuYiZuMiaoZuZiZhiZhou', '黔西南布依族苗族自治州', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13883, 11301, '522301', '', '', 'XingYiShi', '兴义市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13884, 11301, '522322', '', '', 'XingRenXian', '兴仁县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13885, 11301, '522323', '', '', 'PuAnXian', '普安县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13886, 11301, '522324', '', '', 'QingLongXian', '晴隆县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13887, 11301, '522325', '', '', 'ZhenFengXian', '贞丰县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13888, 11301, '522326', '', '', 'Wang谟Xian', '望谟县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13889, 11301, '522327', '', '', 'CeHengXian', '册亨县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13890, 11301, '522328', '', '', 'AnLongXian', '安龙县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11302, 11024, '522400', '', '', 'BiJieDiQu', '毕节地区', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13891, 11302, '522401', '', '', 'BiJieShi', '毕节市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13892, 11302, '522422', '', '', 'DaFangXian', '大方县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13893, 11302, '522423', '', '', 'QianXiXian', '黔西县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13894, 11302, '522424', '', '', 'JinShaXian', '金沙县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13895, 11302, '522425', '', '', 'ZhiJinXian', '织金县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13896, 11302, '522426', '', '', 'NaYongXian', '纳雍县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13897, 11302, '522427', '', '', 'WeiNingYiZuHuiZuMiaoZuZiZhiXian', '威宁彝族回族苗族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13898, 11302, '522428', '', '', 'HeZhangXian', '赫章县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11303, 11024, '522600', '', '', 'QianDongNanMiaoZuDongZuZiZhiZhou', '黔东南苗族侗族自治州', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13899, 11303, '522601', '', '', 'KaiLiShi', '凯里市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13900, 11303, '522622', '', '', 'HuangPingXian', '黄平县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13901, 11303, '522623', '', '', 'ShiBingXian', '施秉县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13902, 11303, '522624', '', '', 'SanSuiXian', '三穗县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13903, 11303, '522625', '', '', 'ZhenYuanXian', '镇远县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13904, 11303, '522626', '', '', '岑GongXian', '岑巩县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13905, 11303, '522627', '', '', 'TianZhuXian', '天柱县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13906, 11303, '522628', '', '', 'JinPingXian', '锦屏县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13907, 11303, '522629', '', '', 'JianHeXian', '剑河县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13908, 11303, '522630', '', '', 'TaiJiangXian', '台江县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13909, 11303, '522631', '', '', 'LiPingXian', '黎平县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13910, 11303, '522632', '', '', '榕JiangXian', '榕江县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13911, 11303, '522633', '', '', 'CongJiangXian', '从江县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13912, 11303, '522634', '', '', 'LeiShanXian', '雷山县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13913, 11303, '522635', '', '', 'MaJiangXian', '麻江县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13914, 11303, '522636', '', '', 'DanZhaiXian', '丹寨县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11304, 11024, '522700', '', '', 'QianNanBuYiZuMiaoZuZiZhiZhou', '黔南布依族苗族自治州', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13915, 11304, '522701', '', '', 'DuYunShi', '都匀市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13916, 11304, '522702', '', '', 'FuQuanShi', '福泉市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13917, 11304, '522722', '', '', 'LiBoXian', '荔波县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13918, 11304, '522723', '', '', 'GuiDingXian', '贵定县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13919, 11304, '522725', '', '', 'WengAnXian', '瓮安县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13920, 11304, '522726', '', '', 'DuShanXian', '独山县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13921, 11304, '522727', '', '', 'PingTangXian', '平塘县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13922, 11304, '522728', '', '', 'LuoDianXian', '罗甸县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13923, 11304, '522729', '', '', 'ChangShunXian', '长顺县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13924, 11304, '522730', '', '', 'LongLiXian', '龙里县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13925, 11304, '522731', '', '', 'HuiShuiXian', '惠水县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13926, 11304, '522732', '', '', 'SanDuShuiZuZiZhiXian', '三都水族自治县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11025, 10048, '530000', '', '', 'YunNan', '云南', '', '', 3, 25,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11305, 11025, '530100', '', '', 'KunMingShi', '昆明市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13927, 11305, '530101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13928, 11305, '530102', '', '', 'WuHuaQu', '五华区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13929, 11305, '530103', '', '', 'PanLongQu', '盘龙区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13930, 11305, '530111', '', '', 'GuanDuQu', '官渡区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13931, 11305, '530112', '', '', 'XiShanQu', '西山区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13932, 11305, '530113', '', '', 'DongChuanQu', '东川区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13933, 11305, '530121', '', '', 'ChengGongXian', '呈贡县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13934, 11305, '530122', '', '', 'JinNingXian', '晋宁县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13935, 11305, '530124', '', '', 'FuMinXian', '富民县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13936, 11305, '530125', '', '', 'YiLiangXian', '宜良县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13937, 11305, '530126', '', '', 'ShiLinYiZuZiZhiXian', '石林彝族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13938, 11305, '530127', '', '', '嵩MingXian', '嵩明县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13939, 11305, '530128', '', '', 'LuQuanYiZuMiaoZuZiZhiXian', '禄劝彝族苗族自治县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13940, 11305, '530129', '', '', 'XunDianHuiZuYiZuZiZhiXian', '寻甸回族彝族自治县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13941, 11305, '530181', '', '', 'AnNingShi', '安宁市', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11306, 11025, '530300', '', '', 'QuJingShi', '曲靖市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13942, 11306, '530301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13943, 11306, '530302', '', '', '麒麟Qu', '麒麟区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13944, 11306, '530321', '', '', 'MaLongXian', '马龙县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13945, 11306, '530322', '', '', 'LuLiangXian', '陆良县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13946, 11306, '530323', '', '', 'ShiZongXian', '师宗县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13947, 11306, '530324', '', '', 'LuoPingXian', '罗平县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13948, 11306, '530325', '', '', 'FuYuanXian', '富源县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13949, 11306, '530326', '', '', 'HuiZeXian', '会泽县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13950, 11306, '530328', '', '', 'ZhanYiXian', '沾益县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13951, 11306, '530381', '', '', 'XuanWeiShi', '宣威市', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11307, 11025, '530400', '', '', 'YuXiShi', '玉溪市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13952, 11307, '530401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13953, 11307, '530402', '', '', 'HongTaQu', '红塔区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13954, 11307, '530421', '', '', 'JiangChuanXian', '江川县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13955, 11307, '530422', '', '', 'ChengJiangXian', '澄江县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13956, 11307, '530423', '', '', 'TongHaiXian', '通海县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13957, 11307, '530424', '', '', 'HuaNingXian', '华宁县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13958, 11307, '530425', '', '', 'YiMenXian', '易门县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13959, 11307, '530426', '', '', 'EShanYiZuZiZhiXian', '峨山彝族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13960, 11307, '530427', '', '', 'XinPingYiZuDaiZuZiZhiXian', '新平彝族傣族自治县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13961, 11307, '530428', '', '', 'YuanJiangHaNiZuYiZuDaiZuZiZhiXian', '元江哈尼族彝族傣族自治县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11308, 11025, '530500', '', '', 'BaoShanShi', '保山市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13962, 11308, '530501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13963, 11308, '530502', '', '', 'LongYangQu', '隆阳区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13964, 11308, '530521', '', '', 'ShiDianXian', '施甸县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13965, 11308, '530522', '', '', 'TengChongXian', '腾冲县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13966, 11308, '530523', '', '', 'LongLingXian', '龙陵县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13967, 11308, '530524', '', '', 'ChangNingXian', '昌宁县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11309, 11025, '530600', '', '', 'ZhaoTongShi', '昭通市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13968, 11309, '530601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13969, 11309, '530602', '', '', 'ZhaoYangQu', '昭阳区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13970, 11309, '530621', '', '', 'LuDianXian', '鲁甸县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13971, 11309, '530622', '', '', 'QiaoJiaXian', '巧家县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13972, 11309, '530623', '', '', 'YanJinXian', '盐津县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13973, 11309, '530624', '', '', 'DaGuanXian', '大关县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13974, 11309, '530625', '', '', 'YongShanXian', '永善县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13975, 11309, '530626', '', '', 'SuiJiangXian', '绥江县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13976, 11309, '530627', '', '', 'ZhenXiongXian', '镇雄县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13977, 11309, '530628', '', '', 'YiLiangXian', '彝良县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13978, 11309, '530629', '', '', 'WeiXinXian', '威信县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13979, 11309, '530630', '', '', 'ShuiFuXian', '水富县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11310, 11025, '530700', '', '', 'LiJiangShi', '丽江市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13980, 11310, '530701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13981, 11310, '530702', '', '', 'GuChengQu', '古城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13982, 11310, '530721', '', '', 'YuLongNaXiZuZiZhiXian', '玉龙纳西族自治县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13983, 11310, '530722', '', '', 'YongShengXian', '永胜县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13984, 11310, '530723', '', '', 'HuaPingXian', '华坪县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13985, 11310, '530724', '', '', 'Ning蒗YiZuZiZhiXian', '宁蒗彝族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11311, 11025, '530800', '', '', 'SiMaoShi', '思茅市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13986, 11311, '530801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13987, 11311, '530802', '', '', 'CuiYunQu', '翠云区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13988, 11311, '530821', '', '', 'PuErHaNiZuYiZuZiZhiXian', '普洱哈尼族彝族自治县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13989, 11311, '530822', '', '', 'MoJiangHaNiZuZiZhiXian', '墨江哈尼族自治县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13990, 11311, '530823', '', '', 'JingDongYiZuZiZhiXian', '景东彝族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13991, 11311, '530824', '', '', 'JingGuDaiZuYiZuZiZhiXian', '景谷傣族彝族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13992, 11311, '530825', '', '', 'Zhen沅YiZuHaNiZuLa祜ZuZiZhiXian', '镇沅彝族哈尼族拉祜族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13993, 11311, '530826', '', '', 'JiangChengHaNiZuYiZuZiZhiXian', '江城哈尼族彝族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13994, 11311, '530827', '', '', 'MengLianDaiZuLa祜Zu佤ZuZiZhiXian', '孟连傣族拉祜族佤族自治县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13995, 11311, '530828', '', '', 'LanCangLa祜ZuZiZhiXian', '澜沧拉祜族自治县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13996, 11311, '530829', '', '', 'XiMeng佤ZuZiZhiXian', '西盟佤族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11312, 11025, '530900', '', '', 'LinCangShi', '临沧市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13997, 11312, '530901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13998, 11312, '530902', '', '', 'LinXiangQu', '临翔区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (13999, 11312, '530921', '', '', 'FengQingXian', '凤庆县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14000, 11312, '530922', '', '', 'Yun　Xian', '云　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14001, 11312, '530923', '', '', 'YongDeXian', '永德县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14002, 11312, '530924', '', '', 'ZhenKangXian', '镇康县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14003, 11312, '530925', '', '', 'ShuangJiangLa祜Zu佤ZuBuLangZuDaiZuZiZhiXian', '双江拉祜族佤族布朗族傣族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14004, 11312, '530926', '', '', 'GengMaDaiZu佤ZuZiZhiXian', '耿马傣族佤族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14005, 11312, '530927', '', '', 'CangYuan佤ZuZiZhiXian', '沧源佤族自治县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11313, 11025, '532300', '', '', 'ChuXiongYiZuZiZhiZhou', '楚雄彝族自治州', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14006, 11313, '532301', '', '', 'ChuXiongShi', '楚雄市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14007, 11313, '532322', '', '', 'ShuangBaiXian', '双柏县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14008, 11313, '532323', '', '', 'MouDingXian', '牟定县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14009, 11313, '532324', '', '', 'NanHuaXian', '南华县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14010, 11313, '532325', '', '', 'YaoAnXian', '姚安县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14011, 11313, '532326', '', '', 'DaYaoXian', '大姚县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14012, 11313, '532327', '', '', 'YongRenXian', '永仁县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14013, 11313, '532328', '', '', 'YuanMouXian', '元谋县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14014, 11313, '532329', '', '', 'WuDingXian', '武定县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14015, 11313, '532331', '', '', 'LuFengXian', '禄丰县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11314, 11025, '532500', '', '', 'HongHeHaNiZuYiZuZiZhiZhou', '红河哈尼族彝族自治州', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14016, 11314, '532501', '', '', 'GeJiuShi', '个旧市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14017, 11314, '532502', '', '', 'KaiYuanShi', '开远市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14018, 11314, '532522', '', '', 'MengZiXian', '蒙自县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14019, 11314, '532523', '', '', 'PingBianMiaoZuZiZhiXian', '屏边苗族自治县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14020, 11314, '532524', '', '', 'JianShuiXian', '建水县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14021, 11314, '532525', '', '', 'ShiPingXian', '石屏县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14022, 11314, '532526', '', '', 'MiLeXian', '弥勒县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14023, 11314, '532527', '', '', '泸XiXian', '泸西县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14024, 11314, '532528', '', '', 'YuanYangXian', '元阳县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14025, 11314, '532529', '', '', 'HongHeXian', '红河县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14026, 11314, '532530', '', '', 'JinPingMiaoZuYaoZuDaiZuZiZhiXian', '金平苗族瑶族傣族自治县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14027, 11314, '532531', '', '', 'LvChunXian', '绿春县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14028, 11314, '532532', '', '', 'HeKouYaoZuZiZhiXian', '河口瑶族自治县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11315, 11025, '532600', '', '', 'WenShanZhuangZuMiaoZuZiZhiZhou', '文山壮族苗族自治州', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14029, 11315, '532621', '', '', 'WenShanXian', '文山县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14030, 11315, '532622', '', '', 'YanShanXian', '砚山县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14031, 11315, '532623', '', '', 'XiChouXian', '西畴县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14032, 11315, '532624', '', '', 'MaLiPoXian', '麻栗坡县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14033, 11315, '532625', '', '', 'MaGuanXian', '马关县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14034, 11315, '532626', '', '', 'QiuBeiXian', '丘北县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14035, 11315, '532627', '', '', 'GuangNanXian', '广南县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14036, 11315, '532628', '', '', 'FuNingXian', '富宁县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11316, 11025, '532800', '', '', 'XiShuangBanNaDaiZuZiZhiZhou', '西双版纳傣族自治州', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14037, 11316, '532801', '', '', 'JingHongShi', '景洪市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14038, 11316, '532822', '', '', '勐HaiXian', '勐海县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14039, 11316, '532823', '', '', '勐LaXian', '勐腊县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11317, 11025, '532900', '', '', 'DaLiBaiZuZiZhiZhou', '大理白族自治州', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14040, 11317, '532901', '', '', 'DaLiShi', '大理市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14041, 11317, '532922', '', '', 'Yang濞YiZuZiZhiXian', '漾濞彝族自治县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14042, 11317, '532923', '', '', 'XiangYunXian', '祥云县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14043, 11317, '532924', '', '', 'BinChuanXian', '宾川县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14044, 11317, '532925', '', '', 'MiDuXian', '弥渡县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14045, 11317, '532926', '', '', 'NanJianYiZuZiZhiXian', '南涧彝族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14046, 11317, '532927', '', '', 'WeiShanYiZuHuiZuZiZhiXian', '巍山彝族回族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14047, 11317, '532928', '', '', 'YongPingXian', '永平县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14048, 11317, '532929', '', '', 'YunLongXian', '云龙县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14049, 11317, '532930', '', '', 'ErYuanXian', '洱源县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14050, 11317, '532931', '', '', 'JianChuanXian', '剑川县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14051, 11317, '532932', '', '', 'HeQingXian', '鹤庆县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11318, 11025, '533100', '', '', 'DeHongDaiZuJingPoZuZiZhiZhou', '德宏傣族景颇族自治州', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14052, 11318, '533102', '', '', 'RuiLiShi', '瑞丽市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14053, 11318, '533103', '', '', 'LuXiShi', '潞西市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14054, 11318, '533122', '', '', 'LiangHeXian', '梁河县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14055, 11318, '533123', '', '', 'YingJiangXian', '盈江县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14056, 11318, '533124', '', '', 'LongChuanXian', '陇川县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11319, 11025, '533300', '', '', 'NuJiangLiSuZuZiZhiZhou', '怒江傈僳族自治州', '', '', 4, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14057, 11319, '533321', '', '', '泸ShuiXian', '泸水县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14058, 11319, '533323', '', '', 'FuGongXian', '福贡县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14059, 11319, '533324', '', '', 'GongShanDuLongZuNuZuZiZhiXian', '贡山独龙族怒族自治县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14060, 11319, '533325', '', '', 'LanPingBaiZuPuMiZuZiZhiXian', '兰坪白族普米族自治县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11320, 11025, '533400', '', '', 'DiQingCangZuZiZhiZhou', '迪庆藏族自治州', '', '', 4, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14061, 11320, '533421', '', '', 'XiangGeLiLaXian', '香格里拉县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14062, 11320, '533422', '', '', 'DeQinXian', '德钦县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14063, 11320, '533423', '', '', 'WeiXiLiSuZuZiZhiXian', '维西傈僳族自治县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11026, 10048, '540000', '', '', 'XiCang', '西藏', '', '', 3, 26,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11321, 11026, '540100', '', '', 'LaSaShi', '拉萨市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14064, 11321, '540101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14065, 11321, '540102', '', '', 'ChengGuanQu', '城关区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14066, 11321, '540121', '', '', 'LinZhouXian', '林周县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14067, 11321, '540122', '', '', 'DangXiongXian', '当雄县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14068, 11321, '540123', '', '', 'NiMuXian', '尼木县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14069, 11321, '540124', '', '', 'QuShuiXian', '曲水县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14070, 11321, '540125', '', '', 'DuiLongDeQingXian', '堆龙德庆县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14071, 11321, '540126', '', '', 'DaZiXian', '达孜县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14072, 11321, '540127', '', '', 'MoZhuGongKaXian', '墨竹工卡县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11322, 11026, '542100', '', '', 'ChangDuDiQu', '昌都地区', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14073, 11322, '542121', '', '', 'ChangDuXian', '昌都县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14074, 11322, '542122', '', '', 'JiangDaXian', '江达县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14075, 11322, '542123', '', '', 'GongJueXian', '贡觉县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14076, 11322, '542124', '', '', 'LeiWuQiXian', '类乌齐县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14077, 11322, '542125', '', '', 'DingQingXian', '丁青县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14078, 11322, '542126', '', '', 'ChaYaXian', '察雅县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14079, 11322, '542127', '', '', 'BaSuXian', '八宿县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14080, 11322, '542128', '', '', 'ZuoGongXian', '左贡县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14081, 11322, '542129', '', '', 'MangKangXian', '芒康县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14082, 11322, '542132', '', '', 'LuoLongXian', '洛隆县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14083, 11322, '542133', '', '', 'BianBaXian', '边坝县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11323, 11026, '542200', '', '', 'ShanNanDiQu', '山南地区', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14084, 11323, '542221', '', '', 'NaiDongXian', '乃东县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14085, 11323, '542222', '', '', 'ZhaNangXian', '扎囊县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14086, 11323, '542223', '', '', 'GongGaXian', '贡嘎县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14087, 11323, '542224', '', '', 'SangRiXian', '桑日县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14088, 11323, '542225', '', '', 'QiongJieXian', '琼结县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14089, 11323, '542226', '', '', 'QuSongXian', '曲松县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14090, 11323, '542227', '', '', 'CuoMeiXian', '措美县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14091, 11323, '542228', '', '', 'LuoZhaXian', '洛扎县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14092, 11323, '542229', '', '', 'JiaChaXian', '加查县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14093, 11323, '542231', '', '', 'LongZiXian', '隆子县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14094, 11323, '542232', '', '', 'CuoNaXian', '错那县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14095, 11323, '542233', '', '', 'LangKaZiXian', '浪卡子县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11324, 11026, '542300', '', '', 'RiKaZeDiQu', '日喀则地区', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14096, 11324, '542301', '', '', 'RiKaZeShi', '日喀则市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14097, 11324, '542322', '', '', 'NanMuLinXian', '南木林县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14098, 11324, '542323', '', '', 'JiangZiXian', '江孜县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14099, 11324, '542324', '', '', 'DingRiXian', '定日县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14100, 11324, '542325', '', '', 'Sa迦Xian', '萨迦县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14101, 11324, '542326', '', '', 'LaZiXian', '拉孜县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14102, 11324, '542327', '', '', 'AngRenXian', '昂仁县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14103, 11324, '542328', '', '', 'XieTongMenXian', '谢通门县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14104, 11324, '542329', '', '', 'BaiLangXian', '白朗县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14105, 11324, '542330', '', '', 'RenBuXian', '仁布县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14106, 11324, '542331', '', '', 'KangMaXian', '康马县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14107, 11324, '542332', '', '', 'DingJieXian', '定结县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14108, 11324, '542333', '', '', 'ZhongBaXian', '仲巴县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14109, 11324, '542334', '', '', 'YaDongXian', '亚东县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14110, 11324, '542335', '', '', 'JiLongXian', '吉隆县', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14111, 11324, '542336', '', '', 'NieLaMuXian', '聂拉木县', '', '', 5, 16,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14112, 11324, '542337', '', '', 'SaGaXian', '萨嘎县', '', '', 5, 17,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14113, 11324, '542338', '', '', 'GangBaXian', '岗巴县', '', '', 5, 18,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11325, 11026, '542400', '', '', 'NaQuDiQu', '那曲地区', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14114, 11325, '542421', '', '', 'NaQuXian', '那曲县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14115, 11325, '542422', '', '', 'JiaLiXian', '嘉黎县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14116, 11325, '542423', '', '', 'BiRuXian', '比如县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14117, 11325, '542424', '', '', 'NieRongXian', '聂荣县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14118, 11325, '542425', '', '', 'AnDuoXian', '安多县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14119, 11325, '542426', '', '', 'ShenZhaXian', '申扎县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14120, 11325, '542427', '', '', 'Suo　Xian', '索　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14121, 11325, '542428', '', '', 'BanGeXian', '班戈县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14122, 11325, '542429', '', '', 'BaQingXian', '巴青县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14123, 11325, '542430', '', '', 'NiMaXian', '尼玛县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11326, 11026, '542500', '', '', 'ALiDiQu', '阿里地区', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14124, 11326, '542521', '', '', 'PuLanXian', '普兰县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14125, 11326, '542522', '', '', 'ZhaDaXian', '札达县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14126, 11326, '542523', '', '', 'GaErXian', '噶尔县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14127, 11326, '542524', '', '', 'RiTuXian', '日土县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14128, 11326, '542525', '', '', 'GeJiXian', '革吉县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14129, 11326, '542526', '', '', 'GaiZeXian', '改则县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14130, 11326, '542527', '', '', 'CuoQinXian', '措勤县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11327, 11026, '542600', '', '', 'LinZhiDiQu', '林芝地区', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14131, 11327, '542621', '', '', 'LinZhiXian', '林芝县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14132, 11327, '542622', '', '', 'GongBuJiangDaXian', '工布江达县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14133, 11327, '542623', '', '', 'MiLinXian', '米林县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14134, 11327, '542624', '', '', 'MoTuoXian', '墨脱县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14135, 11327, '542625', '', '', 'BoMiXian', '波密县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14136, 11327, '542626', '', '', 'ChaYuXian', '察隅县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14137, 11327, '542627', '', '', 'Lang　Xian', '朗　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11027, 10048, '610000', '', '', 'ShanXi', '陕西', '', '', 3, 27,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11328, 11027, '610100', '', '', 'XiAnShi', '西安市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14138, 11328, '610101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14139, 11328, '610102', '', '', 'XinChengQu', '新城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14140, 11328, '610103', '', '', 'BeiLinQu', '碑林区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14141, 11328, '610104', '', '', 'LianHuQu', '莲湖区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14142, 11328, '610111', '', '', '灞QiaoQu', '灞桥区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14143, 11328, '610112', '', '', 'WeiYangQu', '未央区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14144, 11328, '610113', '', '', 'YanTaQu', '雁塔区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14145, 11328, '610114', '', '', 'YanLiangQu', '阎良区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14146, 11328, '610115', '', '', 'Lin潼Qu', '临潼区', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14147, 11328, '610116', '', '', 'ChangAnQu', '长安区', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14148, 11328, '610122', '', '', 'LanTianXian', '蓝田县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14149, 11328, '610124', '', '', 'ZhouZhiXian', '周至县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14150, 11328, '610125', '', '', 'Hu　Xian', '户　县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14151, 11328, '610126', '', '', 'GaoLingXian', '高陵县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11329, 11027, '610200', '', '', 'TongChuanShi', '铜川市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14152, 11329, '610201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14153, 11329, '610202', '', '', 'WangYiQu', '王益区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14154, 11329, '610203', '', '', 'YinTaiQu', '印台区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14155, 11329, '610204', '', '', 'YaoZhouQu', '耀州区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14156, 11329, '610222', '', '', 'YiJunXian', '宜君县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11330, 11027, '610300', '', '', 'BaoJiShi', '宝鸡市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14157, 11330, '610301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14158, 11330, '610302', '', '', 'WeiBinQu', '渭滨区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14159, 11330, '610303', '', '', 'JinTaiQu', '金台区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14160, 11330, '610304', '', '', 'ChenCangQu', '陈仓区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14161, 11330, '610322', '', '', 'FengXiangXian', '凤翔县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14162, 11330, '610323', '', '', '岐ShanXian', '岐山县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14163, 11330, '610324', '', '', 'FuFengXian', '扶风县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14164, 11330, '610326', '', '', 'Mei　Xian', '眉　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14165, 11330, '610327', '', '', 'Long　Xian', '陇　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14166, 11330, '610328', '', '', 'QianYangXian', '千阳县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14167, 11330, '610329', '', '', '麟YouXian', '麟游县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14168, 11330, '610330', '', '', 'Feng　Xian', '凤　县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14169, 11330, '610331', '', '', 'TaiBaiXian', '太白县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11331, 11027, '610400', '', '', 'XianYangShi', '咸阳市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14170, 11331, '610401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14171, 11331, '610402', '', '', 'QinDuQu', '秦都区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14172, 11331, '610403', '', '', 'YangLingQu', '杨凌区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14173, 11331, '610404', '', '', 'WeiChengQu', '渭城区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14174, 11331, '610422', '', '', 'SanYuanXian', '三原县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14175, 11331, '610423', '', '', '泾YangXian', '泾阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14176, 11331, '610424', '', '', 'Qian　Xian', '乾　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14177, 11331, '610425', '', '', 'LiQuanXian', '礼泉县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14178, 11331, '610426', '', '', 'YongShouXian', '永寿县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14179, 11331, '610427', '', '', 'Bin　Xian', '彬　县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14180, 11331, '610428', '', '', 'ChangWuXian', '长武县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14181, 11331, '610429', '', '', 'XunYiXian', '旬邑县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14182, 11331, '610430', '', '', 'ChunHuaXian', '淳化县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14183, 11331, '610431', '', '', 'WuGongXian', '武功县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14184, 11331, '610481', '', '', 'XingPingShi', '兴平市', '', '', 5, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11332, 11027, '610500', '', '', 'WeiNanShi', '渭南市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14185, 11332, '610501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14186, 11332, '610502', '', '', 'LinWeiQu', '临渭区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14187, 11332, '610521', '', '', 'Hua　Xian', '华　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14188, 11332, '610522', '', '', '潼GuanXian', '潼关县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14189, 11332, '610523', '', '', 'DaLiXian', '大荔县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14190, 11332, '610524', '', '', 'HeYangXian', '合阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14191, 11332, '610525', '', '', 'ChengChengXian', '澄城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14192, 11332, '610526', '', '', 'PuChengXian', '蒲城县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14193, 11332, '610527', '', '', 'BaiShuiXian', '白水县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14194, 11332, '610528', '', '', 'FuPingXian', '富平县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14195, 11332, '610581', '', '', 'HanChengShi', '韩城市', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14196, 11332, '610582', '', '', 'HuaYinShi', '华阴市', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11333, 11027, '610600', '', '', 'YanAnShi', '延安市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14197, 11333, '610601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14198, 11333, '610602', '', '', 'BaoTaQu', '宝塔区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14199, 11333, '610621', '', '', 'YanChangXian', '延长县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14200, 11333, '610622', '', '', 'YanChuanXian', '延川县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14201, 11333, '610623', '', '', 'ZiChangXian', '子长县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14202, 11333, '610624', '', '', 'AnSaiXian', '安塞县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14203, 11333, '610625', '', '', 'ZhiDanXian', '志丹县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14204, 11333, '610626', '', '', 'WuQiXian', '吴旗县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14205, 11333, '610627', '', '', 'GanQuanXian', '甘泉县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14206, 11333, '610628', '', '', 'Fu　Xian', '富　县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14207, 11333, '610629', '', '', 'LuoChuanXian', '洛川县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14208, 11333, '610630', '', '', 'YiChuanXian', '宜川县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14209, 11333, '610631', '', '', 'HuangLongXian', '黄龙县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14210, 11333, '610632', '', '', 'HuangLingXian', '黄陵县', '', '', 5, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11334, 11027, '610700', '', '', 'HanZhongShi', '汉中市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14211, 11334, '610701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14212, 11334, '610702', '', '', 'HanTaiQu', '汉台区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14213, 11334, '610721', '', '', 'NanZhengXian', '南郑县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14214, 11334, '610722', '', '', 'ChengGuXian', '城固县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14215, 11334, '610723', '', '', 'Yang　Xian', '洋　县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14216, 11334, '610724', '', '', 'XiXiangXian', '西乡县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14217, 11334, '610725', '', '', 'Mian　Xian', '勉　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14218, 11334, '610726', '', '', 'NingQiangXian', '宁强县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14219, 11334, '610727', '', '', 'LueYangXian', '略阳县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14220, 11334, '610728', '', '', 'ZhenBaXian', '镇巴县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14221, 11334, '610729', '', '', 'LiuBaXian', '留坝县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14222, 11334, '610730', '', '', 'FoPingXian', '佛坪县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11335, 11027, '610800', '', '', 'YuLinShi', '榆林市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14223, 11335, '610801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14224, 11335, '610802', '', '', 'YuYangQu', '榆阳区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14225, 11335, '610821', '', '', 'ShenMuXian', '神木县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14226, 11335, '610822', '', '', 'FuGuXian', '府谷县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14227, 11335, '610823', '', '', 'HengShanXian', '横山县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14228, 11335, '610824', '', '', 'JingBianXian', '靖边县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14229, 11335, '610825', '', '', 'DingBianXian', '定边县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14230, 11335, '610826', '', '', 'SuiDeXian', '绥德县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14231, 11335, '610827', '', '', 'MiZhiXian', '米脂县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14232, 11335, '610828', '', '', 'Jia　Xian', '佳　县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14233, 11335, '610829', '', '', 'WuBaoXian', '吴堡县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14234, 11335, '610830', '', '', 'QingJianXian', '清涧县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14235, 11335, '610831', '', '', 'ZiZhouXian', '子洲县', '', '', 5, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11336, 11027, '610900', '', '', 'AnKangShi', '安康市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14236, 11336, '610901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14237, 11336, '610902', '', '', 'HanBinQu', '汉滨区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14238, 11336, '610921', '', '', 'HanYinXian', '汉阴县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14239, 11336, '610922', '', '', 'ShiQuanXian', '石泉县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14240, 11336, '610923', '', '', 'NingShanXian', '宁陕县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14241, 11336, '610924', '', '', 'ZiYangXian', '紫阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14242, 11336, '610925', '', '', '岚GaoXian', '岚皋县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14243, 11336, '610926', '', '', 'PingLiXian', '平利县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14244, 11336, '610927', '', '', 'ZhenPingXian', '镇坪县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14245, 11336, '610928', '', '', 'XunYangXian', '旬阳县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14246, 11336, '610929', '', '', 'BaiHeXian', '白河县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11337, 11027, '611000', '', '', 'ShangLuoShi', '商洛市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14247, 11337, '611001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14248, 11337, '611002', '', '', 'ShangZhouQu', '商州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14249, 11337, '611021', '', '', 'LuoNanXian', '洛南县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14250, 11337, '611022', '', '', 'DanFengXian', '丹凤县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14251, 11337, '611023', '', '', 'ShangNanXian', '商南县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14252, 11337, '611024', '', '', 'ShanYangXian', '山阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14253, 11337, '611025', '', '', 'ZhenAnXian', '镇安县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14254, 11337, '611026', '', '', 'ZuoShuiXian', '柞水县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11028, 10048, '620000', '', '', 'GanSu', '甘肃', '', '', 3, 28,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11338, 11028, '620100', '', '', 'LanZhouShi', '兰州市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14255, 11338, '620101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14256, 11338, '620102', '', '', 'ChengGuanQu', '城关区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14257, 11338, '620103', '', '', 'QiLiHeQu', '七里河区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14258, 11338, '620104', '', '', 'XiGuQu', '西固区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14259, 11338, '620105', '', '', 'AnNingQu', '安宁区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14260, 11338, '620111', '', '', 'HongGuQu', '红古区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14261, 11338, '620121', '', '', 'YongDengXian', '永登县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14262, 11338, '620122', '', '', 'GaoLanXian', '皋兰县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14263, 11338, '620123', '', '', 'YuZhongXian', '榆中县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11339, 11028, '620200', '', '', 'JiaYuGuanShi', '嘉峪关市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14264, 11339, '620201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11340, 11028, '620300', '', '', 'JinChangShi', '金昌市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14265, 11340, '620301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14266, 11340, '620302', '', '', 'JinChuanQu', '金川区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14267, 11340, '620321', '', '', 'YongChangXian', '永昌县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11341, 11028, '620400', '', '', 'BaiYinShi', '白银市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14268, 11341, '620401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14269, 11341, '620402', '', '', 'BaiYinQu', '白银区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14270, 11341, '620403', '', '', 'PingChuanQu', '平川区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14271, 11341, '620421', '', '', 'JingYuanXian', '靖远县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14272, 11341, '620422', '', '', 'HuiNingXian', '会宁县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14273, 11341, '620423', '', '', 'JingTaiXian', '景泰县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11342, 11028, '620500', '', '', 'TianShuiShi', '天水市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14274, 11342, '620501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14275, 11342, '620502', '', '', 'QinChengQu', '秦城区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14276, 11342, '620503', '', '', 'BeiDaoQu', '北道区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14277, 11342, '620521', '', '', 'QingShuiXian', '清水县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14278, 11342, '620522', '', '', 'QinAnXian', '秦安县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14279, 11342, '620523', '', '', 'GanGuXian', '甘谷县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14280, 11342, '620524', '', '', 'WuShanXian', '武山县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14281, 11342, '620525', '', '', 'ZhangJiaChuanHuiZuZiZhiXian', '张家川回族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11343, 11028, '620600', '', '', 'WuWeiShi', '武威市', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14282, 11343, '620601', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14283, 11343, '620602', '', '', 'LiangZhouQu', '凉州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14284, 11343, '620621', '', '', 'MinQinXian', '民勤县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14285, 11343, '620622', '', '', 'GuLangXian', '古浪县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14286, 11343, '620623', '', '', 'TianZhuCangZuZiZhiXian', '天祝藏族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11344, 11028, '620700', '', '', 'ZhangYeShi', '张掖市', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14287, 11344, '620701', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14288, 11344, '620702', '', '', 'GanZhouQu', '甘州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14289, 11344, '620721', '', '', 'SuNanYuGuZuZiZhiXian', '肃南裕固族自治县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14290, 11344, '620722', '', '', 'MinLeXian', '民乐县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14291, 11344, '620723', '', '', 'LinZeXian', '临泽县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14292, 11344, '620724', '', '', 'GaoTaiXian', '高台县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14293, 11344, '620725', '', '', 'ShanDanXian', '山丹县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11345, 11028, '620800', '', '', 'PingLiangShi', '平凉市', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14294, 11345, '620801', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14295, 11345, '620802', '', '', '崆峒Qu', '崆峒区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14296, 11345, '620821', '', '', '泾ChuanXian', '泾川县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14297, 11345, '620822', '', '', 'LingTaiXian', '灵台县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14298, 11345, '620823', '', '', 'ChongXinXian', '崇信县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14299, 11345, '620824', '', '', 'HuaTingXian', '华亭县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14300, 11345, '620825', '', '', 'ZhuangLangXian', '庄浪县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14301, 11345, '620826', '', '', 'JingNingXian', '静宁县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11346, 11028, '620900', '', '', 'JiuQuanShi', '酒泉市', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14302, 11346, '620901', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14303, 11346, '620902', '', '', 'SuZhouQu', '肃州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14304, 11346, '620921', '', '', 'JinTaXian', '金塔县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14305, 11346, '620922', '', '', 'AnXiXian', '安西县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14306, 11346, '620923', '', '', 'SuBeiMengGuZuZiZhiXian', '肃北蒙古族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14307, 11346, '620924', '', '', 'AKeSaiHaSaKeZuZiZhiXian', '阿克塞哈萨克族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14308, 11346, '620981', '', '', 'YuMenShi', '玉门市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14309, 11346, '620982', '', '', 'DunHuangShi', '敦煌市', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11347, 11028, '621000', '', '', 'QingYangShi', '庆阳市', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14310, 11347, '621001', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14311, 11347, '621002', '', '', 'XiFengQu', '西峰区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14312, 11347, '621021', '', '', 'QingChengXian', '庆城县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14313, 11347, '621022', '', '', 'Huan　Xian', '环　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14314, 11347, '621023', '', '', 'HuaChiXian', '华池县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14315, 11347, '621024', '', '', 'HeShuiXian', '合水县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14316, 11347, '621025', '', '', 'ZhengNingXian', '正宁县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14317, 11347, '621026', '', '', 'Ning　Xian', '宁　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14318, 11347, '621027', '', '', 'ZhenYuanXian', '镇原县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11348, 11028, '621100', '', '', 'DingXiShi', '定西市', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14319, 11348, '621101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14320, 11348, '621102', '', '', 'AnDingQu', '安定区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14321, 11348, '621121', '', '', 'TongWeiXian', '通渭县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14322, 11348, '621122', '', '', 'LongXiXian', '陇西县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14323, 11348, '621123', '', '', 'WeiYuanXian', '渭源县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14324, 11348, '621124', '', '', 'Lin洮Xian', '临洮县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14325, 11348, '621125', '', '', 'Zhang　Xian', '漳　县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14326, 11348, '621126', '', '', '岷　Xian', '岷　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11349, 11028, '621200', '', '', 'LongNanShi', '陇南市', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14327, 11349, '621201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14328, 11349, '621202', '', '', 'WuDuQu', '武都区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14329, 11349, '621221', '', '', 'Cheng　Xian', '成　县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14330, 11349, '621222', '', '', 'Wen　Xian', '文　县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14331, 11349, '621223', '', '', '宕ChangXian', '宕昌县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14332, 11349, '621224', '', '', 'Kang　Xian', '康　县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14333, 11349, '621225', '', '', 'XiHeXian', '西和县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14334, 11349, '621226', '', '', 'Li　Xian', '礼　县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14335, 11349, '621227', '', '', 'Hui　Xian', '徽　县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14336, 11349, '621228', '', '', 'LiangDangXian', '两当县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11350, 11028, '622900', '', '', 'LinXiaHuiZuZiZhiZhou', '临夏回族自治州', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14337, 11350, '622901', '', '', 'LinXiaShi', '临夏市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14338, 11350, '622921', '', '', 'LinXiaXian', '临夏县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14339, 11350, '622922', '', '', 'KangLeXian', '康乐县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14340, 11350, '622923', '', '', 'YongJingXian', '永靖县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14341, 11350, '622924', '', '', 'GuangHeXian', '广河县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14342, 11350, '622925', '', '', 'HeZhengXian', '和政县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14343, 11350, '622926', '', '', 'DongXiangZuZiZhiXian', '东乡族自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14344, 11350, '622927', '', '', 'JiShiShanBaoAnZuDongXiangZuSaLaZuZiZhiXian', '积石山保安族东乡族撒拉族自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11351, 11028, '623000', '', '', 'GanNanCangZuZiZhiZhou', '甘南藏族自治州', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14345, 11351, '623001', '', '', 'HeZuoShi', '合作市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14346, 11351, '623021', '', '', 'LinTanXian', '临潭县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14347, 11351, '623022', '', '', 'ZhuoNiXian', '卓尼县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14348, 11351, '623023', '', '', 'ZhouQuXian', '舟曲县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14349, 11351, '623024', '', '', 'DieBuXian', '迭部县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14350, 11351, '623025', '', '', 'MaQuXian', '玛曲县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14351, 11351, '623026', '', '', 'LuQuXian', '碌曲县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14352, 11351, '623027', '', '', 'XiaHeXian', '夏河县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11029, 10048, '630000', '', '', 'QingHai', '青海', '', '', 3, 29,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11352, 11029, '630100', '', '', 'XiNingShi', '西宁市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14353, 11352, '630101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14354, 11352, '630102', '', '', 'ChengDongQu', '城东区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14355, 11352, '630103', '', '', 'ChengZhongQu', '城中区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14356, 11352, '630104', '', '', 'ChengXiQu', '城西区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14357, 11352, '630105', '', '', 'ChengBeiQu', '城北区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14358, 11352, '630121', '', '', 'DaTongHuiZuTuZuZiZhiXian', '大通回族土族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14359, 11352, '630122', '', '', '湟ZhongXian', '湟中县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14360, 11352, '630123', '', '', '湟YuanXian', '湟源县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11353, 11029, '632100', '', '', 'HaiDongDiQu', '海东地区', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14361, 11353, '632121', '', '', 'PingAnXian', '平安县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14362, 11353, '632122', '', '', 'MinHeHuiZuTuZuZiZhiXian', '民和回族土族自治县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14363, 11353, '632123', '', '', 'LeDuXian', '乐都县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14364, 11353, '632126', '', '', 'HuZhuTuZuZiZhiXian', '互助土族自治县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14365, 11353, '632127', '', '', 'HuaLongHuiZuZiZhiXian', '化隆回族自治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14366, 11353, '632128', '', '', 'XunHuaSaLaZuZiZhiXian', '循化撒拉族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11354, 11029, '632200', '', '', 'HaiBeiCangZuZiZhiZhou', '海北藏族自治州', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14367, 11354, '632221', '', '', 'MenYuanHuiZuZiZhiXian', '门源回族自治县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14368, 11354, '632222', '', '', 'QiLianXian', '祁连县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14369, 11354, '632223', '', '', 'Hai晏Xian', '海晏县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14370, 11354, '632224', '', '', 'GangChaXian', '刚察县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11355, 11029, '632300', '', '', 'HuangNanCangZuZiZhiZhou', '黄南藏族自治州', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14371, 11355, '632321', '', '', 'TongRenXian', '同仁县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14372, 11355, '632322', '', '', 'JianZhaXian', '尖扎县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14373, 11355, '632323', '', '', 'ZeKuXian', '泽库县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14374, 11355, '632324', '', '', 'HeNanMengGuZuZiZhiXian', '河南蒙古族自治县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11356, 11029, '632500', '', '', 'HaiNanCangZuZiZhiZhou', '海南藏族自治州', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14375, 11356, '632521', '', '', 'GongHeXian', '共和县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14376, 11356, '632522', '', '', 'TongDeXian', '同德县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14377, 11356, '632523', '', '', 'GuiDeXian', '贵德县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14378, 11356, '632524', '', '', 'XingHaiXian', '兴海县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14379, 11356, '632525', '', '', 'GuiNanXian', '贵南县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11357, 11029, '632600', '', '', 'GuoLuoCangZuZiZhiZhou', '果洛藏族自治州', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14380, 11357, '632621', '', '', 'MaQinXian', '玛沁县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14381, 11357, '632622', '', '', 'BanMaXian', '班玛县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14382, 11357, '632623', '', '', 'GanDeXian', '甘德县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14383, 11357, '632624', '', '', 'DaRiXian', '达日县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14384, 11357, '632625', '', '', 'JiuZhiXian', '久治县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14385, 11357, '632626', '', '', 'MaDuoXian', '玛多县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11358, 11029, '632700', '', '', 'YuShuCangZuZiZhiZhou', '玉树藏族自治州', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14386, 11358, '632721', '', '', 'YuShuXian', '玉树县', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14387, 11358, '632722', '', '', 'ZaDuoXian', '杂多县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14388, 11358, '632723', '', '', 'ChengDuoXian', '称多县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14389, 11358, '632724', '', '', 'ZhiDuoXian', '治多县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14390, 11358, '632725', '', '', 'NangQianXian', '囊谦县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14391, 11358, '632726', '', '', 'QuMaLaiXian', '曲麻莱县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11359, 11029, '632800', '', '', 'HaiXiMengGuZuCangZuZiZhiZhou', '海西蒙古族藏族自治州', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14392, 11359, '632801', '', '', 'GeErMuShi', '格尔木市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14393, 11359, '632802', '', '', 'DeLingHaShi', '德令哈市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14394, 11359, '632821', '', '', 'WuLanXian', '乌兰县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14395, 11359, '632822', '', '', 'DuLanXian', '都兰县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14396, 11359, '632823', '', '', 'TianJunXian', '天峻县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11030, 10048, '640000', '', '', 'NingXiaHuiZu', '宁夏回族', '', '', 3, 30,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11360, 11030, '640100', '', '', 'YinChuanShi', '银川市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14397, 11360, '640101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14398, 11360, '640104', '', '', 'XingQingQu', '兴庆区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14399, 11360, '640105', '', '', 'XiXiaQu', '西夏区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14400, 11360, '640106', '', '', 'JinFengQu', '金凤区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14401, 11360, '640121', '', '', 'YongNingXian', '永宁县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14402, 11360, '640122', '', '', 'HeLanXian', '贺兰县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14403, 11360, '640181', '', '', 'LingWuShi', '灵武市', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11361, 11030, '640200', '', '', 'ShiZuiShanShi', '石嘴山市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14404, 11361, '640201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14405, 11361, '640202', '', '', 'DaWuKouQu', '大武口区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14406, 11361, '640205', '', '', 'HuiNongQu', '惠农区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14407, 11361, '640221', '', '', 'PingLuoXian', '平罗县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11362, 11030, '640300', '', '', 'WuZhongShi', '吴忠市', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14408, 11362, '640301', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14409, 11362, '640302', '', '', 'LiTongQu', '利通区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14410, 11362, '640323', '', '', 'YanChiXian', '盐池县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14411, 11362, '640324', '', '', 'TongXinXian', '同心县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14412, 11362, '640381', '', '', 'QingTongXiaShi', '青铜峡市', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11363, 11030, '640400', '', '', 'GuYuanShi', '固原市', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14413, 11363, '640401', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14414, 11363, '640402', '', '', 'YuanZhouQu', '原州区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14415, 11363, '640422', '', '', 'XiJiXian', '西吉县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14416, 11363, '640423', '', '', 'LongDeXian', '隆德县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14417, 11363, '640424', '', '', '泾YuanXian', '泾源县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14418, 11363, '640425', '', '', 'PengYangXian', '彭阳县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11364, 11030, '640500', '', '', 'ZhongWeiShi', '中卫市', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14419, 11364, '640501', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14420, 11364, '640502', '', '', 'ShaPoTouQu', '沙坡头区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14421, 11364, '640521', '', '', 'ZhongNingXian', '中宁县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14422, 11364, '640522', '', '', 'HaiYuanXian', '海原县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11031, 10048, '650000', '', '', 'XinJiangWeiWuEr', '新疆维吾尔', '', '', 3, 31,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11365, 11031, '650100', '', '', 'WuLuMuQiShi', '乌鲁木齐市', '', '', 4, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14423, 11365, '650101', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14424, 11365, '650102', '', '', 'TianShanQu', '天山区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14425, 11365, '650103', '', '', 'ShaYiBaKeQu', '沙依巴克区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14426, 11365, '650104', '', '', 'XinShiQu', '新市区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14427, 11365, '650105', '', '', 'ShuiMoGouQu', '水磨沟区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14428, 11365, '650106', '', '', 'TouTunHeQu', '头屯河区', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14429, 11365, '650107', '', '', 'Da坂ChengQu', '达坂城区', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14430, 11365, '650108', '', '', 'DongShanQu', '东山区', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14431, 11365, '650121', '', '', 'WuLuMuQiXian', '乌鲁木齐县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11366, 11031, '650200', '', '', 'KeLaMaYiShi', '克拉玛依市', '', '', 4, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14432, 11366, '650201', '', '', 'ShiXiaQu', '市辖区', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14433, 11366, '650202', '', '', 'DuShanZiQu', '独山子区', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14434, 11366, '650203', '', '', 'KeLaMaYiQu', '克拉玛依区', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14435, 11366, '650204', '', '', 'BaiJianTanQu', '白碱滩区', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14436, 11366, '650205', '', '', 'WuErHeQu', '乌尔禾区', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11367, 11031, '652100', '', '', 'TuLuFanDiQu', '吐鲁番地区', '', '', 4, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14437, 11367, '652101', '', '', 'TuLuFanShi', '吐鲁番市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14438, 11367, '652122', '', '', '鄯ShanXian', '鄯善县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14439, 11367, '652123', '', '', 'TuoKeXunXian', '托克逊县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11368, 11031, '652200', '', '', 'HaMiDiQu', '哈密地区', '', '', 4, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14440, 11368, '652201', '', '', 'HaMiShi', '哈密市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14441, 11368, '652222', '', '', 'BaLiKunHaSaKeZiZhiXian', '巴里坤哈萨克自治县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14442, 11368, '652223', '', '', 'YiWuXian', '伊吾县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11369, 11031, '652300', '', '', 'ChangJiHuiZuZiZhiZhou', '昌吉回族自治州', '', '', 4, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14443, 11369, '652301', '', '', 'ChangJiShi', '昌吉市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14444, 11369, '652302', '', '', 'FuKangShi', '阜康市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14445, 11369, '652303', '', '', 'MiQuanShi', '米泉市', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14446, 11369, '652323', '', '', 'HuTuBiXian', '呼图壁县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14447, 11369, '652324', '', '', 'MaNaSiXian', '玛纳斯县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14448, 11369, '652325', '', '', 'QiTaiXian', '奇台县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14449, 11369, '652327', '', '', 'JiMuSaErXian', '吉木萨尔县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14450, 11369, '652328', '', '', 'MuLeiHaSaKeZiZhiXian', '木垒哈萨克自治县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11370, 11031, '652700', '', '', 'BoErTaLaMengGuZiZhiZhou', '博尔塔拉蒙古自治州', '', '', 4, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14451, 11370, '652701', '', '', 'BoLeShi', '博乐市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14452, 11370, '652722', '', '', 'JingHeXian', '精河县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14453, 11370, '652723', '', '', 'WenQuanXian', '温泉县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11371, 11031, '652800', '', '', 'BaYinGuoLengMengGuZiZhiZhou', '巴音郭楞蒙古自治州', '', '', 4, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14454, 11371, '652801', '', '', 'KuErLeShi', '库尔勒市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14455, 11371, '652822', '', '', 'LunTaiXian', '轮台县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14456, 11371, '652823', '', '', 'WeiLiXian', '尉犁县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14457, 11371, '652824', '', '', 'RuoQiangXian', '若羌县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14458, 11371, '652825', '', '', 'QieMoXian', '且末县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14459, 11371, '652826', '', '', 'Yan耆HuiZuZiZhiXian', '焉耆回族自治县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14460, 11371, '652827', '', '', 'HeJingXian', '和静县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14461, 11371, '652828', '', '', 'HeShuoXian', '和硕县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14462, 11371, '652829', '', '', 'BoHuXian', '博湖县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11372, 11031, '652900', '', '', 'AKeSuDiQu', '阿克苏地区', '', '', 4, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14463, 11372, '652901', '', '', 'AKeSuShi', '阿克苏市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14464, 11372, '652922', '', '', 'WenSuXian', '温宿县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14465, 11372, '652923', '', '', 'KuCheXian', '库车县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14466, 11372, '652924', '', '', 'ShaYaXian', '沙雅县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14467, 11372, '652925', '', '', 'XinHeXian', '新和县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14468, 11372, '652926', '', '', 'BaiChengXian', '拜城县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14469, 11372, '652927', '', '', 'WuShiXian', '乌什县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14470, 11372, '652928', '', '', 'AWaTiXian', '阿瓦提县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14471, 11372, '652929', '', '', 'KePingXian', '柯坪县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11373, 11031, '653000', '', '', 'KeZiLeSuKeErKeZiZiZhiZhou', '克孜勒苏柯尔克孜自治州', '', '', 4, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14472, 11373, '653001', '', '', 'ATuShiShi', '阿图什市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14473, 11373, '653022', '', '', 'AKeTaoXian', '阿克陶县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14474, 11373, '653023', '', '', 'AHeQiXian', '阿合奇县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14475, 11373, '653024', '', '', 'WuQiaXian', '乌恰县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11374, 11031, '653100', '', '', 'KaShiDiQu', '喀什地区', '', '', 4, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14476, 11374, '653101', '', '', 'KaShiShi', '喀什市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14477, 11374, '653121', '', '', 'ShuFuXian', '疏附县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14478, 11374, '653122', '', '', 'ShuLeXian', '疏勒县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14479, 11374, '653123', '', '', 'YingJiShaXian', '英吉沙县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14480, 11374, '653124', '', '', 'ZePuXian', '泽普县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14481, 11374, '653125', '', '', 'ShaCheXian', '莎车县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14482, 11374, '653126', '', '', 'YeChengXian', '叶城县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14483, 11374, '653127', '', '', 'MaiGaiTiXian', '麦盖提县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14484, 11374, '653128', '', '', 'YuePuHuXian', '岳普湖县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14485, 11374, '653129', '', '', '伽ShiXian', '伽师县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14486, 11374, '653130', '', '', 'BaChuXian', '巴楚县', '', '', 5, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14487, 11374, '653131', '', '', 'TaShiKuErGanTaJiKeZiZhiXian', '塔什库尔干塔吉克自治县', '', '', 5, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11375, 11031, '653200', '', '', 'HeTianDiQu', '和田地区', '', '', 4, 11,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14488, 11375, '653201', '', '', 'HeTianShi', '和田市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14489, 11375, '653221', '', '', 'HeTianXian', '和田县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14490, 11375, '653222', '', '', 'MoYuXian', '墨玉县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14491, 11375, '653223', '', '', 'PiShanXian', '皮山县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14492, 11375, '653224', '', '', 'LuoPuXian', '洛浦县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14493, 11375, '653225', '', '', 'CeLeXian', '策勒县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14494, 11375, '653226', '', '', 'YuTianXian', '于田县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14495, 11375, '653227', '', '', 'MinFengXian', '民丰县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11376, 11031, '654000', '', '', 'YiLiHaSaKeZiZhiZhou', '伊犁哈萨克自治州', '', '', 4, 12,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14496, 11376, '654002', '', '', 'YiNingShi', '伊宁市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14497, 11376, '654003', '', '', 'KuiTunShi', '奎屯市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14498, 11376, '654021', '', '', 'YiNingXian', '伊宁县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14499, 11376, '654022', '', '', 'ChaBuChaErXiBoZiZhiXian', '察布查尔锡伯自治县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14500, 11376, '654023', '', '', 'HuoChengXian', '霍城县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14501, 11376, '654024', '', '', 'GongLiuXian', '巩留县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14502, 11376, '654025', '', '', 'XinYuanXian', '新源县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14503, 11376, '654026', '', '', 'ZhaoSuXian', '昭苏县', '', '', 5, 8,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14504, 11376, '654027', '', '', 'TeKeSiXian', '特克斯县', '', '', 5, 9,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14505, 11376, '654028', '', '', 'NiLeKeXian', '尼勒克县', '', '', 5, 10,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11377, 11031, '654200', '', '', 'TaChengDiQu', '塔城地区', '', '', 4, 13,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14506, 11377, '654201', '', '', 'TaChengShi', '塔城市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14507, 11377, '654202', '', '', 'WuSuShi', '乌苏市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14508, 11377, '654221', '', '', 'EMinXian', '额敏县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14509, 11377, '654223', '', '', 'ShaWanXian', '沙湾县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14510, 11377, '654224', '', '', 'TuoLiXian', '托里县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14511, 11377, '654225', '', '', 'YuMinXian', '裕民县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14512, 11377, '654226', '', '', 'HeBuKeSaiErMengGuZiZhiXian', '和布克赛尔蒙古自治县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11378, 11031, '654300', '', '', 'ALeTaiDiQu', '阿勒泰地区', '', '', 4, 14,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14513, 11378, '654301', '', '', 'ALeTaiShi', '阿勒泰市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14514, 11378, '654321', '', '', 'BuErJinXian', '布尔津县', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14515, 11378, '654322', '', '', 'FuYunXian', '富蕴县', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14516, 11378, '654323', '', '', 'FuHaiXian', '福海县', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14517, 11378, '654324', '', '', 'HaBaHeXian', '哈巴河县', '', '', 5, 5,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14518, 11378, '654325', '', '', 'QingHeXian', '青河县', '', '', 5, 6,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14519, 11378, '654326', '', '', 'JiMuNaiXian', '吉木乃县', '', '', 5, 7,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11379, 11031, '659000', '', '', 'ShengZhiXiaXingZhengDanWei', '省直辖行政单位', '', '', 4, 15,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14520, 11379, '659001', '', '', 'ShiHeZiShi', '石河子市', '', '', 5, 1,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14521, 11379, '659002', '', '', 'ALaErShi', '阿拉尔市', '', '', 5, 2,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14522, 11379, '659003', '', '', 'TuMuShuKeShi', '图木舒克市', '', '', 5, 3,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14523, 11379, '659004', '', '', 'WuJiaQuShi', '五家渠市', '', '', 5, 4,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11032, 10048, '710000', '', '', 'taiwan', '台湾', '', '', 3, 32,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11033, 10048, '810000', '', 'HKSAR', 'Hong Kong Special Administrative Region', '香港', '', '', 3, 33,sysdate,sysdate, 'YTB', 'YTB');

insert into t_code (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (11034, 10048, '820000', '', 'Macao SAR', 'Macao Special Administrative Region', '澳门', '', '', 3, 34,sysdate,sysdate, 'YTB', 'YTB');

commit;
set feedback on
set define on
prompt Done.
