prompt PL/SQL Developer import file
prompt Created on 2009年9月30日 by Administrator
set feedback off
set define off
prompt Disabling foreign key constraints for T_CODE...
prompt Loading T_CODE...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14529, 14528, '011', null, null, 'guwujiqitazuowudezhongzhi', '谷物及其他作物的种植', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14530, 14529, '0111', null, null, 'guwudezhongzhi', '谷物的种植', null, '指以收获籽实为主，供人类食用的农作物的种植，如稻谷、小麦、玉米等农作物的种植。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14527, 6, 'A', null, null, 'nong?lin?mu?yuye', '农、林、牧、渔业', null, '本门类包括01— 05大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14528, 14527, '01', null, null, 'nongye', '农业', null, '指对各种农作物的种植活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14531, 14529, '0112', null, null, 'shuleidezhongzhi', '薯类的种植', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14532, 14529, '0113', null, null, 'youliaodezhongzhi', '油料的种植', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14533, 14529, '0114', null, null, 'douleidezhongzhi', '豆类的种植', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14534, 14529, '0115', null, null, 'mianhuadezhongzhi', '棉花的种植', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14535, 14529, '0116', null, null, 'maleidezhongzhi', '麻类的种植', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14536, 14529, '0117', null, null, 'tangliaodezhongzhi', '糖料的种植', null, null, 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14537, 14529, '0118', null, null, 'yancaodezhongzhi', '烟草的种植', null, null, 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14538, 14529, '0119', null, null, 'qitazuowudezhongzhi', '其他作物的种植', null, null, 4, 9, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14539, 14528, '012', null, null, 'shucai?yuanyizuowudezhongzhi', '蔬菜、园艺作物的种植', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14540, 14539, '0121', null, null, 'shucaidezhongzhi', '蔬菜的种植', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14541, 14539, '0122', null, null, 'huahuidezhongzhi', '花卉的种植', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14542, 14539, '0123', null, null, 'qitayuanyizuowudezhongzhi', '其他园艺作物的种植', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14543, 14528, '013', null, null, 'shuiguo?jianguo?yinliaohexiangliaozuowudezhongzhi', '水果、坚果、饮料和香料作物的种植', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14544, 14543, '0131', null, null, 'shuiguo?jianguodezhongzhi', '水果、坚果的种植', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14545, 14543, '0132', null, null, 'chajiqitayinliaozuowudezhongzhi', '茶及其他饮料作物的种植', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14546, 14543, '0133', null, null, 'xiangliaozuowudezhongzhi', '香料作物的种植', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14547, 14528, '014', null, null, 'zhongyaocaidezhongzhi', '中药材的种植', null, '指主要用于中药配制以及中成药加工的药材作物的种植。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14548, 14527, '02', null, null, 'linye', '林业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14549, 14548, '021', null, null, 'linmudepeiyuhezhongzhi', '林木的培育和种植', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14550, 14549, '0211', null, null, 'yuzhongheyumiao', '育种和育苗', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14551, 14549, '0212', null, null, 'zaolin', '造林', null, '指在荒山、荒地、沙丘和退耕地等一切可以造林的土地上进行的林木和竹子的种植活动和恢复森林的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14552, 14549, '0213', null, null, 'linmudefuyuheguanli', '林木的抚育和管理', null, '指为促进林木生长发育，在林木生长的不同时期进行的促进林木生长发育的措施活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14553, 14548, '022', null, null, 'mucaihezhucaidecaiyun', '木材和竹材的采运', null, '指对林木和竹木的采伐，并将其运出山场至贮木场的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14554, 14553, '0221', null, null, 'mucaidecaiyun', '木材的采运', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14555, 14553, '0222', null, null, 'zhucaidecaiyun', '竹材的采运', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14556, 14548, '023', null, null, 'linchanpindecaiji', '林产品的采集', null, '指在天然森林和人工林地进行的各种林木产品和其他野生植物的采集等活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14557, 14527, '03', null, null, 'xumuye', '畜牧业', null, '指为了获得各种畜禽产品而从事的动物饲养活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14558, 14557, '031', null, null, 'shengxudesiyang', '牲畜的饲养', null, '指对牛、羊、马、驴、骡、骆驼等主要牲畜的饲养。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14559, 14557, '032', null, null, 'zhudesiyang', '猪的饲养', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14560, 14557, '033', null, null, 'jiaqindesiyang', '家禽的饲养', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14561, 14557, '034', null, null, '?liehebozhuo****wu', '狩猎和捕捉动物', null, '指对各种野生动物的捕捉以及与此相关的活动。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14562, 14557, '039', null, null, 'qitaxumuye', '其他畜牧业', null, null, 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14563, 14527, '04', null, null, 'yuye', '渔业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14564, 14563, '041', null, null, 'haiyangyuye', '海洋渔业', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14565, 14564, '0411', null, null, 'haishuiyangzhi', '海水养殖', null, '指利用海水对各种水生动植物的养殖活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14566, 14564, '0412', null, null, 'haiyangbolao', '海洋捕捞', null, '指在海洋中对各种天然水生动植物的捕捞活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14567, 14563, '042', null, null, 'neiluyuye', '内陆渔业', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14568, 14567, '0421', null, null, 'neiluyangzhi', '内陆养殖', null, '指在内陆水域进行的各种水生动物的养殖。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14569, 14567, '0422', null, null, 'neilubolao', '内陆捕捞', null, '指在内陆水域对各种天然水生动物的捕捞。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14570, 14527, '05', null, null, 'nong?lin?mu?yufuwuye', '农、林、牧、渔服务业', null, '指对农、林、牧、渔业生产活动进行的各种支持性服务活动。但不包括各种科学技术和专业技术服务活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14571, 14570, '051', null, null, 'nongyefuwuye', '农业服务业', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14572, 14571, '0511', null, null, 'guangaifuwu', '灌溉服务', null, '指为农业生产服务的灌溉系统的经营与管理活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14573, 14571, '0512', null, null, 'nongchanpinchujiagongfuwu', '农产品初加工服务', null, '指由农民家庭兼营或收购单位对收获的各种农产品（包括纺织纤维原料）进行去籽、净化、分类、晒干、剥皮、沤软或大批包装以提供初级市场的服务活动，以及其他农产品的初加工活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14574, 14571, '0519', null, null, 'qitanongyefuwu', '其他农业服务', null, '指为农业生产提供农业机械并配备操作人员的活动，防止病虫害的活动，以及其他未列明的农业服务活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14575, 14570, '052', null, null, 'linyefuwuye', '林业服务业', null, '指为林业生产服务的病虫害的防治、森林防火等各种支持性活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14576, 14570, '053', null, null, 'xumufuwuye', '畜牧服务业', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14577, 14576, '0531', null, null, 'shouyifuwu', '兽医服务', null, '指对各种动物进行的病情诊断和医疗等活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14578, 14576, '0539', null, null, 'qitaxumufuwu', '其他畜牧服务', null, '指除兽医以外的其他畜牧服务活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14579, 14570, '054', null, null, 'yuyefuwuye', '渔业服务业', null, '指对渔业生产活动进行的各种支持性服务活动，包括鱼苗及鱼种场、水产良种场和水产增殖场等进行的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14580, 6, 'B', null, null, 'caikuangye', '采矿业', null, '本类包括06—11大类。采矿业指对固体（如煤和矿物）、液体（如原油）或气体（如天然气）等自然产生的矿物的采掘。包括地下或地上采掘、矿井的运行，以及一般在矿址或矿址附近从事的旨在加工原材料的所有辅助性工作，例如碾磨、选矿和处理，均属本类活动。还包括使原料得以销售所需的准备工作。不包括水的蓄集、净化和分配，以及地质勘查、建筑工程活动。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14581, 14580, '06', null, null, 'meitankaicaihexixuanye', '煤炭开采和洗选业', null, '指对各种煤炭的开采、洗选、分级等生产活动。不包括煤制品的生产和煤炭勘探活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14582, 14581, '061', null, null, 'yanmeihewuyanmeidekaicaixixuan', '烟煤和无烟煤的开采洗选', null, '指对地下或露天烟煤、无烟煤的开采，以及对采出的烟煤、无烟煤及其他硬煤进行洗选、分级等提高质量的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14583, 14581, '062', null, null, 'hemeidekaicaixixuan', '褐煤的开采洗选', null, '指对褐煤---煤化程度较低的一种燃料的地下或露天开采，以及对采出的褐煤进行洗选、分级等提高质量的活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14584, 14581, '069', null, null, 'qitameitancaixuan', '其他煤炭采选', null, '指对生长在古生代地层中的含碳量低、灰分高的煤炭资源（如石煤、泥炭）的开采。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14585, 14580, '07', null, null, 'shiyouhetianranqikaicaiye', '石油和天然气开采业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14586, 14585, '071', null, null, 'tianranyuanyouhetianranqikaicai', '天然原油和天然气开采', null, '指在陆地或海洋，对天然原油、液态或气态天然气的开采，对煤矿瓦斯气（煤层气）的开采，为运输目的所进行的天然气液化和从天然气田气体中生产液化烃的活动。还包括对含沥青的页岩或油母页岩矿的开采，以及对焦油沙矿进行的同类作业。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14587, 14585, '079', null, null, 'yushiyouhetianranqikaicaiyouguandefuwuhuo****', '与石油和天然气开采有关的服务活动', null, '指为石油和天然气开采提供的服务活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14588, 14580, '08', null, null, 'heisejinshukuangcaixuanye', '黑色金属矿采选业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14589, 14588, '081', null, null, 'tiekuangcaixuan', '铁矿采选', null, '指对铁矿石的采矿、选矿活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14590, 14588, '089', null, null, 'qitaheisejinshukuangcaixuan', '其他黑色金属矿采选', null, '指对锰矿、铬矿等钢铁工业黑色金属辅助原料矿的采矿、选矿活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14591, 14580, '09', null, null, 'yousejinshukuangcaixuanye', '有色金属矿采选业', null, '指对常用有色金属矿、贵金属矿，以及稀有稀土金属矿的开采、选矿活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14592, 14591, '091', null, null, 'changyongyousejinshukuangcaixuan', '常用有色金属矿采选', null, '指对铜、铅锌、镍钴、锡、锑、铝、镁、汞、镉、铋等常用有色金属矿的采选活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14593, 14592, '0911', null, null, 'tongkuangcaixuan', '铜矿采选', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14594, 14592, '0912', null, null, 'qianxinkuangcaixuan', '铅锌矿采选', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14595, 14592, '0913', null, null, 'nie?kuangcaixuan', '镍钴矿采选', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14596, 14592, '0914', null, null, 'xikuangcaixuan', '锡矿采选', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14597, 14592, '0915', null, null, 'tikuangcaixuan', '锑矿采选', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14598, 14592, '0916', null, null, 'lvkuangcaixuan', '铝矿采选', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14599, 14592, '0917', null, null, 'meikuangcaixuan', '镁矿采选', null, null, 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14600, 14592, '0919', null, null, 'qitachangyongyousejinshukuangcaixuan', '其他常用有色金属矿采选', null, null, 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14601, 14591, '092', null, null, 'guijinshukuangcaixuan', '贵金属矿采选', null, '指对在地壳中含量极少的金、银和铂族元素（铂、铱、锇、钌、钯、铑）矿的采选活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14602, 14601, '0921', null, null, 'jinkuangcaixuan', '金矿采选', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14603, 14601, '0922', null, null, 'yinkuangcaixuan', '银矿采选', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14604, 14601, '0929', null, null, 'qitaguijinshukuangcaixuan', '其他贵金属矿采选', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14605, 14591, '093', null, null, 'xiyouxitujinshukuangcaixuan', '稀有稀土金属矿采选', null, '指对在自然界中含量较小，分布稀散或难以从原料中提取，以及研究和使用较晚的金属矿开采、精选活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14606, 14605, '0931', null, null, 'wu?kuangcaixuan', '钨钼矿采选', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14607, 14605, '0932', null, null, 'xitujinshukuangcaixuan', '稀土金属矿采选', null, '指镧系金属及与镧系金属性质相近的金属矿的采选活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14608, 14605, '0933', null, null, 'fangshexingjinshukuangcaixuan', '放射性金属矿采选', null, '指对主要含钍和铀的矿石开采，以及对这类矿石的精选活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14609, 14605, '0939', null, null, 'qitaxiyoujinshukuangcaixuan', '其他稀有金属矿采选', null, '指对稀有轻金属矿、稀有高熔点金属矿、稀散金属矿，以及其他稀有金属矿的采选活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14610, 14580, '10', null, null, 'feijinshukuangcaixuanye', '非金属矿采选业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14611, 14610, '101', null, null, 'tushashikaicai', '土砂石开采', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14612, 14611, '1011', null, null, 'shihuishi?shigaokaicai', '石灰石、石膏开采', null, '指对石灰、石膏，以及石灰石助熔剂的开采活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14613, 14611, '1012', null, null, 'jianzhuzhuangshiyongshikaicai', '建筑装饰用石开采', null, '指通常在采石场切制加工各种纪念碑及建筑用石料的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14614, 14611, '1013', null, null, 'naihuotushikaicai', '耐火土石开采', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14615, 14611, '1019', null, null, 'zhantujiqitatushashikaicai', '粘土及其他土砂石开采', null, '指用于建筑、陶瓷等方面的粘土开采，以及用于铺路和建筑材料的石料、石渣、砂的开采。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14616, 14610, '102', null, null, 'huaxuekuangcaixuan', '化学矿采选', null, '指对化学矿和肥料矿物的开采。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14617, 14610, '103', null, null, 'caiyan', '采盐', null, '指通过以海水（含沿海浅层地下卤水）为原料晒制，或以钻井汲取地下卤水，或注水溶解地下岩盐为原料，经真空蒸发干燥，以及从盐湖中采掘制成的以氯化钠为主要成分的盐产品的开采、粉碎和筛选活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14618, 14610, '109', null, null, 'shimianjiqitafeijinshukuangcaixuan', '石棉及其他非金属矿采选', null, '指对石棉、石墨、贵重宝石、金刚石、天然磨料，以及其他矿石的开采。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14619, 14618, '1091', null, null, 'shimian?yunmukuangcaixuan', '石棉、云母矿采选', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14620, 14618, '1092', null, null, 'shimo?huashicaixuan', '石墨、滑石采选', null, '指对天然石墨、 滑石的开采。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14621, 14618, '1093', null, null, 'baoshi?yushikaicai', '宝石、玉石开采', null, '指对贵重宝石、玉石、彩石的开采。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14622, 14618, '1099', null, null, 'qitafeijinshukuangcaixuan', '其他非金属矿采选', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14623, 14580, '11', null, null, 'qitacaikuangye', '其他采矿业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14624, 14623, '110', null, null, 'qitacaikuangye', '其他采矿业', null, '指对地热资源、矿泉水资源以及其他未列明的自然资源的开采活动。但不包括利用这些资源建立的热电厂和矿泉水厂。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14625, 6, 'C', null, null, 'zhizaoye', '制造业', null, '本门类包括13—43大类。指经物理变化或化学变化后成为了新的产品，不论是动力机械制造，还是手工制做；也不论产品是批发销售，还是零售，均视为制造。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14626, 14625, '13', null, null, 'nongfushipinjiagongye', '农副食品加工业', null, '指直接以农、林、牧 、渔业产品为原料进行的谷物磨制、饲料加工、植物油和制糖加工、屠宰及肉类加工、水产品加工，以及蔬菜、水果和坚果等食品的加工活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 100 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14627, 14626, '131', null, null, 'guwumozhi', '谷物磨制', null, '也称粮食加工，指将稻子、谷子、小麦、高粱等谷物去壳、碾磨及精加工的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14628, 14626, '132', null, null, 'siliaojiagong', '饲料加工', null, '指适用于农场、农户饲养牲畜、家禽的饲料生产加工活动，包括宠物食品的生产。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14629, 14626, '133', null, null, 'zhiwuyoujiagong', '植物油加工', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14630, 14629, '1331', null, null, 'shiyongzhiwuyoujiagong', '食用植物油加工', null, '指用各种食用植物油料生产油脂，以及精制食用油的加工活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14631, 14629, '1332', null, null, 'feishiyongzhiwuyoujiagong', '非食用植物油加工', null, '指用各种非食用植物油料生产油脂的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14632, 14626, '134', null, null, 'zhitang', '制糖', null, '指以甘蔗、甜菜为原料制作成品糖，以及以原糖或砂糖为原料精炼加工各种精制糖的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14633, 14626, '135', null, null, 'tuzaijirouleijiagong', '屠宰及肉类加工', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14634, 14633, '1351', null, null, 'xuqintuzai', '畜禽屠宰', null, '指对各种畜、禽进行宰杀，以及鲜肉冷冻等保鲜活动，但不包括商业冷藏。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14635, 14633, '1352', null, null, 'rouzhipinjifuchanpinjiagong', '肉制品及副产品加工', null, '指主要以各种畜、禽肉为原料加工成熟肉制品，以及畜、禽副产品的加工活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14636, 14626, '136', null, null, 'shuichanpinjiagong', '水产品加工', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14637, 14636, '1361', null, null, 'shuichanpinleng****jiagong', '水产品冷冻加工', null, '指为了保鲜，将海水、淡水养殖或捕捞的鱼类、虾类、甲壳类、贝类、藻类等水生动物或植物进行的冷冻加工活动，但不包括商业冷藏。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14638, 14636, '1362', null, null, 'yumizhipinjishuichanpingan?zhijiagong', '鱼糜制品及水产品干腌制加工', null, '指鱼糜制品制造，以及水产品的干制、腌制等加工活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14639, 14636, '1363', null, null, 'shuichansiliaozhizao', '水产饲料制造', null, '指用鱼骨、虾、贝等水产品生产饲料的加工活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14640, 14636, '1364', null, null, 'yuyoutiqujizhipindezhizao', '鱼油提取及制品的制造', null, '指从鱼或鱼肝中提取油脂，并生产制品的活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14641, 14636, '1369', null, null, 'qitashuichanpinjiagong', '其他水产品加工', null, '指对水生动物或水生植物进行的其他加工活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14642, 14626, '137', null, null, 'shucai?shuiguohejianguojiagong', '蔬菜、水果和坚果加工', null, '指用脱水、干制、冷藏、冷冻、腌制等方法，对蔬菜、水果、坚果的加工活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14643, 14626, '139', null, null, 'qitanongfushipinjiagong', '其他农副食品加工', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14644, 14643, '1391', null, null, 'dianfenjidianfenzhipindezhizao', '淀粉及淀粉制品的制造', null, '指用玉米、薯类、豆类及其他植物原料制作淀粉和淀粉制品的生产。还包括以淀粉为原料，经酶法或酸法转换得到的糖品生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14645, 14643, '1392', null, null, 'douzhipinzhizao', '豆制品制造', null, '指以大豆、小豆、绿豆、豌豆、蚕豆等豆类为主要原料，经加工制成食品的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14646, 14643, '1393', null, null, 'danpinjiagong', '蛋品加工', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14647, 14643, '1399', null, null, 'qitaweiliemingdenongfushipinjiagong', '其他未列明的农副食品加工', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14648, 14625, '14', null, null, 'shipinzhizaoye', '食品制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14649, 14648, '141', null, null, 'beikaoshipinzhizao', '焙烤食品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14650, 14649, '1411', null, null, 'gaodian?mianbaozhizao', '糕点、面包制造', null, '指用米粉、面粉、豆粉为主要原料，配以辅料，经成型、油炸、烤制而成的各种食品生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14651, 14649, '1419', null, null, 'bingganjiqitabeikaoshipinzhizao', '饼干及其他焙烤食品制造', null, '指以面粉（或糯米粉）、糖和油脂为主要原料，配以奶制品、蛋制品等辅料，经成型、焙烤制成的各种饼干，以及用薯类、谷类、豆类等制做的各种易于保存、食用方便、口感酥脆的焙烤食品生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14652, 14648, '142', null, null, 'tangguo?qiaokelijimijianzhizao', '糖果、巧克力及蜜饯制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14653, 14652, '1421', null, null, 'tangguo?qiaokelizhizao', '糖果、巧克力制造', null, '指以砂糖、葡萄糖浆或饴糖为主要原料，加入油脂、乳品、胶体、果仁、香料、食用色素等辅料制成甜味块状食品--糖果的制造，以及以浆状、粉状或块状可可、可可脂、可可酱、砂糖、乳品等为主要原料加工制成巧克力及巧克力制品的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14654, 14652, '1422', null, null, 'mijianzhizuo', '蜜饯制作', null, '指以水果、坚果、果皮及植物的其他部分制做糖果蜜饯的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14655, 14648, '143', null, null, 'fangbianshipinzhizao', '方便食品制造', null, '指以米、面、杂粮等为主要原料加工制成，只需简单烹制即可作为主食的具有食用简便、携带方便，易于储藏等特点的食品制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14656, 14655, '1431', null, null, 'mi?mianzhipinzhizao', '米、面制品制造', null, '指以大米、面粉为原料，经粗加工制成，未经烹制的各类米面制品的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14657, 14655, '1432', null, null, 'su****shipinzhizao', '速冻食品制造', null, '指以米、面、杂粮等为主要原料，以肉类、蔬菜等为辅料，经加工制成各类烹制或未烹制的主食品后，立即采用速冻工艺制成的，并可以在冻结条件下运输储存及销售的各类主食品的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14658, 14655, '1439', null, null, 'fangbianmianjiqitafangbianshipinzhizao', '方便面及其他方便食品制造', null, '指用米、面、杂粮等为主要原料加工制成的，可以直接食用或只需简单蒸煮即可作为主食的各种方便主食品的生产，以及其他未列明的方便食品制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14659, 14648, '144', null, null, 'yetirujiruzhipinzhizao', '液体乳及乳制品制造', null, '指以牛、羊乳为主要原料，经分级、净乳、杀菌、浓缩、干燥、发酵等加工制成的液体乳及乳制品的生产。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14660, 14648, '145', null, null, 'guantouzhizao', '罐头制造', null, '指将符合要求的原料经处理、分选、修整、烹调（或不经烹调）、装罐、密封、杀菌、冷却（或无菌包装）等罐头生产工艺制成的，达到商业无菌要求，并可以在常温下储存的罐头食品的制造。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14661, 14660, '1451', null, null, 'rou?qinleiguantouzhizao', '肉、禽类罐头制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14662, 14660, '1452', null, null, 'shuichanpinguantouzhizao', '水产品罐头制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14663, 14660, '1453', null, null, 'shucai?shuiguoguantouzhizao', '蔬菜、水果罐头制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14664, 14660, '1459', null, null, 'qitaguantoushipinzhizao', '其他罐头食品制造', null, '指婴幼儿辅助食品类罐头、米面食品类罐头（如八宝粥罐头等）及上述未列明的罐头食品制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14665, 14648, '146', null, null, 'diaoweipin?fajiaozhipinzhizao', '调味品、发酵制品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14666, 14665, '1461', null, null, 'weijingzhizao', '味精制造', null, '指以淀粉或糖蜜为原料，经微生物发酵、提取、精制等工序制成的，谷氨酸钠含量在80％及以上的鲜味剂的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14667, 14665, '1462', null, null, 'jiangyou?shicujileisizhipindezhizao', '酱油、食醋及类似制品的制造', null, '指以大豆和（或）脱脂大豆，小麦和（或）麸皮为原料，经微生物发酵制成的各种酱油和酱类制品，以及以单独或混合使用各种含有淀粉、糖的物料或酒精，经微生物发酵酿制的酸性调味品的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14668, 14665, '1469', null, null, 'qitadiaoweipin?fajiaozhipinzhizao', '其他调味品、发酵制品制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14669, 14648, '149', null, null, 'qitashipinzhizao', '其他食品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14670, 14669, '1491', null, null, 'yingyang?baojianshipinzhizao', '营养、保健食品制造', null, '指主要适宜伤残者、老年人的，含肉、鱼、水果、蔬菜、奶、麦精、钙等均质配料的营养、保健食品的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14671, 14669, '1492', null, null, 'leng****yinpinjishiyongbingzhizao', '冷冻饮品及食用冰制造', null, '指以砂糖、乳制品、豆制品、蛋制品、油脂、果料和食用添加剂等经混合配制、加热杀菌、均质、老化、冻结（凝冻）而成的冷食饮品的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14672, 14669, '1493', null, null, 'yanjiagong', '盐加工', null, '指以原盐为原料，经过化卤、蒸发、洗涤、粉碎、干燥、脱水、筛分等工序，或在其中添加碘酸钾及调味品等加工制成盐产品的生产活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14673, 14669, '1494', null, null, 'shipinjisiliaotianjiajizhizao', '食品及饲料添加剂制造', null, '指增加或改善食品特色的化学品，以及补充动物饲料的营养成分和促进生长、防治疫病的制剂的生产。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14674, 14669, '1499', null, null, 'qitaweiliemingdeshipinzhizao', '其他未列明的食品制造', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14675, 14625, '15', null, null, 'yinliaozhizaoye', '饮料制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14676, 14675, '151', null, null, 'jiujingzhizao', '酒精制造', null, '指用玉米、小麦、薯类等淀粉质原料或用糖蜜等含糖质原料，经蒸煮、糖化、发酵及蒸馏等工艺制成的酒精产品的生产。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14677, 14675, '152', null, null, 'jiudezhizao', '酒的制造', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14678, 14677, '1521', null, null, 'baijiuzhizao', '白酒制造', null, '指以高粱等粮谷为主要原料，以大曲、小曲或麸曲及酒母等为糖化发酵剂，经蒸煮、糖化、发酵、蒸馏、陈酿、勾兑而制成的，酒精度(体积分数)在18％~ 60％的蒸馏酒产品的生产.', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14679, 14677, '1522', null, null, 'pijiuzhizao', '啤酒制造', null, '指以麦芽（包括特种麦芽）为主要原料，加酒花，经酵母发酵酿制而成，含二氧化碳、起泡、低酒精度[体积分数2.5％~ 7.5％]的发酵酒产品的生产，以及啤酒专用原料麦芽的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14680, 14677, '1523', null, null, 'huangjiuzhizao', '黄酒制造', null, '指以稻米、黍米、黑米、小麦、玉米等为原料，加曲、酵母等糖化发酵剂发酵酿制而成的发酵酒产品的生产。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14681, 14677, '1524', null, null, 'putaojiuzhizao', '葡萄酒制造', null, '指以新鲜葡萄或葡萄汁为原料，经全部或部分发酵酿制而成，酒精度(体积分数)等于或大于7％的发酵酒产品的生产。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14682, 14677, '1529', null, null, 'qitajiuzhizao', '其他酒制造', null, '指除葡萄酒以外的其他果酒、配制酒以及上述未列明的其他酒产品的生产。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14683, 14675, '153', null, null, 'ruanyinliaozhizao', '软饮料制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14684, 14683, '1531', null, null, 'tansuanyinliaozhizao', '碳酸饮料制造', null, '指在一定条件下充入二氧化碳气的饮用品制造。其成品中二氧化碳气的含量（20℃时的体积倍数）不低于2.0倍。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14685, 14683, '1532', null, null, 'ping?guan?zhuangyinyongshuizhizao', '瓶（罐）装饮用水制造', null, '指以地下矿泉水和符合生活饮用水卫生标准的水为水源加工制成的，密封于塑料瓶（罐）、玻璃瓶或其他容器中，不含任何添加剂，可直接饮用水的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14686, 14683, '1533', null, null, 'guocaizhijiguocaizhiyinliaozhizao', '果菜汁及果菜汁饮料制造', null, '指以新鲜或冷藏水果和蔬菜为原料，经加工制得的果菜汁液制品生产，以及在果汁或浓缩果汁、蔬菜汁中加入水、糖液、酸味剂等，经调制而成的可直接饮用的饮品（果汁含量不低于10％）的生产。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14687, 14683, '1534', null, null, 'hanruyinliaohezhiwudanbaiyinliaozhizao', '含乳饮料和植物蛋白饮料制造', null, '指以鲜乳或乳制品为原料（经发酵或未经发酵），加入水、糖液等调制而成的可直接饮用的含乳饮品的生产；以及以蛋白质含量较高的植物的果实、种子或核果类、坚果类的果仁等为原料，在其加工制得的浆液中加入水、糖液等调制而成的可直接饮用的植物蛋白饮品的生产。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14688, 14683, '1535', null, null, 'gutiyinliaozhizao', '固体饮料制造', null, '指以糖、食品添加剂、果汁或植物抽提物等为原料，加工制成粉末状、颗粒状或块状制品[其成品水分(质量分数)不高于5％]的生产。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14689, 14683, '1539', null, null, 'chayinliaojiqitaruanyinliaozhizao', '茶饮料及其他软饮料制造', null, '指未列入上述各类的茶饮料、特殊用途饮料等其他软饮料的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14690, 14675, '154', null, null, 'jingzhichajiagong', '精制茶加工', null, '指对毛茶或半成品原料茶进行筛分、轧切、风选、干燥、匀堆、拼配等精制加工茶叶的生产。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14691, 14625, '16', null, null, 'yancaozhipinye', '烟草制品业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14692, 14691, '161', null, null, 'yanyefukao', '烟叶复烤', null, '指在原烟（初烤）基础上进行第二次烟叶水分调整的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14693, 14691, '162', null, null, 'juanyanzhizao', '卷烟制造', null, '指各种卷烟生产，但不包括生产烟用滤嘴棒的纤维丝束原料的制造。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14694, 14691, '169', null, null, 'qitayancaozhipinjiagong', '其他烟草制品加工', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14695, 14625, '17', null, null, 'fangzhiye', '纺织业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14696, 14695, '171', null, null, 'mian?huaxianfangzhijiyinranjingjiagong', '棉、化纤纺织及印染精加工', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14697, 14696, '1711', null, null, 'mian?huaxianfangzhijiagong', '棉、化纤纺织加工', null, '指以棉及棉型化学纤维为主要原料进行的纺纱、织布，以及用于织布和缝纫的线的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14698, 14696, '1712', null, null, 'mian?huaxianyinranjingjiagong', '棉、化纤印染精加工', null, '指对非自产的棉和化学纤维纺织品进行漂白、染色、印花、轧光、起绒、缩水等工序的加工。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14699, 14695, '172', null, null, 'maofangzhiheranzhengjingjiagong', '毛纺织和染整精加工', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14700, 14699, '1721', null, null, 'maotiaojiagong', '毛条加工', null, '指以毛及毛型化学纤维为原料进行梳条的加工活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14701, 14699, '1722', null, null, 'maofangzhi', '毛纺织', null, '指以毛条及毛型化学纤维为原料进行的纺、织生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14702, 14699, '1723', null, null, 'maoranzhengjingjiagong', '毛染整精加工', null, '指对非自产的毛纺织品进行漂白、染色、印花等工序的染整精加工。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14703, 14695, '173', null, null, 'mafangzhi', '麻纺织', null, '指以苎麻、亚麻、大麻等为主要原料进行的纺、织生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14704, 14695, '174', null, null, 'sijuanfangzhijijingjiagong', '丝绢纺织及精加工', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14705, 14704, '1741', null, null, '?sijiagong', '缫丝加工', null, '指由蚕茧经过加工缫制成丝的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14706, 14704, '1742', null, null, 'juanfanghesizhijiagong', '绢纺和丝织加工', null, '指以丝及化纤丝为主要原料进行的丝织生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14707, 14704, '1743', null, null, 'siyinranjingjiagong', '丝印染精加工', null, '指对非自产的丝织品进行漂白、染色、轧光、起绒、缩水或印染等工序的加工。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14708, 14695, '175', null, null, 'fangzhizhichengpinzhizao', '纺织制成品制造', null, '指以棉、化纤、毛以及各种麻和丝纺织制成品的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14709, 14708, '1751', null, null, 'mianjihuaxianzhipinzhizao', '棉及化纤制品制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14710, 14708, '1752', null, null, 'maozhipinzhizao', '毛制品制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14711, 14708, '1753', null, null, 'mazhipinzhizao', '麻制品制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14712, 14708, '1754', null, null, 'sizhipinzhizao', '丝制品制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14713, 14708, '1755', null, null, 'sheng?suo?landezhizao', '绳、索、缆的制造', null, '指用天然纤维和化学纤维制造绳、索具、缆绳、合股线的生产活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14714, 14708, '1756', null, null, 'fangzhidaihelianzibuzhizao', '纺织带和帘子布制造', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14715, 14708, '1757', null, null, 'wufangbuzhizao', '无纺布制造', null, '指以化学纤维为基本原料，经化学（或热熔）粘合而成的类似布的产品制造。因其不进行纺织，故又称为非织造布。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14716, 14708, '1759', null, null, 'qitafangzhizhichengpinzhizao', '其他纺织制成品制造', null, '指废旧纤维纺织品，特种纺织品以及其他未列明的纺织制成品的制造。', 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14717, 14695, '176', null, null, 'zhenzhipin?bianzhipinjiqizhipinzhizao', '针织品、编织品及其制品制造', null, '指纯粹由手工织成或钩成，或由机器针织、钩针编织成形的制品制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14718, 14717, '1761', null, null, 'mian?huaxianzhenzhipinjibianzhipinzhizao', '棉、化纤针织品及编织品制造', null, '指以棉及棉型化学纤维为主要原料，纯粹由手工织成或钩成，或由机器针织、钩针编织织物的制作活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14719, 14717, '1762', null, null, 'maozhenzhipinjibianzhipinzhizao', '毛针织品及编织品制造', null, '指以毛及毛型化学纤维为主要原料，纯粹由手工织成或钩成，或由机器针织、钩针编织织物的制作活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14720, 14717, '1763', null, null, 'sizhenzhipinjibianzhipinzhizao', '丝针织品及编织品制造', null, '指以丝及化纤长丝为主要原料，纯粹由手工织成或钩成，或由机器针织、钩针编织织物的制作活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14721, 14717, '1769', null, null, 'qitazhenzhipinjibianzhipinzhizao', '其他针织品及编织品制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14722, 14625, '18', null, null, 'fangzhifuzhuang?xie?maozhizaoye', '纺织服装、鞋、帽制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14723, 14722, '181', null, null, 'fangzhifuzhuangzhizao', '纺织服装制造', null, '指以纺织面料为主要原料，经裁剪后缝制各种男、女服装，以及儿童成衣的活动。包括非自产原料制作的服装，以及固定生产地点的服装制做。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14724, 14722, '182', null, null, 'fangzhimianliaoxiedezhizao', '纺织面料鞋的制造', null, '指用各种纺织面料、木材、棕草等原料缝制、模压或编制各种鞋的生产活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14725, 14722, '183', null, null, 'zhimao', '制帽', null, '指用各种纺织原料、皮革和毛皮原料，经剪裁、缝制或压制帽子的制作，以及针织或钩针编织成毛线帽的活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14726, 14625, '19', null, null, 'pige?maopi?yumao(rong)jiqizhipinye', '皮革、毛皮、羽毛(绒)及其制品业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 200 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14727, 14726, '191', null, null, 'pige?zhijiagong', '皮革鞣制加工', null, '指动物生皮经脱毛、鞣制等物理和化学方法加工，再经涂饰和整理，制成具有不易腐烂、柔韧、透气等性能的皮革生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14728, 14726, '192', null, null, 'pigezhipinzhizao', '皮革制品制造', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14729, 14728, '1921', null, null, 'pixiezhizao', '皮鞋制造', null, '指全部或大部分用皮革、人造革、合成革为面料，以橡胶、塑料或合成材料等为外底，按缝绱、胶粘、模压、注塑等工艺方法制作各种皮鞋的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14730, 14728, '1922', null, null, 'pigefuzhuangzhizao', '皮革服装制造', null, '指全部或大部分用皮革、人造革、合成革为面料，制作各式服装的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14731, 14728, '1923', null, null, 'pixiang?bao(dai)zhizao', '皮箱、包(袋)制造', null, '指全部或大部分用皮革、人造革、合成革为材料，或者以塑料、纺织物为材料，制作各种用途的皮箱、皮包(袋)或其他材料的箱、包(袋)等的制作活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14732, 14728, '1924', null, null, 'pishoutaojipizhuangshizhipinzhizao', '皮手套及皮装饰制品制造', null, '指全部或大部分用皮革、人造革、合成革为材料制成的皮手套、皮带，以及皮领带等皮装饰制品的生产活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14733, 14728, '1929', null, null, 'qitapigezhipinzhizao', '其他皮革制品制造', null, '指全部或大部分用皮革、人造革、合成革为材料制成上述类别未列明的其他各种皮革制品的生产活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14734, 14726, '193', null, null, 'maopi?zhijizhipinjiagong', '毛皮鞣制及制品加工', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14735, 14734, '1931', null, null, 'maopi?zhijiagong', '毛皮鞣制加工', null, '指带毛动物生皮经鞣制等化学和物理方法处理后，保持其绒毛形态及特点的毛皮(又称裘皮)的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14736, 14734, '1932', null, null, 'maopifuzhuangjiagong', '毛皮服装加工', null, '指用各种动物毛皮和人造毛皮为面料或里料，加工制作毛皮服装的生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14737, 14734, '1939', null, null, 'qitamaopizhipinjiagong', '其他毛皮制品加工', null, '指用各种动物毛皮和人造毛皮为材料，加工制作上述类别未列明的其他各种用途毛皮制品的生产。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14738, 14726, '194', null, null, 'yumao(rong)jiagongjizhipinzhizao', '羽毛(绒)加工及制品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14739, 14738, '1941', null, null, 'yumao(rong)jiagong', '羽毛(绒)加工', null, '指对鹅、鸭等禽类羽毛进行加工成标准毛的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14740, 14738, '1942', null, null, 'yumao(rong)zhipinjiagong', '羽毛(绒)制品加工', null, '指用加工过的羽毛(绒)作为填充物制作各种用途的羽绒制品的生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14741, 14625, '20', null, null, 'mucaijiagongjimu?zhu?teng?zong?caozhipinye', '木材加工及木、竹、藤、棕、草制品业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14742, 14741, '201', null, null, 'jucai?mupianjiagong', '锯材、木片加工', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14743, 14742, '2011', null, null, 'jucaijiagong', '锯材加工', null, '指以原木为原料，利用锯木机械或手工工具将原木纵向锯成具有一定断面尺寸（宽、厚度）的木材加工生产活动，用防腐剂和其他物质浸渍木料或对木料进行化学处理的加工活动，以及地板毛料的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14744, 14742, '2012', null, null, 'mupianjiagong', '木片加工', null, '指利用森林采伐、造材、加工等剩余物和定向培育的木材，经削（刨）片机加工成一定规格的产品生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14745, 14741, '202', null, null, 'renzaobanzhizao', '人造板制造', null, '指用木材及其剩余物、棉秆、甘蔗渣和芦苇等植物纤维为原料，加工成符合国家标准的胶合板、纤维板、刨花板、细木工板和木丝板等产品的生产，以及人造板二次加工装饰板的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14746, 14745, '2021', null, null, 'jiaohebanzhizao', '胶合板制造', null, '指具有一定规格的原木经旋（刨）切成单板，再经干燥、涂胶、组坯、热压而成的符合国家标准及供需双方协定标准的产品生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14747, 14745, '2022', null, null, 'xianweibanzhizao', '纤维板制造', null, '指用木材碎料（包括木片）、棉秆、甘蔗渣、芦苇等植物纤维作原料，经削片纤维分离，铺装成型，热压而成的产品生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14748, 14745, '2023', null, null, 'paohuabanzhizao', '刨花板制造', null, '指用木材碎料（包括木片）和其他植物纤维作原料，制成刨花，经干燥、施胶，铺装成型，热压而成的产品生产。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14749, 14745, '2029', null, null, 'qitarenzaoban?caizhizao', '其他人造板、材制造', null, '指人造板二次加工装饰板及其他未列明的人造板材的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14750, 14741, '203', null, null, 'muzhipinzhizao', '木制品制造', null, '指以木材为原料加工成建筑用木料和木材组件、木容器、软木制品及其他木制品的生产活动。但不包括木质家具的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14751, 14750, '2031', null, null, 'jianzhuyongmuliaojimucaizujianjiagong', '建筑用木料及木材组件加工', null, '指主要用于建筑施工工程的木质制品，如建筑施工用的大木工或其他支撑物，以及建筑木工的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14752, 14750, '2032', null, null, 'murongqizhizao', '木容器制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14753, 14750, '2039', null, null, 'ruanmuzhipinjiqitamuzhipinzhizao', '软木制品及其他木制品制造', null, '指天然软木除去表皮，经初加工后获得的结块软木及其制品，以及其他未列明的木质产品的生产活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14754, 14741, '204', null, null, 'zhu?teng?zong?caozhipinzhizao', '竹、藤、棕、草制品制造', null, '指除木材以外，以 竹、藤、棕、草等天然植物为原料生产制品的活动。但不包括家具的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14755, 14625, '21', null, null, 'jiajuzhizaoye', '家具制造业', null, '指用木材、金属、塑料、竹、藤等材料制作的，具有坐卧、凭倚、储藏、间隔等功能，可用于住宅、旅馆、办公室、学校、餐馆、医院、剧场、公园、船舰、飞机、机动车等任何场所的各种家具的制造。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14756, 14755, '211', null, null, 'muzhijiajuzhizao', '木质家具制造', null, '指以天然木材和木质人造板为主要材料，配以其他辅料（如油漆、贴面材料、玻璃、五金配件等）制作各种家具的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14757, 14755, '212', null, null, 'zhu?tengjiajuzhizao', '竹、藤家具制造', null, '指以竹材和藤材为主要材料，配以其他辅料制作各种家具的生产活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14758, 14755, '213', null, null, 'jinshujiajuzhizao', '金属家具制造', null, '指支(框)架及主要部件以铸铁、钢材、钢板、钢管、合金等金属为主要材料，结合使用木、竹、塑等材料，配以人造革、尼龙布、泡沫塑料等其他辅料制作各种家具的生产活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14759, 14755, '214', null, null, 'suliaojiajuzhizao', '塑料家具制造', null, '指用塑料管、板、异型材加工或用塑料、玻璃钢（即增强塑料）直接在模具中成型的家具的生产活动。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14760, 14755, '219', null, null, 'qitajiajuzhizao', '其他家具制造', null, '指主要由弹性材料(如弹簧、蛇簧、拉簧等)和软质材料(如棕丝、棉花、乳胶海绵、泡沫塑料等)，辅以绷结材料(如绷绳、绷带、麻布等)和装饰面料及饰物(如棉、毛、化纤织物及牛皮、羊皮、人造革等)制成的各种软家具；以玻璃为主要材料，辅以木材或金属材料制成的各种玻璃家具，以及其他未列明的原材料制作各种家具的活动。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14761, 14625, '22', null, null, 'zaozhijizhizhipinye', '造纸及纸制品业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14762, 14761, '221', null, null, 'zhijiangzhizao', '纸浆制造', null, '指经机械或化学方法加工纸浆的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14763, 14761, '222', null, null, 'zaozhi', '造纸', null, '指用纸浆或其他原料（如矿渣棉、云母、石棉等）悬浮在流体中的纤维，经过造纸机或其他设备成型，或手工操作而成的纸及纸板的制造活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14764, 14763, '2221', null, null, 'jizhizhijizhibanzhizao', '机制纸及纸板制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14765, 14763, '2222', null, null, 'shougongzhizhizao', '手工纸制造', null, '指采用手工操作成型，制成纸的生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14766, 14763, '2223', null, null, 'jiagongzhizhizao', '加工纸制造', null, '指对原纸及纸板进一步加工的生产活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14767, 14761, '223', null, null, 'zhizhipinzhizao', '纸制品制造', null, '指用纸及纸板为原料，进一步加工制成纸制品的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14768, 14767, '2231', null, null, 'zhihezhibanrongqidezhizao', '纸和纸板容器的制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14769, 14767, '2239', null, null, 'qitazhizhipinzhizao', '其他纸制品制造', null, '指符合出售规格或包装要求的纸制品，以及其他未列明的纸制品的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14770, 14625, '23', null, null, 'yinshuayehejilumeijiedefuzhi', '印刷业和记录媒介的复制', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14771, 14770, '231', null, null, 'yinshua', '印刷', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14772, 14771, '2311', null, null, 'shu?bao?kanyinshua', '书、报、刊印刷', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14773, 14771, '2312', null, null, 'benceyinzhi', '本册印制', null, '指由各种纸及纸板制作的，用于书写和其他用途的本册生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14774, 14771, '2319', null, null, 'baozhuangzhuang?jiqitayinshua', '包装装潢及其他印刷', null, '指根据一定的商品属性、形态，采用一定的包装材料，经过对商品包装的造型结构艺术和图案文字的设计与安排来装饰美化商品的印刷，以及其他印刷活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14775, 14770, '232', null, null, 'zhuangdingjiqitayinshuafuwuhuo****', '装订及其他印刷服务活动', null, '指专门企业从事的装订、压印媒介制造等与印刷有关的服务活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14776, 14770, '233', null, null, 'jilumeijiedefuzhi', '记录媒介的复制', null, '指将母带、母盘上的信息进行批量翻录的生产活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14777, 14625, '24', null, null, 'wenjiaotiyuyongpinzhizaoye', '文教体育用品制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14778, 14777, '241', null, null, 'wenhuayongpinzhizao', '文化用品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14779, 14778, '2411', null, null, 'wenjuzhizao', '文具制造', null, '指办公、学习等使用的各种文具的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14780, 14778, '2412', null, null, 'bidezhizao', '笔的制造', null, '指用于学习、办公或绘画等用途的各种笔制品的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14781, 14778, '2413', null, null, 'jiaoxueyongmoxingjijiaojuzhizao', '教学用模型及教具制造', null, '指主要用于教学的各种专用模型、标本及教具的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14782, 14778, '2414', null, null, 'moshui?mozhizhizao', '墨水、墨汁制造', null, '指书写、绘画等使用的墨水、墨汁及类似制品的生产。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14783, 14778, '2419', null, null, 'qitawenhuayongpinzhizao', '其他文化用品制造', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14784, 14777, '242', null, null, 'tiyuyongpinzhizao', '体育用品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14785, 14784, '2421', null, null, 'qiuleizhizao', '球类制造', null, '指各种皮制、胶制、革制的可充气的运动用球，以及其他材料制成的各种运动用硬球、软球等球类产品的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14786, 14784, '2422', null, null, 'tiyuqicaijipeijianzhizao', '体育器材及配件制造', null, '指各项竞技比赛和训练用器材及用品，体育场馆设施及器件的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14787, 14784, '2423', null, null, 'xunlianjianshenqicaizhizao', '训练健身器材制造', null, '指供健身房、家庭或体育训练用的健身器材及运动物品的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14788, 14784, '2424', null, null, 'yun****fanghuyongjuzhizao', '运动防护用具制造', null, '指用各种材质，为各项运动特制手套、鞋、帽和护具的生产活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14789, 14784, '2429', null, null, 'qitatiyuyongpinzhizao', '其他体育用品制造', null, '指钓鱼专用的各种用具及用品，以及上述未列明的体育用品制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14790, 14777, '243', null, null, 'leqizhizao', '乐器制造', null, '指中国民族乐器、西乐器等各种乐器及乐器零部件和配套产品的制造，但不包括玩具乐器的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14791, 14790, '2431', null, null, 'zhongleqizhizao', '中乐器制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14792, 14790, '2432', null, null, 'xileqizhizao', '西乐器制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14793, 14790, '2433', null, null, 'dianzileqizhizao', '电子乐器制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14794, 14790, '2439', null, null, 'qitaleqijilingjianzhizao', '其他乐器及零件制造', null, '指其他未列明的乐器、乐器零件及配套产品的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14795, 14777, '244', null, null, 'wanjuzhizao', '玩具制造', null, '指以儿童为主要使用者，具备娱乐性、教育性和安全性三个基本特征的娱乐器具的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14796, 14777, '245', null, null, 'youyiqicaijiyuleyongpinzhizao', '游艺器材及娱乐用品制造', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14797, 14796, '2451', null, null, 'lutianyoulechangsuoyouleshebeizhizao', '露天游乐场所游乐设备制造', null, '指主要安装在公园、游乐园、水上乐园、儿童乐园等露天游乐场所的电动及非电动游乐设备和游艺器材的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14798, 14796, '2452', null, null, 'youyiyongpinjishineiyouyiqicaizhizao', '游艺用品及室内游艺器材制造', null, '指主要供室内、桌上等游艺及娱乐场所使用的游乐设备、游艺器材和游艺娱乐用品，以及主要安装在室内游乐场所的电子游乐设备的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14799, 14625, '25', null, null, 'shiyoujiagong?lianjiaojiheranliaojiagongye', '石油加工、炼焦及核燃料加工业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14800, 14799, '251', null, null, 'jinglianshiyouchanpindezhizao', '精炼石油产品的制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14801, 14800, '2511', null, null, 'yuanyoujiagongjishiyouzhipinzhizao', '原油加工及石油制品制造', null, '指从天然原油、人造原油中提炼液态或气态燃料，以及石油制品的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14802, 14800, '2512', null, null, 'renzaoyuanyoushengchan', '人造原油生产', null, '指从油母页岩中提炼原油的生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14803, 14799, '252', null, null, 'lianjiao', '炼焦', null, '指主要从硬煤和褐煤中生产焦炭、干馏炭及煤焦油或沥青等副产品的炼焦炉的操作活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14804, 14799, '253', null, null, 'heranliaojiagong', '核燃料加工', null, '指从沥青铀矿或其他含铀矿石中提取铀、浓缩铀的生产，对铀金属的冶炼、加工的生产，以及其他放射性元素、同位素标记、核反应堆燃料元件的制造。还包括核废物处置活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14805, 14625, '26', null, null, 'huaxueyuanliaojihuaxuezhipinzhizaoye', '化学原料及化学制品制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14806, 14805, '261', null, null, 'jichuhuaxueyuanliaozhizao', '基础化学原料制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14807, 14806, '2611', null, null, 'wujisuanzhizao', '无机酸制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14808, 14806, '2612', null, null, 'wujijianzhizao', '无机碱制造', null, '指烧碱、纯碱的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14809, 14806, '2613', null, null, 'wujiyanzhizao', '无机盐制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14810, 14806, '2614', null, null, 'youjihuaxueyuanliaozhizao', '有机化学原料制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14811, 14806, '2619', null, null, 'qitajichuhuaxueyuanliaozhizao', '其他基础化学原料制造', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14812, 14805, '262', null, null, 'feiliaozhizao', '肥料制造', null, '指化学肥料、有机肥料及微生物肥料的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14813, 14812, '2621', null, null, 'danfeizhizao', '氮肥制造', null, '指矿物氮肥及用化学方法制成含有作物营养元素氮的化肥的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14814, 14812, '2622', null, null, 'linfeizhizao', '磷肥制造', null, '指以磷矿石为主要原料，用化学或物理方法制成含有作物营养元素磷的化肥的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14815, 14812, '2623', null, null, 'jiafeizhizao', '钾肥制造', null, '指用天然钾盐矿经富集精制加工制成含有作物营养元素钾的化肥的生产。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14816, 14812, '2624', null, null, 'fuhunfeiliaozhizao', '复混肥料制造', null, '指经过化学或物理方法加工制成的，含有两种以上作物所需主要营养元素（氮、磷、钾）的化肥的生产。包括通用型复混肥料和专用型复混肥料。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14817, 14812, '2625', null, null, 'youjifeiliaojiweishengwufeiliaozhizao', '有机肥料及微生物肥料制造', null, '指来源于动植物，经发酵或腐熟等化学处理后，适用于土壤并提供植物养分供给的，其主要成分为含氮物质的肥料制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14818, 14812, '2629', null, null, 'qitafeiliaozhizao', '其他肥料制造', null, '指上述未列明的微量元素肥料及其他肥料的生产。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14819, 14805, '263', null, null, 'nongyaozhizao', '农药制造', null, '指用于防治农业、林业作物的病、虫、草、鼠和其他有害生物，调节植物生长的各种化学农药、微生物农药、生物化学农药，以及仓储、农林产品的防蚀、河流堤坝、铁路、机场、建筑物及其他场所用药的原药和制剂的生产。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14820, 14819, '2631', null, null, 'huaxuenongyaozhizao', '化学农药制造', null, '指化学农药原药，以及经过机械粉碎、混合或稀释制成粉状、乳状和水状的化学农药制剂的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14821, 14819, '2632', null, null, 'shengwuhuaxuenongyaojiweishengwunongyaozhizao', '生物化学农药及微生物农药制造', null, '指由细菌、真菌、病毒和原生动物或基因修饰的微生物等自然产生，以及由植物提取的防治病、虫、草、鼠和其他有害生物的农药制剂生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14822, 14805, '264', null, null, 'tuliao?youmo?yanliaojileisichanpinzhizao', '涂料、油墨、颜料及类似产品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14823, 14822, '2641', null, null, 'tuliaozhizao', '涂料制造', null, '指在天然树脂或合成树脂中加入颜料、溶剂和辅助材料，经加工后制成的覆盖材料的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14824, 14822, '2642', null, null, 'youmojileisichanpinzhizao', '油墨及类似产品制造', null, '指由颜料、联接料（植物油、矿物油、树脂、溶剂）和填充料经过混合、研磨调制而成用于印刷的有色胶浆状物质，以及用于计算机打印、复印机用墨的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14825, 14822, '2643', null, null, 'yanliaozhizao', '颜料制造', null, '指用于陶瓷、搪瓷、玻璃等工业的无机颜料及类似材料的生产，以及油画、水粉画、广告等艺术用颜料的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14826, 14822, '2644', null, null, 'ranliaozhizao', '染料制造', null, '指有机合成、植物性或动物性色料，以及有机颜料的生产。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 300 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14827, 14822, '2645', null, null, 'mifengyongtianliaojileisipinzhizao', '密封用填料及类似品制造', null, '指用于建筑涂料、密封和漆工用的填充料，以及其他类似化学材料的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14828, 14805, '265', null, null, 'hechengcailiaozhizao', '合成材料制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14829, 14828, '2651', null, null, 'chujixingtaidesuliaojihechengshuzhizhizao', '初级形态的塑料及合成树脂制造', null, '也称初级塑料或原状塑料生产，包括通用塑料、工程塑料、功能高分子塑料的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14830, 14828, '2652', null, null, 'hechengxiangjiaozhizao', '合成橡胶制造', null, '指人造橡胶或合成橡胶及高分子弹性体的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14831, 14828, '2653', null, null, 'hechengxianweidan(juhe)tidezhizao', '合成纤维单(聚合)体的制造', null, '指合成纤维单体和合成纤维聚合物的生产。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14832, 14828, '2659', null, null, 'qitahechengcailiaozhizao', '其他合成材料制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14833, 14805, '266', null, null, 'zhuanyonghuaxuechanpinzhizao', '专用化学产品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14834, 14833, '2661', null, null, 'huaxueshijihezhujizhizao', '化学试剂和助剂制造', null, '指各种化学试剂、催化剂及专用助剂的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14835, 14833, '2662', null, null, 'zhuanxianghuaxueyongpinzhizao', '专项化学用品制造', null, '指水处理化学品、造纸化学品、皮革化学品、油脂化学品、油田化学品、生物工程化学品、日化产品专用化学品、化学陶瓷纤维等特种纤维及高功能化工产品，以及其他各种用途的专项化学用品的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14836, 14833, '2663', null, null, 'linchanhuaxuechanpinzhizao', '林产化学产品制造', null, '指以林产品为原料，经过化学和物理加工方法生产产品的活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14837, 14833, '2664', null, null, 'zhayaojihuogongchanpinzhizao', '炸药及火工产品制造', null, '指各种军用和民用炸药、雷管及类似的火工产品，节日用焰火制品及类似品的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14838, 14833, '2665', null, null, 'xinxihuaxuepinzhizao', '信息化学品制造', null, '指电影、照相、医用、幻灯及投影用感光材料、冲洗套药，磁、光记录材料，光纤维通讯用辅助材料，及其专用化学制剂的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14839, 14833, '2666', null, null, 'huanjingwuranchulizhuanyongyaojicailiaozhizao', '环境污染处理专用药剂材料制造', null, '指对水污染、空气污染、固体废物等污染物处理所专用的化学药剂及材料的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14840, 14833, '2667', null, null, '****wujiaozhizao', '动物胶制造', null, '指以动物骨、皮为原料，经一系列工艺处理制成有一定透明度、粘度、纯度的胶产品的生产。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14841, 14833, '2669', null, null, 'qitazhuanyonghuaxuechanpinzhizao', '其他专用化学产品制造', null, null, 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14842, 14805, '267', null, null, 'riyonghuaxuechanpinzhizao', '日用化学产品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14843, 14842, '2671', null, null, 'feizaojihechengxidijizhizao', '肥皂及合成洗涤剂制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14844, 14842, '2672', null, null, 'huazhuangpinzhizao', '化妆品制造', null, '指以涂抹、喷洒或其他类似方法，施于人体表面（如表皮、毛发、指甲、口唇等），起到清洁、保养、修饰、美化或消除不良气味，以及可对使用部位有缓和作用的产品制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14845, 14842, '2673', null, null, 'kouqiangqingjieyongpinzhizao', '口腔清洁用品制造', null, '指用于口腔或牙齿清洁卫生制品的生产。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14846, 14842, '2674', null, null, 'xiangliao?xiangjingzhizao', '香料、香精制造', null, '指具有香气和香味，用于调配香精的物质--香料的生产；以及以多种天然香料和合成香料为主要原料，并与其他辅料一起按合理的配方和工艺调配制得的具有一定香型的复杂混合物，主要用于各类加香产品中的香精的生产。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14847, 14842, '2679', null, null, 'qitariyonghuaxuechanpinzhizao', '其他日用化学产品制造', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14848, 14625, '27', null, null, 'yiyaozhizaoye', '医药制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14849, 14848, '271', null, null, 'huaxueyaopinyuanyaozhizao', '化学药品原药制造', null, '指供进一步加工药品制剂所需的原药生产。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14850, 14848, '272', null, null, 'huaxueyaopinzhijizhizao', '化学药品制剂制造', null, '指直接用于人体疾病防治、诊断的化学药品制剂的制造。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14851, 14848, '273', null, null, 'zhongyaoyinpianjiagong', '中药饮片加工', null, '指对采集的天然或人工种植、养殖的动物和植物及中草药进行加工、处理的活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14852, 14848, '274', null, null, 'zhongchengyaozhizao', '中成药制造', null, '指直接用于人体疾病防治的传统药的加工生产。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14853, 14848, '275', null, null, 'shouyongyaopinzhizao', '兽用药品制造', null, '指用于动物疾病防治医药的制造。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14854, 14848, '276', null, null, 'shengwu?shenghuazhipindezhizao', '生物、生化制品的制造', null, '指利用生物技术生产生物化学药品、基因工程药物的生产活动。', 3, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14855, 14848, '277', null, null, 'weishengcailiaojiyiyaoyongpinzhizao', '卫生材料及医药用品制造', null, '指卫生材料、外科敷料、药用包装材料以及其他内、外科用医药制品的制造。', 3, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14856, 14625, '28', null, null, 'huaxuexianweizhizaoye', '化学纤维制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14857, 14856, '281', null, null, 'xianweisuxianweiyuanliaojixianweizhizao', '纤维素纤维原料及纤维制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14858, 14857, '2811', null, null, 'huaxianjiangpozhizao', '化纤浆粕制造', null, '指生产纺织用粘胶纤维的基本原料生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14859, 14857, '2812', null, null, 'renzaoxianwei?xianweisuxianwei?zhizao', '人造纤维（纤维素纤维）制造', null, '指用化纤浆粕经机械加工生产纤维的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14860, 14856, '282', null, null, 'hechengxianweizhizao', '合成纤维制造', null, '指以石油、天然气、煤等为主要原料，用有机合成的方法制成单体，聚合后经纺丝加工生产纤维的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14861, 14860, '2821', null, null, 'jinlunxianweizhizao', '锦纶纤维制造', null, '也称聚酰胺纤维，指由尼龙66盐和聚己内酰胺为主要原料生产合成纤维的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14862, 14860, '2822', null, null, 'dilunxianweizhizao', '涤纶纤维制造', null, '也称聚酯纤维，指以聚对苯二甲酸乙二醇酯（简称聚酯）为原料生产合成纤维的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14863, 14860, '2823', null, null, '?lunxianweizhizao', '腈纶纤维制造', null, '也称聚丙烯腈纤维，指以丙烯腈为主要原料（含丙烯腈85%以上）生产合成纤维的活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14864, 14860, '2824', null, null, 'weilunxianweizhizao', '维纶纤维制造', null, '也称聚乙烯醇纤维，指以聚乙烯醇为主要原料生产合成纤维的活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14865, 14860, '2829', null, null, 'qitahechengxianweizhizao', '其他合成纤维制造', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14866, 14625, '29', null, null, 'xiangjiaozhipinye', '橡胶制品业', null, '指以天然及合成橡胶为原料生产各种橡胶制品的活动，还包括利用废橡胶再生产的橡胶制品。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14867, 14866, '291', null, null, 'luntaizhizao', '轮胎制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14868, 14867, '2911', null, null, 'cheliang?feijijigongchengjixieluntaizhizao', '车辆、飞机及工程机械轮胎制造', null, '指充气轮胎外胎、内胎和实心轮胎的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14869, 14867, '2912', null, null, 'lichetaizhizao', '力车胎制造', null, '指自行车、手推车和其他非机动车内胎、外胎的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14870, 14867, '2913', null, null, 'luntaifanxinjiagong', '轮胎翻新加工', null, '指将废轮胎翻新，以及轮胎零件的生产活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14871, 14866, '292', null, null, 'xiangjiaoban?guan?daidezhizao', '橡胶板、管、带的制造', null, '指用未硫化的、硫化的或硬质橡胶生产橡胶板状、片状、管状、带状、棒状和异型橡胶制品的活动，以及以橡胶为主要成分，用橡胶灌注、涂层、覆盖或层叠的纺织物、纱绳、钢丝（钢缆）等制作的传动带或输送带的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14872, 14866, '293', null, null, 'xiangjiaolingjianzhizao', '橡胶零件制造', null, '指各种用途的橡胶异形制品、橡胶零配件制品的生产。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14873, 14866, '294', null, null, 'zaishengxiangjiaozhizao', '再生橡胶制造', null, '指用废橡胶生产再生橡胶的活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14874, 14866, '295', null, null, 'riyongjiyiyongxiangjiaozhipinzhizao', '日用及医用橡胶制品制造', null, null, 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14875, 14866, '296', null, null, 'xiangjiaoxuexiezhizao', '橡胶靴鞋制造', null, '指以橡胶作为鞋底、鞋帮的橡胶鞋及其橡胶鞋部件的生产活动。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14876, 14866, '299', null, null, 'qitaxiangjiaozhipinzhizao', '其他橡胶制品制造', null, null, 3, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14877, 14625, '30', null, null, 'suliaozhipinye', '塑料制品业', null, '指以合成树脂（高分子化合物）为主要原料，经采用挤塑、注塑、吹塑、压延、层压等工艺加工成型的各种制品的生产；以及利用回收的废旧塑料加工再生产塑料制品的活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14878, 14877, '301', null, null, 'suliaobaomozhizao', '塑料薄膜制造', null, '指用于农业覆盖，工业、商业及日用包装薄膜的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14879, 14877, '302', null, null, 'suliaoban?guan?xingcaidezhizao', '塑料板、管、型材的制造', null, '指各种塑料板、管及管件、棒材、薄片等的生产，以及以聚氯乙烯为主要原料，经连续挤出成型的塑料异型材的生产。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14880, 14877, '303', null, null, 'suliaosi?shengjibianzhipindezhizao', '塑料丝、绳及编织品的制造', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14881, 14877, '304', null, null, 'paomosuliaozhizao', '泡沫塑料制造', null, '指以合成树脂为主要原料，经发泡成型工艺加工制成内部具有微孔的塑料制品的生产。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14882, 14877, '305', null, null, 'suliaorenzaoge?hechenggezhizao', '塑料人造革、合成革制造', null, '指外观和手感似皮革，其透气、透湿性虽然略逊色于天然革，但它具有优异的物理、机械性能，如强度和耐磨性等，并可代替天然革使用的塑料人造革的生产，以及模拟天然人造革的组成和结构，正反面都与皮革十分相似，比普通人造革更近似天然革，并可代用天然革的塑料合成革的生产。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14883, 14877, '306', null, null, 'suliaobaozhuangxiangjirongqizhizao', '塑料包装箱及容器制造', null, '指用吹塑或注塑工艺等制成的，可盛装各种物品或液体物质，以便于储存、运输等用途的塑料包装箱及塑料容器制品的生产。', 3, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14884, 14877, '307', null, null, 'suliaolingjianzhizao', '塑料零件制造', null, null, 3, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14885, 14877, '308', null, null, 'riyongsuliaozhizao', '日用塑料制造', null, null, 3, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14886, 14885, '3081', null, null, 'suliaoxiezhizao', '塑料鞋制造', null, '指以聚氯乙烯、聚乙烯、聚氨酯和乙烯醋酸乙烯等树脂为原料生产发泡或不发泡的塑料鞋类制品的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14887, 14885, '3082', null, null, 'riyongsuliaozapinzhizao', '日用塑料杂品制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14888, 14877, '309', null, null, 'qitasuliaozhipinzhizao', '其他塑料制品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14889, 14625, '31', null, null, 'feijinshukuangwuzhipinye', '非金属矿物制品业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14890, 14889, '311', null, null, 'shuini?shihuiheshigaodezhizao', '水泥、石灰和石膏的制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14891, 14890, '3111', null, null, 'shuinizhizao', '水泥制造', null, '指以水泥熟料加入适量石膏或一定混合材，经研磨设备(水泥磨)磨制到规定的细度制成水凝水泥的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14892, 14890, '3112', null, null, 'shihuiheshigaozhizao', '石灰和石膏制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14893, 14889, '312', null, null, 'shuinijishigaozhipinzhizao', '水泥及石膏制品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14894, 14893, '3121', null, null, 'shuinizhipinzhizao', '水泥制品制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14895, 14893, '3122', null, null, '?jiegougoujianzhizao', '砼结构构件制造', null, '指用于建筑施工工程的水泥混凝土预制构件的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14896, 14893, '3123', null, null, 'shimianshuinizhipinzhizao', '石棉水泥制品制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14897, 14893, '3124', null, null, 'qingzhijianzhucailiaozhizao', '轻质建筑材料制造', null, '指石膏板、石膏制品及类似轻质建筑材料的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14898, 14893, '3129', null, null, 'qitashuinizhipinzhizao', '其他水泥制品制造', null, '指玻璃纤维增强水泥制品，以及其他未列明的水泥制品的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14899, 14889, '313', null, null, 'zhuanwa?shicaijiqitajianzhucailiaozhizao', '砖瓦、石材及其他建筑材料制造', null, '指粘土、陶瓷砖瓦的生产，建筑用石的加工，以及用废料或废渣生产的建筑材料和其他建筑材料的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14900, 14899, '3131', null, null, 'zhantuzhuanwajijianzhuqikuaizhizao', '粘土砖瓦及建筑砌块制造', null, '指用粘土和其他材料生产的砖、瓦及建筑砌块的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14901, 14899, '3132', null, null, 'jianzhutaocizhipinzhizao', '建筑陶瓷制品制造', null, '指用于建筑物的内、外墙及地面装饰或耐酸腐蚀的陶瓷材料（不论是否涂釉）的生产，以及水道、排水沟的陶瓷管道及配件的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14902, 14899, '3133', null, null, 'jianzhuyongshijiagong', '建筑用石加工', null, '指用于建筑、筑路、墓地及其他用途的大理石板、花岗岩等石材的切割、成形和修饰活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14903, 14899, '3134', null, null, 'fangshuijianzhucailiaozhizao', '防水建筑材料制造', null, '指以沥青或类似材料为主要原料制造防水材料的活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14904, 14899, '3135', null, null, 'gerehegeyincailiaozhizao', '隔热和隔音材料制造', null, '指用于隔热、隔音、保温的岩石棉、矿渣棉、膨胀珍珠岩、膨胀蛭石等矿物绝缘材料及其制品的制造，但不包括石棉隔热、隔音材料的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14905, 14899, '3139', null, null, 'qitajianzhucailiaozhizao', '其他建筑材料制造', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14906, 14889, '314', null, null, 'bolijibolizhipinzhizao', '玻璃及玻璃制品制造', null, '指任何形态的玻璃和玻璃制品、玻璃纤维及其制品的生产，以及利用废玻璃、废玻璃纤维再生产玻璃制品的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14907, 14906, '3141', null, null, 'pingbanbolizhizao', '平板玻璃制造', null, '指用浮法、垂直引上法、压延法等生产平板玻璃原片的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14908, 14906, '3142', null, null, 'jishubolizhipinzhizao', '技术玻璃制品制造', null, '指用于建筑、工业生产的技术玻璃制品的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14909, 14906, '3143', null, null, 'guangxuebolizhizao', '光学玻璃制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14910, 14906, '3144', null, null, 'boliyiqizhizao', '玻璃仪器制造', null, '指实验室、医疗卫生用各种玻璃仪器和玻璃器皿的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14911, 14906, '3145', null, null, 'riyongbolizhipinjibolibaozhuangrongqizhizao', '日用玻璃制品及玻璃包装容器制造', null, '指日用玻璃制品，以及主要用于产品包装的各种玻璃容器的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14912, 14906, '3146', null, null, 'bolibaowenrongqizhizao', '玻璃保温容器制造', null, '指玻璃保温瓶和其他个人或家庭用玻璃保温容器的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14913, 14906, '3147', null, null, 'bolixianweijizhipinzhizao', '玻璃纤维及制品制造', null, null, 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14914, 14906, '3148', null, null, 'bolixianweizengqiangsuliaozhipinzhizao', '玻璃纤维增强塑料制品制造', null, '也称玻璃钢，是指用玻璃纤维增强热固性树脂生产塑料制品的活动。', 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14915, 14906, '3149', null, null, 'qitabolizhipinzhizao', '其他玻璃制品制造', null, null, 4, 9, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14916, 14889, '315', null, null, 'taocizhipinzhizao', '陶瓷制品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14917, 14916, '3151', null, null, 'weishengtaocizhipinzhizao', '卫生陶瓷制品制造', null, '指卫生和清洁盥洗用的陶瓷用具的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14918, 14916, '3152', null, null, 'tezhongtaocizhipinzhizao', '特种陶瓷制品制造', null, '指专为工业、农业、实验室等领域的各种特定用途和要求，采用特殊生产工艺制造陶瓷制品的生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14919, 14916, '3153', null, null, 'riyongtaocizhipinzhizao', '日用陶瓷制品制造', null, '指以粘土、瓷石、长石、石英等为原料，经破碎、制泥、成型、烧炼等工艺制成，主要供日常生活用的各种瓷器、炻器、陶器等陶瓷制品的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14920, 14916, '3159', null, null, 'yuanlin?chensheyishujiqitataocizhipinzhizao', '园林、陈设艺术及其他陶瓷制品制造', null, '指以石英、长石、瓷土等为原料，经制胎、施釉、装饰、烧成等工艺制成的，具有艺术造型或花纹、图案等，主要供陈设、观赏或装饰用的纯艺术欣赏陶瓷制品和以欣赏为主的陶瓷陈列品、实用品的制造，以及其他未列明的陶瓷制品的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14921, 14889, '316', null, null, 'naihuocailiaozhipinzhizao', '耐火材料制品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14922, 14921, '3161', null, null, 'shimianzhipinzhizao', '石棉制品制造', null, '指以石棉或其他矿物纤维素为基础，制造摩擦制品、石棉纺织制品、石棉橡胶制品、石棉保温隔热材料制品的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14923, 14921, '3162', null, null, 'yunmuzhipinzhizao', '云母制品制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14924, 14921, '3169', null, null, 'naihuotaocizhipinjiqitanaihuocailiaozhizao', '耐火陶瓷制品及其他耐火材料制造', null, '指用硅质、粘土质、高铝质等石粉成形的陶瓷隔热制品的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14925, 14889, '319', null, null, 'shimojiqitafeijinshukuangwuzhipinzhizao', '石墨及其他非金属矿物制品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14926, 14925, '3191', null, null, 'shimojitansuzhipinzhizao', '石墨及碳素制品制造', null, '指以炭、石墨材料加工的特种石墨制品、碳素制品、异形制品，以及用树脂和各种有机物浸渍加工而成的炭素异形产品的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 400 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14927, 14925, '3199', null, null, 'qitafeijinshukuangwuzhipinzhizao', '其他非金属矿物制品制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14928, 14625, '32', null, null, 'heisejinshuyelianjiyayanjiagongye', '黑色金属冶炼及压延加工业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14929, 14928, '321', null, null, 'liantie', '炼铁', null, '指用高炉法、直接还原法、熔融还原法等，将铁从矿石等含铁化合物中还原出来的生产过程。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14930, 14928, '322', null, null, 'liangang', '炼钢', null, '指利用不同来源的氧（如空气、氧气）来氧化炉料（主要是生铁）所含杂质的金属提纯过程，称为炼钢活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14931, 14928, '323', null, null, 'gangyayanjiagong', '钢压延加工', null, '指通过塑性加工使连铸坯、钢锭产生塑性变形，制成具有一定形状尺寸的钢材产品的生产活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14932, 14928, '324', null, null, 'tiehejinyelian', '铁合金冶炼', null, '指通过热轧、冷加工、锻压和挤压等塑性加工使连铸坯、钢锭产生塑性变形，制成具有一定形状尺寸的钢材产品的生产活动。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14933, 14625, '33', null, null, 'yousejinshuyelianjiyayanjiagongye', '有色金属冶炼及压延加工业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14934, 14933, '331', null, null, 'changyongyousejinshuyelian', '常用有色金属冶炼', null, '指通过熔炼、精炼、电解或其他方法从有色金属矿、废杂金属料等有色金属原料中提炼常用有色金属的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14935, 14934, '3311', null, null, 'tongyelian', '铜冶炼', null, '指对铜精矿等矿山原料、废杂铜料进行熔炼、精炼、电解等提炼铜的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14936, 14934, '3312', null, null, 'qianxinyelian', '铅锌冶炼', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14937, 14934, '3313', null, null, 'nie?yelian', '镍钴冶炼', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14938, 14934, '3314', null, null, 'xiyelian', '锡冶炼', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14939, 14934, '3315', null, null, 'tiyelian', '锑冶炼', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14940, 14934, '3316', null, null, 'lvyelian', '铝冶炼', null, '指对铝矿山原料通过冶炼、电解、铸型及对废杂铝料进行熔炼等提炼铝的生产活动。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14941, 14934, '3317', null, null, 'meiyelian', '镁冶炼', null, null, 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14942, 14934, '3319', null, null, 'qitachangyongyousejinshuyelian', '其他常用有色金属冶炼', null, null, 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14943, 14933, '332', null, null, 'guijinshuyelian', '贵金属冶炼', null, '指对金、银及铂族金属的提炼活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14944, 14943, '3321', null, null, 'jinyelian', '金冶炼', null, '指用金精（块）矿、阳极泥（冶炼其他有色金属时回收的阳极泥含金）、废杂金提炼黄金的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14945, 14943, '3322', null, null, 'yinyelian', '银冶炼', null, '指用银精（块）矿、阳极泥（冶炼其他有色金属时回收的阳极泥含银）、废杂银提炼白银的生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14946, 14943, '3329', null, null, 'qitaguijinshuyelian', '其他贵金属冶炼', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14947, 14933, '333', null, null, 'xiyouxitujinshuyelian', '稀有稀土金属冶炼', null, '指钨钼、稀有轻金属、稀有高熔点金属、稀散金属、稀土金属及其他稀有稀土金属冶炼。但不包括钍和铀等放射性金属的冶炼加工。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14948, 14947, '3331', null, null, 'wu?yelian', '钨钼冶炼', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14949, 14947, '3332', null, null, 'xitujinshuyelian', '稀土金属冶炼', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14950, 14947, '3339', null, null, 'qitaxiyoujinshuyelian', '其他稀有金属冶炼', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14951, 14933, '334', null, null, 'yousejinshuhejinzhizao', '有色金属合金制造', null, '指以有色金属为基体，加入一种或几种其他元素所构成的合金生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14952, 14933, '335', null, null, 'yousejinshuyayanjiagong', '有色金属压延加工', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14953, 14952, '3351', null, null, 'changyongyousejinshuyayanjiagong', '常用有色金属压延加工', null, '指铜及铜合金、铝及铝合金等常用有色金属及合金的压延加工生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14954, 14952, '3352', null, null, 'guijinshuyayanjiagong', '贵金属压延加工', null, '指对金、银及铂族等贵金属，进行轧制、拉制或挤压加工的生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14955, 14952, '3353', null, null, 'xiyouxitujinshuyayanjiagong', '稀有稀土金属压延加工', null, '指对钨、钼、钽等稀有金属材的加工。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14956, 14625, '34', null, null, 'jinshuzhipinye', '金属制品业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14957, 14956, '341', null, null, 'jiegouxingjinshuzhipinzhizao', '结构性金属制品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14958, 14957, '3411', null, null, 'jinshujiegouzhizao', '金属结构制造', null, '指以铁、钢或铝等金属为主要材料，制造金属构件、金属构件零件、建筑用钢制品及类似品的生产活动。这些制品可以运输，并便于装配、安装或竖立（如由建筑企业在建筑工地进行）。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14959, 14957, '3412', null, null, 'jinshumenchuangzhizao', '金属门窗制造', null, '指用金属材料（铝合金或其他金属）制作建筑物用门窗及类似品的生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14960, 14956, '342', null, null, 'jinshugongjuzhizao', '金属工具制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14961, 14960, '3421', null, null, 'qiexiaogongjuzhizao', '切削工具制造', null, '指手工或机床用可互换的切削工具的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14962, 14960, '3422', null, null, 'shougongjuzhizao', '手工具制造', null, '指人们在生产和日常生活中，进行装配、安装、维修时使用的手工工具的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14963, 14960, '3423', null, null, 'nongyongjiyuanlinyongjinshugongjuzhizao', '农用及园林用金属工具制造', null, '指主要用于农牧业生产的小农具，园艺或林业作业用金属工具的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14964, 14960, '3424', null, null, 'daojianjileisiriyongjinshugongjuzhizao', '刀剪及类似日用金属工具制造', null, '指日常生活用刀剪、指甲钳等类似金属工具的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14965, 14960, '3429', null, null, 'qitajinshugongjuzhizao', '其他金属工具制造', null, '指上述类别未包括的用于各种用途的金属工具的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14966, 14956, '343', null, null, 'jizhuangxiangjijinshubaozhuangrongqizhizao', '集装箱及金属包装容器制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14967, 14966, '3431', null, null, 'jizhuangxiangzhizao', '集装箱制造', null, '指专门设计，可长期反复使用，不用换箱内货物，便可从一种运输方式转移到另一种运输方式的放置货物的钢质箱体（其容积大于1立方米）的生产和修理活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14968, 14966, '3432', null, null, 'jinshuyalirongqizhizao', '金属压力容器制造', null, '指用于存装压缩气体、液化气体及其他具有一定压力的液体物质的金属容器（不论其是否配有顶盖、塞子，或衬有除铁、钢、铝以外的材料）的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14969, 14966, '3433', null, null, 'jinshubaozhuangrongqizhizao', '金属包装容器制造', null, '指主要为商品运输或包装而制作的金属包装容器及附件的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14970, 14956, '344', null, null, 'jinshusishengjiqizhipindezhizao', '金属丝绳及其制品的制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14971, 14956, '345', null, null, 'jianzhu?anquanyongjinshuzhipinzhizao', '建筑、安全用金属制品制造', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14972, 14971, '3451', null, null, 'jianzhu?jiajuyongjinshupeijianzhizao', '建筑、家具用金属配件制造', null, '指用于建筑物、家具、交通工具或其他场所和用具的金属装置、锁及其金属配件的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14973, 14971, '3452', null, null, 'jianzhuzhuangshijishuinuanguandaolingjianzhizao', '建筑装饰及水暖管道零件制造', null, '指用于建筑方面的金属装饰材料，以及建筑工程对中性介质（如水、油、蒸汽、空气、煤气等没有腐蚀性的气体和液体物质）在低压下进行工作的设备和管道上所使用的金属附件的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14974, 14971, '3453', null, null, 'anquan?xiaofangyongjinshuzhipinzhizao', '安全、消防用金属制品制造', null, '指安全、消防用金属保险柜、保险箱、消防梯等金属制品的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14975, 14971, '3459', null, null, 'qitajianzhu?anquanyongjinshuzhipinzhizao', '其他建筑、安全用金属制品制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14976, 14956, '346', null, null, 'jinshubiaomianchulijirechulijiagong', '金属表面处理及热处理加工', null, '指对外来的金属物件表面进行的电镀、镀层、抛光、喷涂、着色等专业性作业加工活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14977, 14956, '347', null, null, 'tangcizhipinzhizao', '搪瓷制品制造', null, '指在金属坯体表面涂搪瓷釉制成的，具有金属机械强度和瓷釉物化特征，及可装饰性的制品制造。但不包括搪瓷建筑材料的制造。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14978, 14977, '3471', null, null, 'gongyeshengchanpeitaoyongtangcizhipinzhizao', '工业生产配套用搪瓷制品制造', null, '指用于工业生产，专为工业生产设备、工业产品及家电配套的各种搪瓷制品的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14979, 14977, '3472', null, null, 'tangciweishengjiejuzhizao', '搪瓷卫生洁具制造', null, '指卫生用和清洁盥洗用搪瓷用具的生产。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14980, 14977, '3479', null, null, 'tangciriyongpinjiqitatangcizhipinzhizao', '搪瓷日用品及其他搪瓷制品制造', null, '指金属薄板经过成型、搪烧制成的日用品及其他搪瓷制品的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14981, 14956, '348', null, null, 'buxiugangjileisiriyongjinshuzhipinzhizao', '不锈钢及类似日用金属制品制造', null, '指以不锈钢、铝等金属为主要原材料，加工制作各种日常生活用金属制品的生产活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14982, 14981, '3481', null, null, 'jinshuzhichufangdiaolijiweishengqijuzhizao', '金属制厨房调理及卫生器具制造', null, '指厨房调理、卫生用和清洁盥洗用的各种金属用具的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14983, 14981, '3482', null, null, 'jinshuzhichuyongqiminjicanjuzhizao', '金属制厨用器皿及餐具制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14984, 14981, '3489', null, null, 'qitariyongjinshuzhipinzhizao', '其他日用金属制品制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14985, 14956, '349', null, null, 'qitajinshuzhipinzhizao', '其他金属制品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14986, 14985, '3491', null, null, 'zhubijiguijinshuzhishiyanshiyongpinzhizao', '铸币及贵金属制实验室用品制造', null, '指用金属制成的各种金属硬币，以及贵金属制实验室用品的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14987, 14985, '3499', null, null, 'qitaweiliemingdejinshuzhipinzhizao', '其他未列明的金属制品制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14988, 14625, '35', null, null, 'tongyongshebeizhizaoye', '通用设备制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14989, 14988, '351', null, null, 'guolujiyuan****jizhizao', '锅炉及原动机制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14990, 14989, '3511', null, null, 'guolujifuzhushebeizhizao', '锅炉及辅助设备制造', null, '指各种蒸汽锅炉、汽化锅炉，以及除同位素分离器以外的各种核反应堆的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14991, 14989, '3512', null, null, 'neiranjijipeijianzhizao', '内燃机及配件制造', null, '指用于移动或固定用途的往复式、旋转式、火花点火式或压燃式内燃机及配件的制造。但不包括飞机、汽车和摩托车发动机的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14992, 14989, '3513', null, null, 'qilunjijifujizhizao', '汽轮机及辅机制造', null, '指汽轮机和燃气轮机（蒸汽涡轮机）的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14993, 14989, '3514', null, null, 'shuilunjijifujizhizao', '水轮机及辅机制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14994, 14989, '3519', null, null, 'qitayuan****jizhizao', '其他原动机制造', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14995, 14988, '352', null, null, 'jinshujiagongjixiezhizao', '金属加工机械制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14996, 14995, '3521', null, null, 'jinshuqiexiaojichuangzhizao', '金属切削机床制造', null, '指用于加工金属的各种切削加工机床的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14997, 14995, '3522', null, null, 'jinshuchengxingjichuangzhizao', '金属成形机床制造', null, '指以锻压、锤击和模压方式加工金属的机床，或以弯曲、折叠、矫直、剪切、冲压、开槽、拉丝等方式加工金属的机床制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14998, 14995, '3523', null, null, 'zhuzaojixiezhizao', '铸造机械制造', null, '指金属铸造用机械的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (14999, 14995, '3524', null, null, 'jinshuqiegejihanjieshebeizhizao', '金属切割及焊接设备制造', null, '指将电能及其他形式的能量转换为切割、焊接能量对金属进行切割、焊接的设备的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15000, 14995, '3525', null, null, 'jichuangfujianzhizao', '机床附件制造', null, '指扩大机床加工性能和使用范围的附属装置的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15001, 14995, '3529', null, null, 'qitajinshujiagongjixiezhizao', '其他金属加工机械制造', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15002, 14988, '353', null, null, 'qizhongyunshushebeizhizao', '起重运输设备制造', null, '指在工厂、仓库、码头、站台及其他地方装卸材料、货物或人的机械设备，可连续运行或间歇运行的机械，固定式及移动式机械，以及安装在带轮底盘上的机械制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15003, 14988, '354', null, null, 'beng?famen?yasuojijileisijixiedezhizao', '泵、阀门、压缩机及类似机械的制造', null, '指泵、真空设备、压缩机，液压和气压动力机械及类似机械和阀门的制造。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15004, 15003, '3541', null, null, 'bengjizhenkongshebeizhizao', '泵及真空设备制造', null, '指用以输送各种液体、液固混合体、液气混合体及其增压、循环、真空等用途的设备制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15005, 15003, '3542', null, null, 'qitiyasuojixiezhizao', '气体压缩机械制造', null, '指对气体进行压缩，使其压力提高到350kPa以上的压缩机械的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15006, 15003, '3543', null, null, 'famenhexuansaidezhizao', '阀门和旋塞的制造', null, '指通过改变其流道面积的大小，用以控制流体流量、压力和流向的装置制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15007, 15003, '3544', null, null, 'yeyaheqiya****lijixiejiyuanjianzhizao', '液压和气压动力机械及元件制造', null, '指以液体为工作介质，靠液体静压力来传送能量的装置制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15008, 14988, '355', null, null, 'zhoucheng?chilun?chuan****hequ****bujiandezhizao', '轴承、齿轮、传动和驱动部件的制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15009, 15008, '3551', null, null, 'zhouchengzhizao', '轴承制造', null, '指各种轴承及轴承零件的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15010, 15008, '3552', null, null, 'chilun?chuan****hequ****bujianzhizao', '齿轮、传动和驱动部件制造', null, '指用于传递动力，实现机械输送和提升重物的基础件，铰接式链条等机械传动装置的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15011, 14988, '356', null, null, 'honglu?ronglujidianluzhizao', '烘炉、熔炉及电炉制造', null, '指使用液体燃料、粉状固体燃料（焚化炉）或气体燃料，进行煅烧、熔化或其他热处理用的非电力熔炉、窑炉和烘炉等燃烧器的制造，以及工业或实验室用电炉及零件的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15012, 14988, '357', null, null, 'fengji?hengqi?baozhuangshebeidengtongyongshebeizhizao', '风机、衡器、包装设备等通用设备制造', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15013, 15012, '3571', null, null, 'fengji?fengshanzhizao', '风机、风扇制造', null, '指用来输送各种气体，以及气体增压、循环、通风换气、排尘等设备的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15014, 15012, '3572', null, null, 'qiti?yetifenlijichunjingshebeizhizao', '气体、液体分离及纯净设备制造', null, '指气体和液体的提纯、分离、液化、过滤、净化等设备的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15015, 15012, '3573', null, null, 'zhileng?kongdiaoshebeizhizao', '制冷、空调设备制造', null, '指用于专业生产、商业经营等方面的制冷设备和空调设备的制造。但不包括家用空调设备的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15016, 15012, '3574', null, null, 'feng****hedian****gongjuzhizao', '风动和电动工具制造', null, '指带有电动机、非电力发动机或风动装置的手工操作加工工具的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15017, 15012, '3575', null, null, 'penqiangjileisiqijuzhizao', '喷枪及类似器具制造', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15018, 15012, '3576', null, null, 'baozhuangzhuanyongshebeizhizao', '包装专用设备制造', null, '指对瓶、桶、箱、袋或其他容器的洗涤、干燥、装填、密封和贴标签等专用包装机械的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15019, 15012, '3577', null, null, 'hengqizhizao', '衡器制造', null, '指用来测定物质重量的各种机械的、电子的或机电结合的装置或设备的生产。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15020, 15012, '3579', null, null, 'qitatongyongshebeizhizao', '其他通用设备制造', null, null, 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15021, 14988, '358', null, null, 'tongyonglingbujianzhizaojijixiexiuli', '通用零部件制造及机械修理', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15022, 15021, '3581', null, null, 'jinshumifengjianzhizao', '金属密封件制造', null, '指以金属为原料制作密封件的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15023, 15021, '3582', null, null, 'jingujian?danhuangzhizao', '紧固件、弹簧制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15024, 15021, '3583', null, null, 'jixielingbujianjiagongjishebeixiuli', '机械零部件加工及设备修理', null, '指对专用和通用机械零部件的加工及修理活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15025, 15021, '3589', null, null, 'qitatongyonglingbujianzhizao', '其他通用零部件制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15026, 14988, '359', null, null, 'jinshuzhu?duanjiagong', '金属铸、锻加工', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 500 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15027, 15026, '3591', null, null, 'gangtiezhujianzhizao', '钢铁铸件制造', null, '指钢铁金属铸造的各种成品或半成品的制造活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15028, 15026, '3592', null, null, 'duanjianjifenmoyejinzhipinzhizao', '锻件及粉末冶金制品制造', null, '指通过对金属坯料进行锻造变形而得到的工件或毛坯，或者将金属粉末和与非金属粉末的混合物通过压制变形、烘焙制作制品和材料的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15029, 14625, '36', null, null, 'zhuanyongshebeizhizaoye', '专用设备制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15030, 15029, '361', null, null, 'kuangshan?yejin?jianzhuzhuanyongshebeizhizao', '矿山、冶金、建筑专用设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15031, 15030, '3611', null, null, 'caikuang?caishishebeizhizao', '采矿、采石设备制造', null, '指地下或露天，用于对金属、煤炭、石油、化工等各种矿石或建筑用石的开采设备制造，以及矿石筛选、分类、分离、洗选、轧碎或类似加工工艺使用的专用机械的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15032, 15030, '3612', null, null, 'shiyouzuancaizhuanyongshebeizhizao', '石油钻采专用设备制造', null, '指对陆地和海洋的石油、天然气等专用开采设备的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15033, 15030, '3613', null, null, 'jianzhugongchengyongjixiezhizao', '建筑工程用机械制造', null, '指建筑施工及市政公共工程用机械的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15034, 15030, '3614', null, null, 'jianzhucailiaoshengchanzhuanyongjixiezhizao', '建筑材料生产专用机械制造', null, '指生产水泥、水泥制品、玻璃及玻璃纤维、建筑陶瓷、砖瓦等建筑材料所使用的各种生产、搅拌成型机械的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15035, 15030, '3615', null, null, 'yejinzhuanyongshebeizhizao', '冶金专用设备制造', null, '指金属冶炼、轧制、铸造等生产专用设备的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15036, 15029, '362', null, null, 'huagong?mucai?feijinshujiagongzhuanyongshebeizhizao', '化工、木材、非金属加工专用设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15037, 15036, '3621', null, null, 'lianyou?huagongshengchanzhuanyongshebeizhizao', '炼油、化工生产专用设备制造', null, '指炼油、化学工业生产专用设备的制造，但不包括包装机械等通用设备的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15038, 15036, '3622', null, null, 'xiangjiaojiagongzhuanyongshebeizhizao', '橡胶加工专用设备制造', null, '指加工橡胶，或以橡胶为材料生产橡胶制品的专用机械制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15039, 15036, '3623', null, null, 'suliaojiagongzhuanyongshebeizhizao', '塑料加工专用设备制造', null, '指塑料加工工业中所使用的各类专用机械和装置的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15040, 15036, '3624', null, null, 'mucaijiagongjixiezhizao', '木材加工机械制造', null, '指加工木材、木质板材及木制品的生产专用机械的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15041, 15036, '3625', null, null, 'mojuzhizao', '模具制造', null, '指金属铸造用模具、矿物材料用模具、橡胶或塑料用模具及其他用途的模具的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15042, 15036, '3629', null, null, 'qitafeijinshujiagongzhuanyongshebeizhizao', '其他非金属加工专用设备制造', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15043, 15029, '363', null, null, 'shipin?yinliao?yancaojisiliaoshengchanzhuanyongshebeizhizao???', '食品、饮料、烟草及饲料生产专用设备制造　　　', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15044, 15043, '3631', null, null, 'shipin?yinliao?yancaogongyezhuanyongshebeizhizao', '食品、饮料、烟草工业专用设备制造', null, '指主要用于食品、饮料酒及饮料生产、烟草制品加工等专用设备的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15045, 15043, '3632', null, null, 'nongfushipinjiagongzhuanyongshebeizhizao', '农副食品加工专用设备制造', null, '指对谷物、干豆类等农作物的筛选、碾磨、储存等专用机械，糖料和油料作物加工机械，畜禽屠宰、水产品加工及盐加工机械的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15046, 15043, '3633', null, null, 'siliaoshengchanzhuanyongshebeizhizao', '饲料生产专用设备制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15047, 15029, '364', null, null, 'yinshua?zhiyao?rihuashengchanzhuanyongshebeizhizao', '印刷、制药、日化生产专用设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15048, 15047, '3641', null, null, 'zhijianghezaozhizhuanyongshebeizhizao', '制浆和造纸专用设备制造', null, '指在制浆、造纸、纸加工及纸制品的生产过程中所用的各类机械和设备的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15049, 15047, '3642', null, null, 'yinshuazhuanyongshebeizhizao', '印刷专用设备制造', null, '指使用印刷或其他方式将图文信息转移到承印物上的专用生产设备的制造活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15050, 15047, '3643', null, null, 'riyonghuagongzhuanyongshebeizhizao', '日用化工专用设备制造', null, '指日用化学工业产品，如洗涤用品、口腔清洁用品、化妆品、香精、香料、动物胶、感光材料及其他日用化学制品专用生产设备的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15051, 15047, '3644', null, null, 'zhiyaozhuanyongshebeizhizao', '制药专用设备制造', null, '指化学原料药和药剂、中药饮片及中成药专用生产设备的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15052, 15047, '3645', null, null, 'zhaomingqijushengchanzhuanyongshebeizhizao', '照明器具生产专用设备制造', null, '指用于生产各种电灯泡、荧光灯管等电光源和各种照明器具产品专用生产设备的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15053, 15047, '3646', null, null, 'boli?taocihetangcizhipinshengchanzhuanyongshebeizhizao', '玻璃、陶瓷和搪瓷制品生产专用设备制造', null, '指用于生产加工玻璃制品、玻璃器皿的专用机械，陶瓷器等类似产品的加工机床和生产专用机械，以及搪瓷制品生产设备的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15054, 15047, '3649', null, null, 'qitariyongpinshengchanzhuanyongshebeizhizao', '其他日用品生产专用设备制造', null, '指上述未列明的日用品、工艺美术品的生产专用机械设备的制造。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15055, 15029, '365', null, null, 'fangzhi?fuzhuanghepigegongyezhuanyongshebeizhizao', '纺织、服装和皮革工业专用设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15056, 15055, '3651', null, null, 'fangzhizhuanyongshebeizhizao', '纺织专用设备制造', null, '指纺织纤维预处理、纺纱、织造和针织机械的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15057, 15055, '3652', null, null, 'pige?maopijiqizhipinjiagongzhuanyongshebeizhizao', '皮革、毛皮及其制品加工专用设备制造', null, '指在制革、毛皮鞣制及其制品的加工生产过程中所使用的各种专用设备的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15058, 15055, '3653', null, null, 'fengrenjixiezhizao', '缝纫机械制造', null, '指用于服装、鞋帽制作的专用缝纫机械的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15059, 15055, '3659', null, null, 'qitafuzhuangjiagongzhuanyongshebeizhizao', '其他服装加工专用设备制造', null, '指除缝纫机以外，生产加工各种面料服装、鞋帽，以及洗衣店所使用的类似机械的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15060, 15029, '366', null, null, 'dianzihediangongjixiezhuanyongshebeizhizao', '电子和电工机械专用设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15061, 15060, '3661', null, null, 'diangongjixiezhuanyongshebeizhizao', '电工机械专用设备制造', null, '指电机、电线、电缆等电站、电工专用机械及器材的生产设备的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15062, 15060, '3662', null, null, 'dianzigongyezhuanyongshebeizhizao', '电子工业专用设备制造', null, '指生产半导体器件、集成电路、电子元件、电真空器件，以及电子设备整机装配专用设备的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15063, 15060, '3663', null, null, 'wuqidanyaozhizao', '武器弹药制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15064, 15060, '3669', null, null, 'hangkong?hangtianjiqitazhuanyongshebeizhizao', '航空、航天及其他专用设备制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15065, 15029, '367', null, null, 'nong?lin?mu?yuzhuanyongjixiezhizao', '农、林、牧、渔专用机械制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15066, 15065, '3671', null, null, 'tuolajizhizao', '拖拉机制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15067, 15065, '3672', null, null, 'jixiehuanongyejiyuanyijijuzhizao', '机械化农业及园艺机具制造', null, '指用于土壤处理，作物种植或施肥，种植物收割的农业、园艺或其他机械的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15068, 15065, '3673', null, null, 'yinglinjimuzhucaifajixiezhizao', '营林及木竹采伐机械制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15069, 15065, '3674', null, null, 'xumujixiezhizao', '畜牧机械制造', null, '指草原建设、管理，畜禽养殖及畜禽产品采集等专用机械的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15070, 15065, '3675', null, null, 'yuyejixiezhizao', '渔业机械制造', null, '指渔业养殖、渔业捕捞等专用设备的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15071, 15065, '3676', null, null, 'nonglinmuyujixiepeijianzhizao', '农林牧渔机械配件制造', null, '指拖拉机配件和其他农林牧渔机械配件的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15072, 15065, '3679', null, null, 'qitanonglinmuyuyejixiezhizaojijixiexiuli', '其他农林牧渔业机械制造及机械修理', null, '指用于农产品初加工机械，以及其他未列明的农林牧渔业机械的制造及机械修理活动。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15073, 15029, '368', null, null, 'yiliaoyiqishebeijiqixiezhizao', '医疗仪器设备及器械制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15074, 15073, '3681', null, null, 'yiliaozhenduan?jianhujizhiliaoshebeizhizao', '医疗诊断、监护及治疗设备制造', null, '指用于内科、外科、眼科、牙科、妇产科、中医等医疗专用及兽医用诊断、监护、治疗等方面的设备制造与修理。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15075, 15073, '3682', null, null, 'kouqiangkeyongshebeijiqijuzhizao', '口腔科用设备及器具制造', null, '指用于口腔治疗、修补的设备及器械的制造与修理。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15076, 15073, '3683', null, null, 'shiyanshijiyiyongxiaodushebeiheqijudezhizao', '实验室及医用消毒设备和器具的制造', null, '指实验室或医疗用的消毒、灭菌设备及器具的制造与修理。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15077, 15073, '3684', null, null, 'yiliao?waikejishouyiyongqixiezhizao', '医疗、外科及兽医用器械制造', null, '指各种手术室、急救室、诊疗室等医疗专用及兽医用的手术器械、医疗诊断用品和医疗用具的制造与修理。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15078, 15073, '3685', null, null, 'jixiezhiliaojibingfanghulishebeizhizao', '机械治疗及病房护理设备制造', null, '指各种治疗设备、病房护理及康复专用设备的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15079, 15073, '3686', null, null, 'jiazhi?rengongqiguanjizhi?jie?ruqixiezhizao', '假肢、人工器官及植（介）入器械制造', null, '指外科、牙科等医疗专用及兽医用的假肢、人工器官、植入器械，矫形器具的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15080, 15073, '3689', null, null, 'qitayiliaoshebeijiqixiezhizao', '其他医疗设备及器械制造', null, '指外科、牙科等医疗专用及兽医用的家具器械，以及其他未列明的医疗设备及器械的制造与修理活动。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15081, 15029, '369', null, null, 'huanbao?shehuigonggonganquanjiqitazhuanyongshebeizhizao', '环保、社会公共安全及其他专用设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15082, 15081, '3691', null, null, 'huanjingwuranfangzhizhuanyongshebeizhizao', '环境污染防治专用设备制造', null, '指环境污染防治、废旧物品加工，以及工业材料回收专用设备的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15083, 15081, '3692', null, null, 'dizhikanchazhuanyongshebeizhizao', '地质勘查专用设备制造', null, '指地质勘查（勘探）专用设备的制造，不包括通用钻采、挖掘机械的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15084, 15081, '3693', null, null, 'youzhengzhuanyongjixiejiqicaizhizao', '邮政专用机械及器材制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15085, 15081, '3694', null, null, 'shangye?yinshi?fuwuyezhuanyongshebeizhizao', '商业、饮食、服务业专用设备制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15086, 15081, '3695', null, null, 'shehuigonggonganquanshebeijiqicaizhizao', '社会公共安全设备及器材制造', null, '指公安、消防、安全等社会公共安全设备及器材的制造、加工和修理活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15087, 15081, '3696', null, null, 'jiaotonganquanjiguanzhizhuanyongshebeizhizao', '交通安全及管制专用设备制造', null, '指除铁路以外的各种道路、内河航道、停车场、港口、机场等使用的讯号、安全或交通控制设备的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15088, 15081, '3697', null, null, 'shuiziyuanzhuanyongjixiezhizao', '水资源专用机械制造', null, '指水利工程管理、节水工程及水的生产、供应专用设备的制造。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15089, 15081, '3699', null, null, 'qitazhuanyongshebeizhizao', '其他专用设备制造', null, '指上述类别中未列明的其他专用设备的制造。', 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15090, 14625, '37', null, null, 'jiaotongyunshushebeizhizaoye', '交通运输设备制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15091, 15090, '371', null, null, 'tieluyunshushebeizhizao', '铁路运输设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15092, 15091, '3711', null, null, 'tielujichecheliangji****chezuzhizao', '铁路机车车辆及动车组制造', null, '指以外来电源或以蓄电池驱动的，或以压燃式发动机及其他方式驱动的，能够牵引铁路车辆的动力机车、铁路动车组的制造，以及用于运送旅客和用以装运货物的客车、货车及其他铁路专用车辆的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15093, 15091, '3712', null, null, 'gongkuangyouguizhuanyongcheliangzhizao', '工矿有轨专用车辆制造', null, '指专门在企业内部和矿山使用的非铁路干线的轨道式运输车辆的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15094, 15091, '3713', null, null, 'tielujichecheliangpeijianzhizao', '铁路机车车辆配件制造', null, '指铁道或有轨机车及其拖拽车辆的专用零配件的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15095, 15091, '3714', null, null, 'tieluzhuanyongshebeijiqicai?peijianzhizao', '铁路专用设备及器材、配件制造', null, '指铁路信号、安全或交通控制设备，以及其他铁路专用设备及器材、配件的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15096, 15091, '3719', null, null, 'qitatielushebeizhizaojishebeixiuli', '其他铁路设备制造及设备修理', null, '指独立的铁路机车修理企业对铁路各种运输车辆设备和器材的修理活动，以及其他未列明的铁路运输设备的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15097, 15090, '372', null, null, 'qichezhizao', '汽车制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15098, 15097, '3721', null, null, 'qichezhengchezhizao', '汽车整车制造', null, '指由动力装置驱动，具有四个以上车轮的非轨道、无架线的车辆，并主要用于载送人员和（或）货物，牵引输送人员和（或）货物的车辆制造。还包括汽车发动机的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15099, 15097, '3722', null, null, 'gaizhuangqichezhizao', '改装汽车制造', null, '指利用外购汽车底盘改装各类汽车的制造活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15100, 15097, '3723', null, null, 'dianchezhizao', '电车制造', null, '指以电作为动力，以屏板或可控硅方式控制的城市内交通工具和专用交通工具的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15101, 15097, '3724', null, null, 'qichecheshen?guachedezhizao', '汽车车身、挂车的制造', null, '指其设计和技术特性需由汽车牵引，才能正常行驶的一种无动力的道路车辆的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15102, 15097, '3725', null, null, 'qichelingbujianjipeijianzhizao', '汽车零部件及配件制造', null, '指机动车辆及其车身的各种零配件的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15103, 15097, '3726', null, null, 'qichexiuli', '汽车修理', null, '指专业汽车修理企业进行的修理活动，但不包括非汽车修理厂（即规模较小的路边修理服务部）的修理和维护。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15104, 15090, '373', null, null, 'motuochezhizao', '摩托车制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15105, 15104, '3731', null, null, 'motuochezhengchezhizao', '摩托车整车制造', null, '指不论是否装有边斗的摩托车制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15106, 15104, '3732', null, null, 'motuochelingbujianjipeijianzhizao', '摩托车零部件及配件制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15107, 15090, '374', null, null, 'zixingchezhizao', '自行车制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15108, 15107, '3741', null, null, 'jiaotazixingchejicanjirenzuochezhizao', '脚踏自行车及残疾人座车制造', null, '指未装马达，主要以脚蹬驱动，装有一个或多个轮子的脚踏车辆、残疾人座车及其零件的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15109, 15107, '3742', null, null, 'zhu****zixingchezhizao', '助动自行车制造', null, '指主要以蓄电池作为辅助能源，具有两个车轮，能实现人力骑行、电动或电动助力功能的特种自行车及其零件的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15110, 15090, '375', null, null, 'chuanbojifu****zhuangzhizhizao', '船舶及浮动装置制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15111, 15110, '3751', null, null, 'jinshuchuanbozhizao', '金属船舶制造', null, '指以钢质、铝质等各种金属为主要材料，为民用或军事部门建造的远洋、近海或内陆河湖的金属船舶的制造活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15112, 15110, '3752', null, null, 'feijinshuchuanbozhizao', '非金属船舶制造', null, '指以各种木材、水泥、玻璃钢等非金属材料，为民用或军事部门建造船舶的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15113, 15110, '3753', null, null, 'yulechuanheyun****chuandejianzaohexiuli', '娱乐船和运动船的建造和修理', null, '指游艇和用于娱乐或运动的其他船只的建造与修理。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15114, 15110, '3754', null, null, 'chuanyongpeitaoshebeizhizao', '船用配套设备制造', null, '指船用主机、辅机设备的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15115, 15110, '3755', null, null, 'chuanboxiulijichaichuan', '船舶修理及拆船', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15116, 15110, '3759', null, null, 'hangbiaoqicaijiqitafu****zhuangzhidezhizao', '航标器材及其他浮动装置的制造', null, '指用于航标的各种器材、浮式装置，以及不以航行为主的船只的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15117, 15090, '376', null, null, 'hangkonghangtianqizhizao', '航空航天器制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15118, 15117, '3761', null, null, 'feijizhizaojixiuli', '飞机制造及修理', null, '指在大气同温层以内飞行的用于运货或载客，用于国防，以及用于体育运动或其他用途的各种飞机及其零件的制造和修理活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15119, 15117, '3762', null, null, 'hangtianqizhizao', '航天器制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15120, 15117, '3769', null, null, 'qitafeixingqizhizao', '其他飞行器制造', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15121, 15090, '379', null, null, 'jiaotongqicaijiqitajiaotongyunshushebeizhizao', '交通器材及其他交通运输设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15122, 15121, '3791', null, null, 'qianshuijishuixiajiulaozhuangbeizhizao', '潜水及水下救捞装备制造', null, '指潜水装置及水下作业、救捞装备的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15123, 15121, '3792', null, null, 'jiaotongguanliyongjinshubiaozhijisheshizhizao', '交通管理用金属标志及设施制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15124, 15121, '3799', null, null, 'qitajiaotongyunshushebeizhizao', '其他交通运输设备制造', null, '指手推车辆、牲畜牵引车辆的制造，以及上述未列明的交通运输设备的制造和车辆修理活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15125, 14625, '39', null, null, 'dianqijixiejiqicaizhizaoye', '电气机械及器材制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15126, 15125, '391', null, null, 'dianjizhizao', '电机制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 600 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15127, 15126, '3911', null, null, 'fadianjijifadianjizuzhizao', '发电机及发电机组制造', null, '指发电机及其辅助装置、发电成套设备的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15128, 15126, '3912', null, null, 'dian****jizhizao', '电动机制造', null, '指交流或直流电动机及零件的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15129, 15126, '3919', null, null, 'weidianjijiqitadianjizhizao', '微电机及其他电机制造', null, '指自动化系统中一种主要用于传递和交换信号等方面的元件，即控制微电机的制造，以及其他未列明的电机制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15130, 15125, '392', null, null, 'shupeidianjikongzhishebeizhizao', '输配电及控制设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15131, 15130, '3921', null, null, 'bianyaqi?zhengliuqihedianganqizhizao', '变压器、整流器和电感器制造', null, '指变压器、静止式变流器等电力电子设备和互感器的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15132, 15130, '3922', null, null, 'dianrongqijiqipeitaoshebeizhizao', '电容器及其配套设备制造', null, '指电力电容器、其他电容器及其配套装置和电容器零件的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15133, 15130, '3923', null, null, 'peidiankaiguankongzhishebeizhizao', '配电开关控制设备制造', null, '指用于电压超过1000V的，诸如一般在配电系统中使用的接通及断开或保护电路的电器，以及用于电压不超过1000V的如在住房、工业设备或家用电器中使用的配电开关控制设备及其零件的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15134, 15130, '3924', null, null, 'dianlidianziyuanqijianzhizao', '电力电子元器件制造', null, '指用于电能变换和控制（从而实现运动控制）的电子产品的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15135, 15130, '3929', null, null, 'qitashupeidianjikongzhishebeizhizao', '其他输配电及控制设备制造', null, '指开关设备和控制设备内部的元器件之间，以及与外部电路之间的电连接所需用的器件和配件的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15136, 15125, '393', null, null, 'dianxian?dianlan?guanglanjidiangongqicaizhizao', '电线、电缆、光缆及电工器材制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15137, 15136, '3931', null, null, 'dianxiandianlanzhizao', '电线电缆制造', null, '指在电力输配、电能传送，声音、文字、图像等信息传播，以及照明等各方面所使用的电线电缆的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15138, 15136, '3932', null, null, 'guangxian?guanglanzhizao', '光纤、光缆制造', null, '指将电的信号变成光的信号，进行声音、文字、图像等信息传输的光缆.。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15139, 15136, '3933', null, null, 'jueyuanzhipinzhizao', '绝缘制品制造', null, '指电气绝缘子、电机或电气设备用的绝缘零件，以及带有绝缘材料的金属制电导管及接头的制造。但不包括玻璃、陶瓷绝缘体和绝缘漆制品的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15140, 15136, '3939', null, null, 'qitadiangongqicaizhizao', '其他电工器材制造', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15141, 15125, '394', null, null, 'dianchizhizao', '电池制造', null, '指以正极活性材料、负极活性材料，配合电介质，以密封式结构制成的，并具有一定公称电压和额定容量的化学电源的制造。包括一次性、不可充电和二次可充电，重复使用的干电池、蓄电池，以及利用氢与氧的合成转换成电能的装置，即燃料电池和利用太阳光转换成电能的太阳能电池的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15142, 15125, '395', null, null, 'jiayongdianliqijuzhizao', '家用电力器具制造', null, '指使用交流电源或电池的各种家用电器的制造。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15143, 15142, '3951', null, null, 'jiayongzhilengdianqijuzhizao', '家用制冷电器具制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15144, 15142, '3952', null, null, 'jiayongkongqidiaojieqizhizao', '家用空气调节器制造', null, '指使用交流电源(制冷量14000W及以下)，调节室内温度、湿度、气流速度和空气洁净度的房间空气调节器的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15145, 15142, '3953', null, null, 'jiayongtongfengdianqijuzhizao', '家用通风电器具制造', null, '指由单相交流电动机驱动扇叶旋转，产生强制气流，以改善人体与周围空气间的热交换条件的电器制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15146, 15142, '3954', null, null, 'jiayongchufangdianqijuzhizao', '家用厨房电器具制造', null, '指家庭厨房用的电热蒸煮器具、电热烘烤器具、电热水和饮料加热器具、电热煎炒器具、家用电灶、家用食品加工电器具、家用厨房电清洁器具等电器具的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15147, 15142, '3955', null, null, 'jiayongqingjieweishengdianqijuzhizao', '家用清洁卫生电器具制造', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15148, 15142, '3956', null, null, 'jiayongmeirong?baojiandianqijuzhizao', '家用美容、保健电器具制造', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15149, 15142, '3957', null, null, 'jiayongdianliqijuzhuanyongpeijianzhizao', '家用电力器具专用配件制造', null, '指家用电力器具专用配件的制造，不包括通用零部件。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15150, 15142, '3959', null, null, 'qitajiayongdianliqijuzhizao', '其他家用电力器具制造', null, null, 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15151, 15125, '396', null, null, 'feidianlijiayongqijuzhizao', '非电力家用器具制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15152, 15151, '3961', null, null, 'ranqi?taiyangnengjileisinengyuandeqijuzhizao', '燃气、太阳能及类似能源的器具制造', null, '指以液化气、天然气、人工煤气、沼气或太阳能作燃料，以马口铁、搪瓷、不锈钢等为材料加工制成的家用器具的生产。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15153, 15151, '3969', null, null, 'qitafeidianlijiayongqijuzhizao', '其他非电力家用器具制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15154, 15125, '397', null, null, 'zhaomingqijuzhizao', '照明器具制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15155, 15154, '3971', null, null, 'dianguangyuanzhizao', '电光源制造', null, '电光源也称灯泡或电灯，本类是指将电能转变为光的器件的制造。目前按发光原理可分为白炽灯（指因电流通过使钨丝白炽而发光的灯）和气体放电灯（指电流通过灯两端的电极形成气体放电而产生光的灯）。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15156, 15154, '3972', null, null, 'zhaomingdengjuzhizao', '照明灯具制造', null, '指由起支撑、固定反射和保护作用的部件及联结光源所必须的电路辅助装置组合而成，将一个或多个光源发出的光进行控制分配或反射装置的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15157, 15154, '3979', null, null, 'dengyongdianqifujianjiqitazhaomingqijuzhizao', '灯用电器附件及其他照明器具制造', null, '指灯用电器附件，以及为各种灯泡配套用的灯座及其他照明器具的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15158, 15125, '399', null, null, 'qitadianqijixiejiqicaizhizao', '其他电气机械及器材制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15159, 15158, '3991', null, null, 'cheliangzhuanyongzhaomingjidianqixinhaoshebeizhuangzhizhizao', '车辆专用照明及电气信号设备装置制造', null, '指交通运输工具（如机动车、船舶、铁道车辆等）专用电力照明及信号装置，各种电气音响或视觉报警、警告、指示装置，以及其他电气声像信号装置的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15160, 15158, '3999', null, null, 'qitaweiliemingdedianqijixiezhizao', '其他未列明的电气机械制造', null, '指上述未列明的电气机械及器材的制造，以及电气机械的修理活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15161, 14625, '40', null, null, 'tongxinshebei?jisuanjijiqitadianzishebeizhizaoye', '通信设备、计算机及其他电子设备制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15162, 15161, '401', null, null, 'tongxinshebeizhizao', '通信设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15163, 15162, '4011', null, null, 'tongxinchuanshushebeizhizao', '通信传输设备制造', null, '指有线或无线通信传输设备的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15164, 15162, '4012', null, null, 'tongxinjiaohuanshebeizhizao', '通信交换设备制造', null, '指实现电路（信息）交换或接口功能设备的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15165, 15162, '4013', null, null, 'tongxinzhongduanshebeizhizao', '通信终端设备制造', null, '指有线电话机、可视电话、传真设备等各种有线通信终端接收设备的制造，但不包括无线电话机的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15166, 15162, '4014', null, null, 'yi****tongxinjizhongduanshebeizhizao', '移动通信及终端设备制造', null, '指移动通信设备及无线电话机（手机）等终端设备的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15167, 15162, '4019', null, null, 'qitatongxinshebeizhizao', '其他通信设备制造', null, '指其他通信设备的制造，以及对通信设备的修理。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15168, 15161, '402', null, null, 'leidajipeitaoshebeizhizao', '雷达及配套设备制造', null, '指雷达整机及雷达配套产品的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15169, 15161, '403', null, null, 'guangbodianshishebeizhizao', '广播电视设备制造', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15170, 15169, '4031', null, null, 'guangbodianshijiemuzhizuojifasheshebeizhizao', '广播电视节目制作及发射设备制造', null, '指广播电视节目制作、发射设备及器材的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15171, 15169, '4032', null, null, 'guangbodianshijieshoushebeijiqicaizhizao', '广播电视接收设备及器材制造', null, '指专业广播电视接收设备、专业用录音录像重放、音响设备及其他配套的广播电视设备的制造，但不包括家用广播电视接收设备及装置。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15172, 15169, '4039', null, null, 'yingyongdianshishebeijiqitaguangbodianshishebeizhizao', '应用电视设备及其他广播电视设备制造', null, '指应用电视设备、其他电视设备和器材的制造，以及对广播电视专用设备的修理活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15173, 15161, '404', null, null, 'dianzijisuanjizhizao', '电子计算机制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15174, 15173, '4041', null, null, 'dianzijisuanjizhengjizhizao', '电子计算机整机制造', null, '指可进行算术运算或逻辑运算，包括中央处理机，并配有输入、输出装置和存储功能及其他外围设备的成套数字系统装置的制造，还包括来件组装电子计算机的加工活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15175, 15173, '4042', null, null, 'jisuanjiwangluoshebeizhizao', '计算机网络设备制造', null, '指建立某一计算机系统网络所需各种相关设备或装置的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15176, 15173, '4043', null, null, 'dianzijisuanjiwaibushebeizhizao', '电子计算机外部设备制造', null, '指电子计算机外部设备及附件的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15177, 15161, '405', null, null, 'dianziqijianzhizao', '电子器件制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15178, 15177, '4051', null, null, 'dianzizhenkongqijianzhizao', '电子真空器件制造', null, '指电子热离子管、冷阴极管或光电阴极管及其他真空电子器件，以及电子管零件的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15179, 15177, '4052', null, null, 'bandaotifenliqijianzhizao', '半导体分立器件制造', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15180, 15177, '4053', null, null, 'jichengdianluzhizao', '集成电路制造', null, '指单片集成电路、混合式集成电路和组装好的电子模压组件、微型组件或类似组件的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15181, 15177, '4059', null, null, 'guangdianziqijianjiqitadianziqijianzhizao', '光电子器件及其他电子器件制造', null, '指光电子器件、显示器件和组件，以及其他未列明的电子器件的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15182, 15161, '406', null, null, 'dianziyuanjianzhizao', '电子元件制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15183, 15182, '4061', null, null, 'dianziyuanjianjizujianzhizao', '电子元件及组件制造', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15184, 15182, '4062', null, null, 'yinzhidianlubanzhizao', '印制电路板制造', null, '指在绝缘板上通过常规或非常规的印刷工艺，使导电元件、触点或电感器件、电阻器和电容器等其他印刷元件组成的电路及专用元件的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15185, 15161, '407', null, null, 'jiayongshitingshebeizhizao', '家用视听设备制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15186, 15185, '4071', null, null, 'jiayongyingshishebeizhizao', '家用影视设备制造', null, '指家用电视机、录像机、摄像机、激光视盘机等影视设备整机及零部件的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15187, 15185, '4072', null, null, 'jiayongyinxiangshebeizhizao', '家用音响设备制造', null, '指家用无线电收音机、收录音机、唱机等家用音响设备的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15188, 15161, '409', null, null, 'qitadianzishebeizhizao', '其他电子设备制造', null, '指电子（气）物理设备及其他未列明的电子设备的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15189, 14625, '41', null, null, 'yiqiyibiaojiwenhua?bangongyongjixiezhizaoye', '仪器仪表及文化、办公用机械制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15190, 15189, '411', null, null, 'tongyongyiqiyibiaozhizao', '通用仪器仪表制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15191, 15190, '4111', null, null, 'gongyezi****kongzhixitongzhuangzhizhizao', '工业自动控制系统装置制造', null, '指用于工业产品制造或加工过程中，连续自动测量，控制材料或产品的温度、压力、粘度等变量的工业控制用计算机系统、仪表和装置的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15192, 15190, '4112', null, null, 'diangongyiqiyibiaozhizao', '电工仪器仪表制造', null, '指测量或检验电压、电流、电阻或功率的通用仪器装置的制造，但不包括发电或供电过程中计量仪表的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15193, 15190, '4113', null, null, 'huitu?jisuanjiceliangyiqizhizao', '绘图、计算及测量仪器制造', null, '指供设计、制图、 绘图、计算、测量，以及学习或办公、教学等使用的测量和绘图用具、器具、精密天平及量仪的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15194, 15190, '4114', null, null, 'shiyanfenxiyiqizhizao', '实验分析仪器制造', null, '指实验、检验、分析、测量液体或气体的流量、比重、压力、温度、湿度、粘度的仪器制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15195, 15190, '4115', null, null, 'shiyanjizhizao', '试验机制造', null, '指材料机械性能的试验机器和器械的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15196, 15190, '4119', null, null, 'gongyingyongyibiaojiqitatongyongyiqizhizao', '供应用仪表及其他通用仪器制造', null, '指电、气、水、油和热等类似气体或液体的供应过程中使用的计量仪表、自动调节或控制仪器及装置， 以及其他未列明的通用仪器仪表和仪表元器件的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15197, 15189, '412', null, null, 'zhuanyongyiqiyibiaozhizao', '专用仪器仪表制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15198, 15197, '4121', null, null, 'huanjingjiancezhuanyongyiqiyibiaozhizao', '环境监测专用仪器仪表制造', null, '指对水和空气中的污染物，以及噪声、放射性物质、电磁波等进行监测的专用仪器仪表的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15199, 15197, '4122', null, null, 'qichejiqitayongjishuyibiaozhizao', '汽车及其他用计数仪表制造', null, '指汽车、船舶及工业生产用转数计、生产计数器、里程记录器及类似仪表的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15200, 15197, '4123', null, null, 'daohang?qixiangjihaiyangzhuanyongyiqizhizao', '导航、气象及海洋专用仪器制造', null, '指用于气象、海洋、水文、天文、航海、航空等方面的导航、制导、测量仪器和仪表及类似装置的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15201, 15197, '4124', null, null, 'nonglinmuyuzhuanyongyiqiyibiaozhizao', '农林牧渔专用仪器仪表制造', null, '指农、林、牧、渔生产专用仪器、仪表及类似装置的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15202, 15197, '4125', null, null, 'dizhikantanhedizhenzhuanyongyiqizhizao', '地质勘探和地震专用仪器制造', null, '指地质勘探、钻采、地震等地球物理专用仪器、仪表及类似装置的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15203, 15197, '4126', null, null, 'jiaoxuezhuanyongyiqizhizao', '教学专用仪器制造', null, '指专供教学示范或展览，而无其他用途的专用仪器的制造。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15204, 15197, '4127', null, null, 'hezijihefusheceliangyiqizhizao', '核子及核辐射测量仪器制造', null, '指专门用于核离子射线的测量或检验的仪器、装置、核辐射探测器等核专业用仪器仪表的制造。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15205, 15197, '4128', null, null, 'dianziceliangyiqizhizao', '电子测量仪器制造', null, '指用电子技术实现对被测对象（电子产品）的电参数定量检测装置的制造  。', 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15206, 15197, '4129', null, null, 'qitazhuanyongyiqizhizao', '其他专用仪器制造', null, '指用于纺织、电站热工仪表等其他未列明的专用仪器的制造，以及对专用仪器、仪表的修理活动。', 4, 9, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15207, 15189, '413', null, null, 'zhongbiaoyujishiyiqizhizao', '钟表与计时仪器制造', null, '指各种钟、表、钟表机芯、时间记录装置、计时器的制造，还包括装有钟表机芯或同步马达用以测量、记录或指示时间间隔的装置、定时开关，以及钟表零配件的制造。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15208, 15189, '414', null, null, 'guangxueyiqijiyanjingzhizao', '光学仪器及眼镜制造', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15209, 15208, '4141', null, null, 'guangxueyiqizhizao', '光学仪器制造', null, '指用玻璃或其他材料（如石英、萤石、塑料或金属）制作的光学配件、装配好的光学元件、组合式光学显微镜，以及军用望远镜等光学仪器的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15210, 15208, '4142', null, null, 'yanjingzhizao', '眼镜制造', null, '指眼镜成镜、眼镜框架和零配件、眼镜镜片、角膜接触镜（隐形眼镜）及护理产品的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15211, 15189, '415', null, null, 'wenhua?bangongyongjixiezhizao', '文化、办公用机械制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15212, 15211, '4151', null, null, 'dianyingjixiezhizao', '电影机械制造', null, '指各种类型或用途的电影摄影机、电影录音摄影机、影像放映机及电影辅助器材和配件的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15213, 15211, '4152', null, null, 'huandengjitouyingshebeizhizao', '幻灯及投影设备制造', null, '指将电路图形投射在有感光性的半导体材料上的幻灯、投影设备、器材装置及零件的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15214, 15211, '4153', null, null, 'zhaoxiangjijiqicaizhizao', '照相机及器材制造', null, '指各种类型或用途的照相机，包括用以制备印刷板，用于水下或空中照相的照相机，以及照相机用闪光装置、摄影暗室装置和零件的制造。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15215, 15211, '4154', null, null, 'fuyinhejiaoyinshebeizhizao', '复印和胶印设备制造', null, '指各种用途的复印设备，主要用于办公室的胶印设备、文字处理设备及零件的制造。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15216, 15211, '4155', null, null, 'jisuanqijihuobizhuanyongshebeizhizao', '计算器及货币专用设备制造', null, '指金融、商业、交通及办公等使用的电子计算器、具有计算功能的数据记录、重现和显示机器，以及货币专用设备及类似机械的制造。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15217, 15211, '4159', null, null, 'qitawenhua?bangongyongjixiezhizao', '其他文化、办公用机械制造', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15218, 15189, '419', null, null, 'qitayiqiyibiaodezhizaojixiuli', '其他仪器仪表的制造及修理', null, '指上述未列明的仪器、仪表的制造与修理活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15219, 14625, '42', null, null, 'gongyipinjiqitazhizaoye', '工艺品及其他制造业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15220, 15219, '421', null, null, 'gongyimeishupinzhizao', '工艺美术品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15221, 15220, '4211', null, null, 'diaosugongyipinzhizao', '雕塑工艺品制造', null, '指以玉石、宝石、象牙、角、骨、贝壳等硬质材料，木、竹、椰壳、树根、软木等天然植物，以及石膏、泥、面、塑料等为原料，经雕刻、琢、磨、捏或塑等艺术加工而制成的各种供欣赏和实用的工艺品的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15222, 15220, '4212', null, null, 'jinshugongyipinzhizao', '金属工艺品制造', null, '指以金、银、铜、铁、锡等各种金属为原料，经过制胎、浇铸、锻打、錾刻、搓丝、焊接、纺织、镶嵌、点兰、烧制、打磨、电镀等各种工艺加工制成的造型美观、花纹图案精致的工艺美术品的制作活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15223, 15220, '4213', null, null, 'qiqigongyipinzhizao', '漆器工艺品制造', null, '指将半生漆、腰果漆加工调配成各种鲜艳的漆料，以木、纸、塑料、铜、布等作胎，采用推光、雕填、彩画、嵌镶、刻灰等传统工艺和现代漆器工艺进行的工艺制品的制作活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15224, 15220, '4214', null, null, 'huahuagongyipinzhizao', '花画工艺品制造', null, '指以绢、丝、绒、纸、涤纶、塑料、羽毛、通草以及鲜花草等为原料，经造型设计、模压、剪贴、干燥等工艺精制而成的花、果、叶等人造花类工艺品，以画面出现、可以挂或摆的具有欣赏性、装饰性的画类工艺品的制作活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15225, 15220, '4215', null, null, 'tianranzhiwuxianweibianzhigongyipinzhizao', '天然植物纤维编织工艺品制造', null, '指以竹、藤、棕、草、柳、葵、麻等天然植物纤维为材料，经编织或镶嵌而成具有造型艺术或图案花纹，以欣赏为主的工艺陈列品以及工艺实用品的制作活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15226, 15220, '4216', null, null, 'choushacixiugongyipinzhizao', '抽纱刺绣工艺品制造', null, '指以棉、麻、丝、毛及人造纤维纺织品等为主要原料，经设计、刺绣、抽、拉、钩等工艺加工各种生活装饰用品，以及以纺织品为主要原料，经特殊手工工艺或民间工艺方法加工成各种具有较强装饰效果的生活用纺织品的生产活动。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 700 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15227, 15220, '4217', null, null, 'ditan?guatanzhizao', '地毯、挂毯制造', null, '指以羊毛、丝、棉、麻及人造纤维等为原料，经手工编织、机织、栽绒等方式加工而成的各种具有装饰性的地面覆盖物或可用于悬挂、垫坐等用途的生活装饰用品的生产活动。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15228, 15220, '4218', null, null, 'zhubaoshoushijiyouguanwupindezhizao', '珠宝首饰及有关物品的制造', null, '指以金、银、铂等贵金属及其合金以及钻石、宝石、玉石、翡翠、珍珠等为原料，经金属加工和连结组合、镶嵌等工艺加工制作各种图案的装饰品的制作活动。', 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15229, 15220, '4219', null, null, 'qitagongyimeishupinzhizao', '其他工艺美术品制造', null, null, 4, 9, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15230, 15219, '422', null, null, 'riyongzapinzhizao', '日用杂品制造', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15231, 15230, '4221', null, null, 'zhijingjileisipinjiagong', '制镜及类似品加工', null, '指以平板玻璃为材料，经对其进行镀银、镀铝，或冷、热加工后成型的日用制品的制造。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15232, 15230, '4222', null, null, 'zongmaojiagong?zhishuajiqingsaogongjudezhizao', '鬃毛加工、制刷及清扫工具的制造', null, '指用原毛加工成生产刷子类产品的成品毛的生产，或以成品毛和棕、金属丝、塑料丝等为原料加工制刷的生产，以及其他清扫工具的制造。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15233, 15230, '4229', null, null, 'qitariyongzapinzhizao', '其他日用杂品制造', null, '指上述类别中均未列明的制伞及其他各种日常生活用杂品的生产活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15234, 15219, '423', null, null, 'meizhipinzhizao', '煤制品制造', null, '指用烟煤、无烟煤、褐煤及其他各种煤炭制成的煤砖、煤球等固体燃料制品的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15235, 15219, '424', null, null, 'hefushejiagong', '核辐射加工', null, '指核技术与同位素技术的应用，由核辐照站利用核技术对原有产品改良、改变性质并使其增值的加工活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15236, 15219, '429', null, null, 'qitaweiliemingdezhizaoye', '其他未列明的制造业', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15237, 14625, '43', null, null, 'feiqiziyuanhefeijiucailiaohuishoujiagongye', '废弃资源和废旧材料回收加工业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15238, 15237, '431', null, null, 'jinshufeiliaohesuixiedejiagongchuli', '金属废料和碎屑的加工处理', null, '指从各种废料[包括固体废料、废水（液）、废气等]中回收，并使之便于转化为新的原材料，或适于进一步加工为金属原料的金属废料和碎屑的再加工处理活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15239, 15237, '432', null, null, 'feijinshufeiliaohesuixiedejiagongchuli', '非金属废料和碎屑的加工处理', null, '指从各种废料[包括固体废料、废水（液）、废气等]中回收，或经过分类，使其适于进一步加工为新原料的非金属废料和碎屑的再加工处理活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15240, 6, 'D', null, null, 'dianli?ranqijishuideshengchanhegongyingye', '电力、燃气及水的生产和供应业', null, '本类包括44—46大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15241, 15240, '44', null, null, 'dianli?relideshengchanhegongyingye', '电力、热力的生产和供应业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15242, 15241, '441', null, null, 'dianlishengchan', '电力生产', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15243, 15242, '4411', null, null, 'huolifadian', '火力发电', null, '指利用煤炭、石油、天然气等燃料燃烧产生的热能，通过火电动力装置转换成电能的生产活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15244, 15242, '4412', null, null, 'shuilifadian', '水力发电', null, '指通过建设水电站将水能转换成电能的生产活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15245, 15242, '4413', null, null, 'helifadian', '核力发电', null, '指利用核反应堆中重核裂变所释放出的热能转换成电能的生产活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15246, 15242, '4419', null, null, 'qitanengyuanfadian', '其他能源发电', null, '指利用风力、地热、太阳能、潮汐能、生物能及其他未列明的发电活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15247, 15241, '442', null, null, 'dianligongying', '电力供应', null, '指利用电网出售给用户电能的输送与分配活动，以及供电局的供电活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15248, 15241, '443', null, null, 'relishengchanhegongying', '热力生产和供应', null, '指利用煤炭、油、燃气等能源，通过锅炉等装置生产蒸汽和热水，或外购蒸汽、热水进行供应销售、供热设施的维护和管理的活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15249, 15240, '45', null, null, 'ranqishengchanhegongyingye', '燃气生产和供应业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15250, 15249, '450', null, null, 'ranqishengchanhegongyingye', '燃气生产和供应业', null, '指利用煤炭、油、燃气等能源生产燃气，或外购液化石油气、天然气等燃气，并进行输配，向用户销售燃气的活动，以及对煤气、液化石油气、天然气输配及使用过程中的维修和管理活动。但不包括专门从事罐装液化石油气零售业务的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15251, 15240, '46', null, null, 'shuideshengchanhegongyingye', '水的生产和供应业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15252, 15251, '461', null, null, 'zilaishuideshengchanhegongying', '自来水的生产和供应', null, '指将天然水（地下水、地表水）经过蓄集、净化达到生活饮用水或其他用水标准，并向居民家庭、企业和其他用户供应的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15253, 15251, '462', null, null, 'wushuichulijiqizaishengliyong', '污水处理及其再生利用', null, '指对污水的收集、处理及净化后的再利用活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15254, 15251, '469', null, null, 'qitashuidechuli?liyongyufenpei', '其他水的处理、利用与分配', null, '指将海水淡化处理，达到可以使用标准的生产活动，以及对雨水、微咸水等类似水进行收集、处理和利用活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15255, 6, 'E', null, null, 'jianzhuye', '建筑业', null, '本类包括47—50大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15256, 15255, '47', null, null, 'fangwuhetumugongchengjianzhuye', '房屋和土木工程建筑业', null, '指建筑工程从破土动工到工程主体结构竣工（或封顶）的活动过程。不包括工程的内部安装和装饰活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15257, 15256, '471', null, null, 'fangwugongchengjianzhu', '房屋工程建筑', null, '指房屋主体工程的施工活动。不包括主体工程施工前的工程准备活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15258, 15256, '472', null, null, 'tumugongchengjianzhu', '土木工程建筑', null, '指土木工程主体的施工活动。不包括施工前的工程准备活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15259, 15258, '4721', null, null, 'tielu?daolu?suidaoheqiaolianggongchengjianzhu', '铁路、道路、隧道和桥梁工程建筑', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15260, 15258, '4722', null, null, 'shuilihegangkougongchengjianzhu', '水利和港口工程建筑', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15261, 15258, '4723', null, null, 'gongkuanggongchengjianzhu', '工矿工程建筑', null, '指除厂房外的矿山和工厂生产设施、设备的施工和安装，以及海洋石油平台的施工。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15262, 15258, '4724', null, null, 'jiaxianheguandaogongchengjianzhu', '架线和管道工程建筑', null, '指建筑物外的架线、管道和设备的施工。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15263, 15258, '4729', null, null, 'qitatumugongchengjianzhu', '其他土木工程建筑', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15264, 15255, '48', null, null, 'jianzhuanzhuangye', '建筑安装业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15265, 15264, '480', null, null, 'jianzhuanzhuangye', '建筑安装业', null, '指建筑物主体工程竣工后，建筑物内各种设备的安装活动，以及施工中的线路敷设和管道安装。不包括工程收尾的装饰，如对墙面、地板、天花板、门窗等处理活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15266, 15255, '49', null, null, 'jianzhuzhuangshiye', '建筑装饰业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15267, 15266, '490', null, null, 'jianzhuzhuangshiye', '建筑装饰业', null, '指对建筑工程后期的装饰、装修和清理活动，以及对居室的装修活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15268, 15255, '50', null, null, 'qitajianzhuye', '其他建筑业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15269, 15268, '501', null, null, 'gongchengzhunbei', '工程准备', null, '指房屋、土木工程建筑施工前的准备活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15270, 15268, '502', null, null, 'tigongshigongshebeifuwu', '提供施工设备服务', null, '指为建筑工程提供配有操作人员的施工设备的服务。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15271, 15268, '509', null, null, 'qitaweiliemingdejianzhuhuo****', '其他未列明的建筑活动', null, '指上述未列明的其他工程建筑活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15272, 6, 'F', null, null, 'jiaotongyunshu?cangchuheyouzhengye', '交通运输、仓储和邮政业', null, '本类包括51—59大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15273, 15272, '51', null, null, 'tieluyunshuye', '铁路运输业', null, '指铁路客运、货运及相关的调度、信号、机车、车辆、检修、工务等活动。不包括铁路系统所属的机车、车辆及信号通信设备的制造厂（公司）、建筑工程公司、商店、学校、科研所、医院等。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15274, 15273, '511', null, null, 'tielulvkeyunshu', '铁路旅客运输', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15275, 15273, '512', null, null, 'tieluhuowuyunshu', '铁路货物运输', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15276, 15273, '513', null, null, 'tieluyunshufuzhuhuo****', '铁路运输辅助活动', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15277, 15276, '5131', null, null, 'keyunhuochezhan', '客运火车站', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15278, 15276, '5132', null, null, 'huoyunhuochezhan', '货运火车站', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15279, 15276, '5139', null, null, 'qitatieluyunshufuzhuhuo****', '其他铁路运输辅助活动', null, '指铁路旅客、货物运输及为其服务的客、货运火车站以外的运输网、信号、调度及铁路设施的管理和养护。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15280, 15272, '52', null, null, 'daoluyunshuye', '道路运输业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15281, 15280, '521', null, null, 'gonglulvkeyunshu', '公路旅客运输', null, '指城市以外道路的旅客运输活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15282, 15280, '522', null, null, 'daoluhuowuyunshu', '道路货物运输', null, '指所有道路的货物运输活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15283, 15280, '523', null, null, 'daoluyunshufuzhuhuo****', '道路运输辅助活动', null, '指与道路运输相关的运输辅助活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15284, 15283, '5231', null, null, 'keyunqichezhan', '客运汽车站', null, '指长途旅客运输汽车站的服务活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15285, 15283, '5232', null, null, 'gongluguanliyuyanghu', '公路管理与养护', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15286, 15283, '5239', null, null, 'qitadaoluyunshufuzhuhuo****', '其他道路运输辅助活动', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15287, 15272, '53', null, null, 'chengshigonggongjiaotongye', '城市公共交通业', null, '指城市旅客运输活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15288, 15287, '531', null, null, 'gonggongdianqichekeyun', '公共电汽车客运', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15289, 15287, '532', null, null, 'guidaojiaotong', '轨道交通', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15290, 15287, '533', null, null, 'chuzuchekeyun', '出租车客运', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15291, 15287, '534', null, null, 'chengshilundu', '城市轮渡', null, '指城市的水上旅客轮渡运营活动。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15292, 15287, '539', null, null, 'qitachengshigonggongjiaotong', '其他城市公共交通', null, '指其他未列明的城市旅客运输活动。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15293, 15272, '54', null, null, 'shuishangyunshuye', '水上运输业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15294, 15293, '541', null, null, 'shuishanglvkeyunshu', '水上旅客运输', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15295, 15294, '5411', null, null, 'yuanyanglvkeyunshu', '远洋旅客运输', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15296, 15294, '5412', null, null, 'yanhailvkeyunshu', '沿海旅客运输', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15297, 15294, '5413', null, null, 'neihelvkeyunshu', '内河旅客运输', null, '指江、河、湖泊、水库的水上旅客运输活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15298, 15293, '542', null, null, 'shuishanghuowuyunshu', '水上货物运输', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15299, 15298, '5421', null, null, 'yuanyanghuowuyunshu', '远洋货物运输', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15300, 15298, '5422', null, null, 'yanhaihuowuyunshu', '沿海货物运输', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15301, 15298, '5423', null, null, 'neihehuowuyunshu', '内河货物运输', null, '指江、河、湖泊、水库的水上货物运输活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15302, 15293, '543', null, null, 'shuishangyunshufuzhuhuo****', '水上运输辅助活动', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15303, 15302, '5431', null, null, 'keyungangkou', '客运港口', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15304, 15302, '5432', null, null, 'huoyungangkou', '货运港口', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15305, 15302, '5439', null, null, 'qitashuishangyunshufuzhuhuo****', '其他水上运输辅助活动', null, '指其他未列明的水上运输辅助活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15306, 15272, '55', null, null, 'hangkongyunshuye', '航空运输业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15307, 15306, '551', null, null, 'hangkongkehuoyunshu', '航空客货运输', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15308, 15307, '5511', null, null, 'hangkonglvkeyunshu', '航空旅客运输', null, '指以旅客运输为主的航空运输活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15309, 15307, '5512', null, null, 'hangkonghuowuyunshu', '航空货物运输', null, '指以货物或邮件为主的航空运输活动', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15310, 15306, '552', null, null, 'tongyonghangkongfuwu', '通用航空服务', null, '指除客货运输以外的其他航空服务活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15311, 15306, '553', null, null, 'hangkongyunshufuzhuhuo****', '航空运输辅助活动', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15312, 15311, '5531', null, null, 'jichang', '机场', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15313, 15311, '5532', null, null, 'kongzhongjiaotongguanli', '空中交通管理', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15314, 15311, '5539', null, null, 'qitahangkongyunshufuzhuhuo****', '其他航空运输辅助活动', null, '指其他未列明的航空运输辅助活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15315, 15272, '56', null, null, 'guandaoyunshuye', '管道运输业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15316, 15315, '560', null, null, 'guandaoyunshuye', '管道运输业', null, '指通过管道对气体、液体等的运输活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15317, 15272, '57', null, null, 'zhuangxiebanyunheqitayunshufuwuye', '装卸搬运和其他运输服务业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15318, 15317, '571', null, null, 'zhuangxiebanyun', '装卸搬运', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15319, 15317, '572', null, null, 'yunshudailifuwu', '运输代理服务', null, '指与运输有关的代理及服务活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15320, 15272, '58', null, null, 'cangchuye', '仓储业', null, '指专门从事货物仓储、货物运输中转仓储，以及以仓储为主的物流送配活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15321, 15320, '581', null, null, 'guwu?mianhuadengnongchanpincangchu', '谷物、棉花等农产品仓储', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15322, 15320, '589', null, null, 'qitacangchu', '其他仓储', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15323, 15272, '59', null, null, 'youzhengye', '邮政业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15324, 15323, '591', null, null, 'guojiayouzheng', '国家邮政', null, '指国家邮政系统提供的邮政服务。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15325, 15323, '599', null, null, 'qitajidifuwu', '其他寄递服务', null, '指国家邮政系统以外的单位所提供的包裹、小件物品的收集、运输、发送服务。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15326, 6, 'G', null, null, 'xinxichuanshu?jisuanjifuwuheruanjianye', '信息传输、计算机服务和软件业', null, '本类包括60—62大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 800 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15327, 15326, '60', null, null, 'dianxinheqitaxinxichuanshufuwuye', '电信和其他信息传输服务业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15328, 15327, '601', null, null, 'dianxin', '电信', null, '指通过电缆、光缆、无线电波、光波等传输的通信服务。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15329, 15328, '6011', null, null, 'gudingdianxinfuwu', '固定电信服务', null, '指固定电话等电信服务活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15330, 15328, '6012', null, null, 'yi****dianxinfuwu', '移动电信服务', null, '指移动通信等电信服务活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15331, 15328, '6019', null, null, 'qitadianxinfuwu', '其他电信服务', null, '指其他未列明的电信服务活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15332, 15327, '602', null, null, 'hulianwangxinxifuwu', '互联网信息服务', null, '指网络公司通过互联网为客户提供的信息服务。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15333, 15327, '603', null, null, 'guangbodianshichuanshufuwu', '广播电视传输服务', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15334, 15333, '6031', null, null, 'youxianguangbodianshichuanshufuwu', '有线广播电视传输服务', null, '指有线广播电视网和信号的传输服务活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15335, 15333, '6032', null, null, 'wuxianguangbodianshichuanshufuwu', '无线广播电视传输服务', null, '指无线广播电视信号的传输服务活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15336, 15327, '604', null, null, 'weixingchuanshufuwu', '卫星传输服务', null, '指人造卫星的电信传输和广播电视传输服务。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15337, 15326, '61', null, null, 'jisuanjifuwuye', '计算机服务业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15338, 15337, '611', null, null, 'jisuanjixitongfuwu', '计算机系统服务', null, '指提供计算机系统的设计、集成、安装等方面的服务。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15339, 15337, '612', null, null, 'shujuchuli', '数据处理', null, '为用户提供数据的录入、加工、存贮等方面的服务，以及使用用户指定的软件加工数据，并将结果返回给用户的活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15340, 15337, '613', null, null, 'jisuanjiweixiu', '计算机维修', null, '指对计算机硬件及系统环境的维护和修理服务。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15341, 15337, '619', null, null, 'qitajisuanjifuwu', '其他计算机服务', null, '指计算机咨询和其他未列明的计算机服务。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15342, 15326, '62', null, null, 'ruanjianye', '软件业', null, '指专门从事计算机软件的设计、程序编制、分析、测试、修改、咨询；为互联网和数据库提供软件设计与技术规范；为软件所支持的系统及环境提供咨询、协调和指导；为硬件嵌入式软件及系统提供咨询、设计、鉴定等活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15343, 15342, '621', null, null, 'gonggongruanjianfuwu', '公共软件服务', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15344, 15343, '6211', null, null, 'jichuruanjianfuwu', '基础软件服务', null, '指为一般计算机用户提供的软件设计、编制、分析、测试等服务。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15345, 15343, '6212', null, null, 'yingyongruanjianfuwu', '应用软件服务', null, '指为专业领域使用计算机的用户提供软件服务，以及提供给最终用户产品中的软件（嵌入式软件）服务。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15346, 15342, '629', null, null, 'qitaruanjianfuwu', '其他软件服务', null, '指为特定客户提供的软件服务，以及与软件有关的咨询等活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15347, 6, 'H', null, null, 'pifahelingshouye', '批发和零售业', null, '本类包括63和65大类。指商品在流通环节中的批发活动和零售活动。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15348, 15347, '63', null, null, 'pifaye', '批发业', null, '指批发商向批发、零售单位及其他企业、事业、机关批量销售生活用品和生产资料的活动，以及从事进出口贸易和贸易经纪与代理的活动。批发商可以对所批发的货物拥有所有权，并以本单位、公司的名义进行交易活动；也可以不拥有货物的所有权，而以中介身份做代理销售商。本类还包括各类商品批发市场中固定摊位的批发活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15349, 15348, '631', null, null, 'nongxuchanpinpifa', '农畜产品批发', null, '指未经过加工的农作物及牲畜、畜产品的批发和进出口活动。但不包括蔬菜、水果、肉、禽、蛋及水产品的批发和进出口活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15350, 15349, '6311', null, null, 'guwu?doujishuleipifa', '谷物、豆及薯类批发', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15351, 15349, '6312', null, null, 'zhongzi?siliaopifa', '种子、饲料批发', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15352, 15349, '6313', null, null, 'mian?mapifa', '棉、麻批发', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15353, 15349, '6314', null, null, 'shengxupifa', '牲畜批发', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15354, 15349, '6319', null, null, 'qitanongxuchanpinpifa', '其他农畜产品批发', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15355, 15348, '632', null, null, 'shipin?yinliaojiyancaozhipinpifa', '食品、饮料及烟草制品批发', null, '指经过加工和制造的食品、饮料及烟草制品的批发和进出口活动，以及蔬菜、水果、肉、禽、蛋及水产品的批发和进出口活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15356, 15355, '6321', null, null, 'mi?mianzhipinjishiyongyoupifa', '米、面制品及食用油批发', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15357, 15355, '6322', null, null, 'gaodian?tangguojitangpifa', '糕点、糖果及糖批发', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15358, 15355, '6323', null, null, 'guopin?shucaipifa', '果品、蔬菜批发', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15359, 15355, '6324', null, null, 'rou?qin?danjishuichanpinpifa', '肉、禽、蛋及水产品批发', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15360, 15355, '6325', null, null, 'yanjidiaoweipinpifa', '盐及调味品批发', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15361, 15355, '6326', null, null, 'yinliaojichayepifa', '饮料及茶叶批发', null, '指可直接饮用或稀释、冲泡后饮用的饮料及茶叶的批发和进出口活动。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15362, 15355, '6327', null, null, 'yancaozhipinpifa', '烟草制品批发', null, '指经过加工、生产的烟草制品的批发和进出口活动。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15363, 15355, '6329', null, null, 'qitashipinpifa', '其他食品批发', null, null, 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15364, 15348, '633', null, null, 'fangzhi?fuzhuangjiriyongpinpifa', '纺织、服装及日用品批发', null, '指纺织面料、纺织品、服装、鞋、帽及日杂品、生活日用品的批发和进出口活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15365, 15364, '6331', null, null, 'fangzhipin?zhenzhipinjiyuanliaopifa', '纺织品、针织品及原料批发', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15366, 15364, '6332', null, null, 'fuzhuangpifa', '服装批发', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15367, 15364, '6333', null, null, 'xiemaopifa', '鞋帽批发', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15368, 15364, '6334', null, null, 'chufang?weishengjianyongjujiriyongzahuopifa', '厨房、卫生间用具及日用杂货批发', null, '指灶具、炊具、厨具、餐具及各种容器、器皿等的批发和进出口活动；卫生间的用品用具和生活用清洁、清扫的用品用具的批发和进出口活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15369, 15364, '6335', null, null, 'huazhuangpinjiweishengyongpinpifa', '化妆品及卫生用品批发', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15370, 15364, '6339', null, null, 'qitariyongpinpifa', '其他日用品批发', null, '指上述未列明的其他生活日用品的批发和进出口活动。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15371, 15348, '634', null, null, 'wenhua?tiyuyongpinjiqicaipifa', '文化、体育用品及器材批发', null, '指各类文具用品、体育用品、图书、报刊、音像、电子出版物、首饰、工艺美术品、收藏品及其他文化用品、器材的批发和进出口活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15372, 15371, '6341', null, null, 'wenjuyongpinpifa', '文具用品批发', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15373, 15371, '6342', null, null, 'tiyuyongpinpifa', '体育用品批发', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15374, 15371, '6343', null, null, 'tushupifa', '图书批发', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15375, 15371, '6344', null, null, 'baokanpifa', '报刊批发', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15376, 15371, '6345', null, null, 'yinxiangzhipinjidianzichubanwupifa', '音像制品及电子出版物批发', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15377, 15371, '6346', null, null, 'shoushi?gongyipinjishoucangpinpifa', '首饰、工艺品及收藏品批发', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15378, 15371, '6349', null, null, 'qitawenhuayongpinpifa', '其他文化用品批发', null, null, 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15379, 15348, '635', null, null, 'yiyaojiyiliaoqicaipifa', '医药及医疗器材批发', null, '指各种化学药品、生物药品、中草药材、中成药及医疗器材的批发和进出口活动。包括兽用药的批发和进出口活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15380, 15379, '6351', null, null, 'xiyaopifa', '西药批发', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15381, 15379, '6352', null, null, 'zhongyaocaijizhongchengyaopifa', '中药材及中成药批发', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15382, 15379, '6353', null, null, 'yiliaoyongpinjiqicaipifa', '医疗用品及器材批发', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15383, 15348, '636', null, null, 'kuangchanpin?jiancaijihuagongchanpinpifa', '矿产品、建材及化工产品批发', null, '指煤及煤制品、石油制品、矿产品及矿物制品、金属材料、建筑材料和化工产品的批发和进出口活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15384, 15383, '6361', null, null, 'meitanjizhipinpifa', '煤炭及制品批发', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15385, 15383, '6362', null, null, 'shiyoujizhipinpifa', '石油及制品批发', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15386, 15383, '6363', null, null, 'feijinshukuangjizhipinpifa', '非金属矿及制品批发', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15387, 15383, '6364', null, null, 'jinshujijinshukuangpifa', '金属及金属矿批发', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15388, 15383, '6365', null, null, 'jiancaipifa', '建材批发', null, '指建筑用材料和装饰装修材料的批发和进出口活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15389, 15383, '6366', null, null, 'huafeipifa', '化肥批发', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15390, 15383, '6367', null, null, 'nongyaopifa', '农药批发', null, null, 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15391, 15383, '6368', null, null, 'nongyongbaomopifa', '农用薄膜批发', null, null, 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15392, 15383, '6369', null, null, 'qitahuagongchanpinpifa', '其他化工产品批发', null, null, 4, 9, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15393, 15348, '637', null, null, 'jixieshebei?wujinjiaodianjidianzichanpinpifa', '机械设备、五金交电及电子产品批发', null, '指通用机械、专用设备、交通运输设备、电气机械、五金交电、家用电器、计算机设备、通讯设备、电子产品、仪器仪表及办公用机械的批发和进出口活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15394, 15393, '6371', null, null, 'nongyejixiepifa', '农业机械批发', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15395, 15393, '6372', null, null, 'qiche?motuochejilingpeijianpifa', '汽车、摩托车及零配件批发', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15396, 15393, '6373', null, null, 'wujin?jiaodianpifa', '五金、交电批发', null, '指小五金、工具、水暖部件、照明器材、交电用品及材料的批发和进出口活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15397, 15393, '6374', null, null, 'jiayongdianqipifa', '家用电器批发', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15398, 15393, '6375', null, null, 'jisuanji?ruanjianjifuzhushebeipifa', '计算机、软件及辅助设备批发', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15399, 15393, '6376', null, null, 'tongxunjiguangbodianshishebeipifa', '通讯及广播电视设备批发', null, '指电信设备、广播电视设备的批发和进出口活动。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15400, 15393, '6379', null, null, 'qitajixieshebeijidianzichanpinpifa', '其他机械设备及电子产品批发', null, null, 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15401, 15348, '638', null, null, 'maoyijingjiyudaili', '贸易经纪与代理', null, '指代办商、商品经纪人、拍卖商的活动；专门为某一生产企业做销售代理的活动；为买卖双方提供贸易机会或代表委托人进行商品交易代理活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15402, 15348, '639', null, null, 'qitapifa', '其他批发', null, '指上述未包括的批发和进出口。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15403, 15402, '6391', null, null, 'zaishengwuzihuishouyupifa', '再生物资回收与批发', null, '指将可再生的废旧物资回收，并批发给制造企业作初级原料的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15404, 15402, '6399', null, null, 'qitaweiliemingdepifa', '其他未列明的批发', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15405, 15347, '65', null, null, 'lingshouye', '零售业', null, '指百货商店、超级市场、专门零售商店、品牌专卖店、售货摊等主要面向最终消费者（如居民等）的销售活动。包括以互联网、邮政、电话、售货机等方式的销售活动。还包括在同一地点，后面加工生产，前面销售的店铺（如面包房）。谷物、种子、饲料、牲畜、矿产品、生产用原料、化工原料、农用化工产品、机械设备（乘用车、计算机及通信设备除外）等生产资料的销售不作为零售活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15406, 15405, '651', null, null, 'zonghelingshou', '综合零售', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15407, 15406, '6511', null, null, 'baihuolingshou', '百货零售', null, '指经营的商品品种较齐全，经营规模较大的综合零售活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15408, 15406, '6512', null, null, 'chaojishichanglingshou', '超级市场零售', null, '指经营食品、日用品等的超级市场的综合零售活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15409, 15406, '6519', null, null, 'qitazonghelingshou', '其他综合零售', null, '指日用杂品综合零售活动；为方便城乡居民，在街道、社区、乡镇、农村、工矿区、校区、交通要道口、车站、码头、机场等人口稠密地区，开办的小型综合零售店的活动；以小超市形式开办的便利店活动；农村供销社的零售活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15410, 15405, '652', null, null, 'shipin?yinliaojiyancaozhipinzhuanmenlingshou', '食品、饮料及烟草制品专门零售', null, '指专门经营粮油、食品、饮料及烟草制品的零售活动。包括为方便城乡居民，在人口稠密地区开设的食品零售店。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15411, 15410, '6521', null, null, 'liangyoulingshou', '粮油零售', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15412, 15410, '6522', null, null, 'gaodian?mianbaolingshou', '糕点、面包零售', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15413, 15410, '6523', null, null, 'guopin?shucailingshou', '果品、蔬菜零售', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15414, 15410, '6524', null, null, 'rou?qin?danjishuichanpinlingshou', '肉、禽、蛋及水产品零售', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15415, 15410, '6525', null, null, 'yinliaojichayelingshou', '饮料及茶叶零售', null, '指专门经营茶叶及各种饮料的零售活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15416, 15410, '6526', null, null, 'yancaozhipinlingshou', '烟草制品零售', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15417, 15410, '6529', null, null, 'qitashipinlingshou', '其他食品零售', null, '指上述未列明的食品零售活动。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15418, 15405, '653', null, null, 'fangzhi?fuzhuangjiriyongpinzhuanmenlingshou', '纺织、服装及日用品专门零售', null, '指专门经营纺织面料、纺织品、服装、鞋、帽及各种生活日用品的零售活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15419, 15418, '6531', null, null, 'fangzhipinjizhenzhipinlingshou', '纺织品及针织品零售', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15420, 15418, '6532', null, null, 'fuzhuanglingshou', '服装零售', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15421, 15418, '6533', null, null, 'xiemaolingshou', '鞋帽零售', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15422, 15418, '6534', null, null, 'zhongbiao?yanjinglingshou', '钟表、眼镜零售', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15423, 15418, '6535', null, null, 'huazhuangpinjiweishengyongpinlingshou', '化妆品及卫生用品零售', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15424, 15418, '6539', null, null, 'qitariyongpinlingshou', '其他日用品零售', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15425, 15405, '654', null, null, 'wenhua?tiyuyongpinjiqicaizhuanmenlingshou', '文化、体育用品及器材专门零售', null, '指专门经营文具、体育用品、图书、报刊、音像制品、首饰、工艺美术品、收藏品、照相器材及其他文化用品的零售活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15426, 15425, '6541', null, null, 'wenjuyongpinlingshou', '文具用品零售', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 900 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15427, 15425, '6542', null, null, 'tiyuyongpinlingshou', '体育用品零售', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15428, 15425, '6543', null, null, 'tushulingshou', '图书零售', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15429, 15425, '6544', null, null, 'baokanlingshou', '报刊零售', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15430, 15425, '6545', null, null, 'yinxiangzhipinjidianzichubanwulingshou', '音像制品及电子出版物零售', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15431, 15425, '6546', null, null, 'zhubaoshoushilingshou', '珠宝首饰零售', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15432, 15425, '6547', null, null, 'gongyimeishupinjishoucangpinlingshou', '工艺美术品及收藏品零售', null, '指专门经营具有收藏价值和艺术价值的工艺品、艺术品、古玩、字画、邮品等的零售活动。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15433, 15425, '6548', null, null, 'zhaoxiangqicailingshou', '照相器材零售', null, null, 4, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15434, 15425, '6549', null, null, 'qitawenhuayongpinlingshou', '其他文化用品零售', null, null, 4, 9, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15435, 15405, '655', null, null, 'yiyaojiyiliaoqicaizhuanmenlingshou', '医药及医疗器材专门零售', null, '指专门经营各种化学药品、生物药品、中草药材、中成药、医疗用品及器材的零售活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15436, 15435, '6551', null, null, 'yaopinlingshou', '药品零售', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15437, 15435, '6552', null, null, 'yiliaoyongpinjiqicailingshou', '医疗用品及器材零售', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15438, 15405, '656', null, null, 'qiche?motuoche?ranliaojilingpeijianzhuanmenlingshou', '汽车、摩托车、燃料及零配件专门零售', null, '指专门经营汽车、摩托车、汽车部件、汽车零配件及燃料的零售活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15439, 15438, '6561', null, null, 'qichelingshou', '汽车零售', null, '指9人以下的乘用车的零售。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15440, 15438, '6562', null, null, 'qichelingpeijianlingshou', '汽车零配件零售', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15441, 15438, '6563', null, null, 'motuochejilingpeijianlingshou', '摩托车及零配件零售', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15442, 15438, '6564', null, null, 'ji****cheranliaolingshou', '机动车燃料零售', null, '指专门经营机动车燃料及相关产品（润滑油）的零售活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15443, 15405, '657', null, null, 'jiayongdianqijidianzichanpinzhuanmenlingshou', '家用电器及电子产品专门零售', null, '指专门经营家用电器和计算机、软件及辅助设备、电子通信设备、电子元器件及办公设备的零售活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15444, 15443, '6571', null, null, 'jiayongdianqilingshou', '家用电器零售', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15445, 15443, '6572', null, null, 'jisuanji?ruanjianjifuzhushebeilingshou', '计算机、软件及辅助设备零售', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15446, 15443, '6573', null, null, 'tongxinshebeilingshou', '通信设备零售', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15447, 15443, '6579', null, null, 'qitadianzichanpinlingshou', '其他电子产品零售', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15448, 15405, '658', null, null, 'wujin?jiajujishineizhuangxiucailiaozhuanmenlingshou', '五金、家具及室内装修材料专门零售', null, '指五金用品、家具和装修材料零售店的销售活动，以及在家具、家居装修、建材城（中心）及展销会上设摊位的销售活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15449, 15448, '6581', null, null, 'wujinlingshou', '五金零售', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15450, 15448, '6582', null, null, 'jiajulingshou', '家具零售', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15451, 15448, '6583', null, null, 'tuliaolingshou', '涂料零售', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15452, 15448, '6589', null, null, 'qitashineizhuangxiucailiaolingshou', '其他室内装修材料零售', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15453, 15405, '659', null, null, 'wudianpujiqitalingshou', '无店铺及其他零售', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15454, 15453, '6591', null, null, 'liu****huotanlingshou', '流动货摊零售', null, '指无固定场所的流动性销售产品的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15455, 15453, '6592', null, null, 'yougoujidianzixiaoshou', '邮购及电子销售', null, '指通过邮政及现代通讯工具（如互联网、电视、电话等）进行销售，并送货上门的零售活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15456, 15453, '6593', null, null, 'shenghuoyongranliaolingshou', '生活用燃料零售', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15457, 15453, '6594', null, null, 'huahuilingshou', '花卉零售', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15458, 15453, '6595', null, null, 'jiuhuolingshou', '旧货零售', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15459, 15453, '6599', null, null, 'qitaweiliemingdelingshou', '其他未列明的零售', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15460, 6, 'I', null, null, 'zhusuhecanyinye', '住宿和餐饮业', null, '本类包括66和67大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15461, 15460, '66', null, null, 'zhusuye', '住宿业', null, '指有偿为顾客提供临时住宿的服务活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15462, 15461, '661', null, null, 'lvyoufandian', '旅游饭店', null, '指按照国家有关规定评定的旅游饭店或具有同等质量、水平的饭店活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15463, 15461, '662', null, null, 'yibanlvguan', '一般旅馆', null, '指不具备评定旅游饭店和同等水平饭店的一般旅馆的活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15464, 15461, '669', null, null, 'qitazhusufuwu', '其他住宿服务', null, '指上述未列明的住宿服务。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15465, 15460, '67', null, null, 'canyinye', '餐饮业', null, '指在一定场所，对食物进行现场烹饪、调制，并出售给顾客主要供现场消费的服务活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15466, 15465, '671', null, null, 'zhengcanfuwu', '正餐服务', null, '指提供各种中西式炒菜和主食，并由服务员送餐上桌的餐饮服务。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15467, 15465, '672', null, null, 'kuaicanfuwu', '快餐服务', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15468, 15465, '673', null, null, 'yinliaojilengyinfuwu', '饮料及冷饮服务', null, '指以提供饮料和冷饮为主的服务。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15469, 15465, '679', null, null, 'qitacanyinfuwu', '其他餐饮服务', null, '指上述未列明的餐饮服务。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15470, 6, 'J', null, null, 'jinrongye', '金融业', null, '本类包括68—71  大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15471, 15470, '68', null, null, 'yinxingye', '银行业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15472, 15471, '681', null, null, 'zhongyangyinxing', '中央银行', null, '指代表政府管理金融活动，并制定和执行货币政策的特殊金融机构的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15473, 15471, '682', null, null, 'shangyeyinxing', '商业银行', null, '指国有独资商业银行、股份制银行、城市商业银行、城市信用社、农村信用社等的活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15474, 15471, '689', null, null, 'qitayinxing', '其他银行', null, '指政策性银行的活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15475, 15470, '69', null, null, 'zhengquanye', '证券业', null, '指对股票、债券、期货及其他有价证券的投资交易活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15476, 15475, '691', null, null, 'zhengquanshichangguanli', '证券市场管理', null, '指证券、期货市场的管理和监督活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15477, 15475, '692', null, null, 'zhengquanjingjiyujiaoyi', '证券经纪与交易', null, '指证券、期货经纪代理人的代理交易活动；证券、基金的管理等活动；证券营业部的管理活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15478, 15475, '693', null, null, 'zhengquantouzi', '证券投资', null, '指在证券市场从事股票、基金、债券、期货及其他有价证券的投资等活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15479, 15475, '694', null, null, 'zhengquanfenxiyuzixun', '证券分析与咨询', null, null, 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15480, 15470, '70', null, null, 'baoxianye', '保险业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15481, 15480, '701', null, null, 'renshoubaoxian', '人寿保险', null, '指主要提供养老等人寿保险和再保险的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15482, 15480, '702', null, null, 'feirenshoubaoxian', '非人寿保险', null, '指主要提供除人寿险以外的保险活动和再保险活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15483, 15480, '703', null, null, 'baoxianfuzhufuwu', '保险辅助服务', null, '指保险代理、评估、监督、咨询等活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15484, 15470, '71', null, null, 'qitajinronghuo****', '其他金融活动', null, '指银行、证券、保险以外的金融活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15485, 15484, '711', null, null, 'jinrongxintuoyuguanli', '金融信托与管理', null, '指代理资金、财产的信托、管理活动，以及基金的托管人活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15486, 15484, '712', null, null, 'jinrongzulin', '金融租赁', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15487, 15484, '713', null, null, 'caiwugongsi', '财务公司', null, '指经人民银行批准，为企业融资服务的金融活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15488, 15484, '714', null, null, 'youzhengchuxu', '邮政储蓄', null, null, 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15489, 15484, '715', null, null, 'diandang', '典当', null, '指以实物质押的放款活动。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15490, 15484, '719', null, null, 'qitaweiliemingdejinronghuo****', '其他未列明的金融活动', null, '指上述未列明的金融活动。', 3, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15491, 6, 'K', null, null, 'fangdichanye', '房地产业', null, null, 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15492, 15491, '72', null, null, 'fangdichanye', '房地产业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15493, 15492, '721', null, null, 'fangdichankaifajingying', '房地产开发经营', null, '指房地产开发企业进行的基础设施建设、房屋建设，并转让房地产开发项目或者销售、出租商品房的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15494, 15492, '722', null, null, 'wuyeguanli', '物业管理', null, '指物业管理企业依照合同约定，对物业进行专业化维修、养护、管理，以及对相关区域内的环境、公共秩序等进行管理，并提供相关服务的活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15495, 15492, '723', null, null, 'fangdichanzhongjiefuwu', '房地产中介服务', null, '指房地产咨询、房地产价格评估、房地产经纪等活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15496, 15492, '729', null, null, 'qitafangdichanhuo****', '其他房地产活动', null, null, 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15497, 6, 'L', null, null, 'zulinheshangwufuwuye', '租赁和商务服务业', null, '本类包括73和74大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15498, 15497, '73', null, null, 'zulinye', '租赁业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15499, 15498, '731', null, null, 'jixieshebeizulin', '机械设备租赁', null, '指不配备操作人员的机械设备的租赁服务。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15500, 15499, '7311', null, null, 'qichezulin', '汽车租赁', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15501, 15499, '7312', null, null, 'nongyejixiezulin', '农业机械租赁', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15502, 15499, '7313', null, null, 'jianzhugongchengjixieyushebeizulin', '建筑工程机械与设备租赁', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15503, 15499, '7314', null, null, 'jisuanjijitongxunshebeizulin', '计算机及通讯设备租赁', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15504, 15499, '7319', null, null, 'qitajixieyushebeizulin', '其他机械与设备租赁', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15505, 15498, '732', null, null, 'wenhuajiriyongpinchuzu', '文化及日用品出租', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15506, 15505, '7321', null, null, 'tushujiyinxiangzhipinchuzu', '图书及音像制品出租', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15507, 15505, '7329', null, null, 'qitawenhuajiriyongpinchuzu', '其他文化及日用品出租', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15508, 15497, '74', null, null, 'shangwufuwuye', '商务服务业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15509, 15508, '741', null, null, 'qiyeguanlifuwu', '企业管理服务', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15510, 15509, '7411', null, null, 'qiyeguanlijigou', '企业管理机构', null, '指不具体从事对外经营业务，只负责企业的重大决策、资产管理，协调管理下属各机构和内部日常工作的企业总部的活动，其对外经营业务由下属的独立核算单位或单独核算单位承担。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15511, 15509, '7412', null, null, 'touziyuzichanguanli', '投资与资产管理', null, '指政府主管部门转变职能后，成立的国有资产管理机构和行业管理机构的活动；非金融性投资活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15512, 15509, '7419', null, null, 'qitaqiyeguanlifuwu', '其他企业管理服务', null, '指其他各类企业管理机构、派出机构，以及为企事业、机关提供后勤服务的活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15513, 15508, '742', null, null, 'falvfuwu', '法律服务', null, '指律师、公证、仲裁、调解等活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15514, 15513, '7421', null, null, 'lvshijixiangguandefalvfuwu', '律师及相关的法律服务', null, '指在民事案件、刑事案件和其他案件中，为原被告双方提供法律代理服务，以及为一般的民事行为提供法律咨询与服务。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15515, 15513, '7422', null, null, 'gongzhengfuwu', '公证服务', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15516, 15513, '7429', null, null, 'qitafalvfuwu', '其他法律服务', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15517, 15508, '743', null, null, 'zixunyudiaocha', '咨询与调查', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15518, 15517, '7431', null, null, 'huiji?shenjijishuiwufuwu', '会计、审计及税务服务', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15519, 15517, '7432', null, null, 'shichangdiaocha', '市场调查', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15520, 15517, '7433', null, null, 'shehuijingjizixun', '社会经济咨询', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15521, 15517, '7439', null, null, 'qitazhuanyezixun', '其他专业咨询', null, '指社会经济咨询以外的其他专业咨询活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15522, 15508, '744', null, null, 'guanggaoye', '广告业', null, '指在报纸、期刊、路牌、灯箱、橱窗、互联网、通讯设备及广播电影电视等媒介上为客户策划、制作的有偿宣传活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15523, 15508, '745', null, null, 'zhishichanquanfuwu', '知识产权服务', null, '指对专利、商标、版权、著作权、软件、集成电路布图设计等的代理、转让、登记、鉴定、评估、认证、咨询、检索等活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15524, 15508, '746', null, null, 'zhiyezhongjiefuwu', '职业中介服务', null, '指为求职者寻找、选择、介绍、安置工作；为用人单位提供劳动力；提供职业技能鉴定及其他职业中介活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15525, 15508, '747', null, null, 'shichangguanli', '市场管理', null, '指各种交易市场的管理活动。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15526, 15508, '748', null, null, 'lvxingshe', '旅行社', null, '指为社会各界提供商务、组团和散客旅游的服务。包括向顾客提供咨询、旅游计划和建议、日程安排、导游、食宿和交通等服务。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 1000 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15527, 15508, '749', null, null, 'qitashangwufuwu', '其他商务服务', null, null, 3, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15528, 15527, '7491', null, null, 'huiyijizhanlanfuwu', '会议及展览服务', null, '指为商品流通、促销、展示、经贸洽谈、民间交流、企业沟通、国际往来而举办的展览和会议等活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15529, 15527, '7492', null, null, 'baozhuangfuwu', '包装服务', null, '指有偿或按协议为客户提供包装服务。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15530, 15527, '7493', null, null, 'baoanfuwu', '保安服务', null, '指为社会提供的专业化、有偿安全防范服务活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15531, 15527, '7494', null, null, 'bangongfuwu', '办公服务', null, '指为商务、公务及个人提供的各种办公服务。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15532, 15527, '7499', null, null, 'qitaweiliemingdeshangwufuwu', '其他未列明的商务服务', null, '指上述未列明的商务服务和代理活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15533, 6, 'M', null, null, 'kexueyanjiu?jishufuwuhedizhikanchaye', '科学研究、技术服务和地质勘查业', null, '本类包括75—78大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15534, 15533, '75', null, null, 'yanjiuyushiyanfazhan', '研究与试验发展', null, '指为了增加知识（包括有关自然、工程、人类、文化和社会的知识），以及运用这些知识创造新的应用，所进行的系统的、创造性的活动。该活动仅限于对新发现、新理论的研究，新技术、新产品、新工艺的研制。研究与试验发展包括基础研究、应用研究和试验发展。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15535, 15534, '751', null, null, 'zirankexueyanjiuyushiyanfazhan', '自然科学研究与试验发展', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15536, 15534, '752', null, null, 'gongchenghejishuyanjiuyushiyanfazhan', '工程和技术研究与试验发展', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15537, 15534, '753', null, null, 'nongyekexueyanjiuyushiyanfazhan', '农业科学研究与试验发展', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15538, 15534, '754', null, null, 'yixueyanjiuyushiyanfazhan', '医学研究与试验发展', null, null, 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15539, 15534, '755', null, null, 'shehuirenwenkexueyanjiuyushiyanfazhan', '社会人文科学研究与试验发展', null, null, 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15540, 15533, '76', null, null, 'zhuanyejishufuwuye', '专业技术服务业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15541, 15540, '761', null, null, 'qixiangfuwu', '气象服务', null, '指气象的观测、预报和服务等活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15542, 15540, '762', null, null, 'dizhenfuwu', '地震服务', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15543, 15540, '763', null, null, 'haiyangfuwu', '海洋服务', null, '指地震监测预报、震灾预防和紧急救援等防震减灾活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15544, 15540, '764', null, null, 'cehuifuwu', '测绘服务', null, null, 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15545, 15540, '765', null, null, 'jishujiance', '技术检测', null, '指通过专业技术手段对动植物、工业产品、商品、专项技术、成果及其他需要鉴定的物品所进行的检测、检验、测试、鉴定等活动。包括认证活动。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15546, 15540, '766', null, null, 'huanjingjiance', '环境监测', null, '指对环境各要素，对生产与生活等各类污染源排放的液体、气体、固体、辐射等污染物或污染因子，以及对生态系统指标进行的测试和监测活动。', 3, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15547, 15540, '767', null, null, 'gongchengjishuyuguihuaguanli', '工程技术与规划管理', null, null, 3, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15548, 15547, '7671', null, null, 'gongchengguanlifuwu', '工程管理服务', null, '指与建筑工程有关的工程筹建、计划、造价、资金、预算、场地、招标、咨询、监理等服务活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15549, 15547, '7672', null, null, 'gongchengkanchasheji', '工程勘察设计', null, '指建筑施工前的工程测量、工程地质勘察和工程设计等活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15550, 15547, '7673', null, null, 'guihuaguanli', '规划管理', null, '指对区域和城市、集镇、村庄的规划，以及其他规划活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15551, 15540, '769', null, null, 'qitazhuanyejishufuwu', '其他专业技术服务', null, '指上述未列明的专业技术活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15552, 15533, '77', null, null, 'kejijiaoliuhetuiguangfuwuye', '科技交流和推广服务业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15553, 15552, '771', null, null, 'jishutuiguangfuwu', '技术推广服务', null, '指将新技术、新产品、新工艺直接推向市场而进行的相关技术活动，以及技术推广和转让活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15554, 15552, '772', null, null, 'kejizhongjiefuwu', '科技中介服务', null, '指为科技活动提供社会化服务与管理，在政府、各类科技活动主体与市场之间提供居间服务的组织，主要开展信息交流、技术咨询、技术孵化、科技评估和科技鉴证等活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15555, 15552, '779', null, null, 'qitakejifuwu', '其他科技服务', null, '指除技术推广、科技中介以外的其他科技服务。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15556, 15533, '78', null, null, 'dizhikanchaye', '地质勘查业', null, '指对矿产资源、工程地质、科学研究进行的地质勘查、测试、监测、评估等活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15557, 15556, '781', null, null, 'kuangchandizhikancha', '矿产地质勘查', null, '指对固体、液体、气体及混合体的矿产资源的地质勘查活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15558, 15557, '7811', null, null, 'nengyuankuangchandizhikancha', '能源矿产地质勘查', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15559, 15557, '7812', null, null, 'gutikuangchandizhikancha', '固体矿产地质勘查', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15560, 15557, '7819', null, null, 'qitakuangchandizhikancha', '其他矿产地质勘查', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15561, 15556, '782', null, null, 'jichudizhikancha', '基础地质勘查', null, '指区域、海洋、环境和水文地质勘查活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15562, 15556, '783', null, null, 'dizhikanchajishufuwu', '地质勘查技术服务', null, '指除矿产地质勘查、基础地质勘查以外的其他勘查和相关的技术服务。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15563, 6, 'N', null, null, 'shuili?huanjinghegonggongsheshiguanliye', '水利、环境和公共设施管理业', null, '本类包括79—81大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15564, 15563, '79', null, null, 'shuiliguanliye', '水利管理业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15565, 15564, '791', null, null, 'fanghongguanli', '防洪管理', null, '指对河流、湖泊、行蓄洪区和沿海的防洪设施的管理及防涝管理活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15566, 15564, '792', null, null, 'shuiziyuanguanli', '水资源管理', null, '指对水资源的开发、利用、配置、节约等活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15567, 15566, '7921', null, null, 'shuikuguanli', '水库管理', null, '指对水库等水利设施的管理活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15568, 15566, '7922', null, null, 'diaoshui?yinshuiguanli', '调水、引水管理', null, '指对运河、河渠、渠道、水利枢纽、水闸的管理活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15569, 15566, '7929', null, null, 'qitashuiziyuanguanli', '其他水资源管理', null, '指节水及其他未列明的水资源管理活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15570, 15564, '799', null, null, 'qitashuiliguanli', '其他水利管理', null, '指水土保持、保护及其他水利管理活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15571, 15563, '80', null, null, 'huanjingguanliye', '环境管理业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15572, 15571, '801', null, null, 'ziranbaohu', '自然保护', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15573, 15572, '8011', null, null, 'ziranbaohuquguanli', '自然保护区管理', null, '指对有代表性的自然生态系统、珍稀濒危野生动植物物种和有特殊意义的自然遗迹等予以特殊保护和管理的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15574, 15572, '8012', null, null, 'yesheng****zhiwubaohu', '野生动植物保护', null, '指对野生及濒危动植物的饲养、培育、繁殖等保护活动，以及对栖息地的管理活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15575, 15572, '8019', null, null, 'qitaziranbaohu', '其他自然保护', null, '指除自然保护区管理、野生动植物保护以外的其他环境保护活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15576, 15571, '802', null, null, 'huanjingzhili', '环境治理', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15577, 15576, '8021', null, null, 'chengshishirongguanli', '城市市容管理', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15578, 15576, '8022', null, null, 'chengshihuanjingweishengguanli', '城市环境卫生管理', null, '指城市垃圾的清扫、收集、运输、处理、处置和综合利用活动，以及对公共厕所、化粪池的清扫、收集、运输和管理活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15579, 15576, '8023', null, null, 'shuiwuranzhili', '水污染治理', null, '指对江、河、湖泊、水库及地下水、地表水的污染综合治理活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15580, 15576, '8024', null, null, 'weixianfeiwuzhili', '危险废物治理', null, '指对制造、维修、医疗等活动产生的危险废物进行收集、贮存、利用、处理和处置等活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15581, 15576, '8029', null, null, 'qitahuanjingzhili', '其他环境治理', null, '指除市容管理、城市环境卫生、水污染、危险废物治理以外的其他环境治理活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15582, 15563, '81', null, null, 'gonggongsheshiguanliye', '公共设施管理业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15583, 15582, '811', null, null, 'shizhenggonggongsheshiguanli', '市政公共设施管理', null, '指城市污水排放、雨水排放、路灯、道路、桥梁、隧道、广场、涵洞、防空等市政设施的维护、抢险、紧急处理、管理等活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15584, 15582, '812', null, null, 'chengshilvhuaguanli', '城市绿化管理', null, '指城市园林绿化的管理活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15585, 15582, '813', null, null, 'youlanjingquguanli', '游览景区管理', null, '指为游人提供休闲、观光、游玩、度假的各类自然景观、人文景观、人造景观和其他景观的保护和管理活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15586, 15585, '8131', null, null, 'fengjingmingshengquguanli', '风景名胜区管理', null, '指对具有一定规模的自然景观、人文景物的管理和保护活动，以及对环境优美、具有观赏、文化或科学价值风景名胜区的保护和管理活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15587, 15585, '8132', null, null, 'gongyuanguanli', '公园管理', null, '指主要为人们提供休闲、观赏、游览以及科普、科研的城市公园的管理活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15588, 15585, '8139', null, null, 'qitayoulanjingquguanli', '其他游览景区管理', null, '指其他未列明的游览景区的管理活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15589, 6, 'O', null, null, 'juminfuwuheqitafuwuye', '居民服务和其他服务业', null, '本类包括82—83大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15590, 15589, '82', null, null, 'juminfuwuye', '居民服务业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15591, 15590, '821', null, null, 'jiatingfuwu', '家庭服务', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15592, 15590, '822', null, null, 'tuoersuo', '托儿所', null, '指社会、街道、个人办的面向不足三岁幼儿的看护服务。看护服务可分为全托、日托、半托，或计时服务。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15593, 15590, '823', null, null, 'xiranfuwu', '洗染服务', null, '指专营的洗染店以及在宾馆、饭店内常设的独立（或相对独立）洗染服务。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15594, 15590, '824', null, null, 'lifajimeirongbaojianfuwu', '理发及美容保健服务', null, '指专业理发、美容保健服务，以及在宾馆、饭店或娱乐场所常设的独立（或相对独立）理发、美容保健服务。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15595, 15590, '825', null, null, 'xiyufuwu', '洗浴服务', null, '指专业洗浴室以及在宾馆、饭店或娱乐场所常设的独立（或相对独立）洗浴服务。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15596, 15590, '826', null, null, 'hunyinfuwu', '婚姻服务', null, '指从事婚姻介绍、婚庆典礼等服务。', 3, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15597, 15590, '827', null, null, '?zangfuwu', '殡葬服务', null, '指与殡葬有关的各类服务。', 3, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15598, 15590, '828', null, null, 'sheyingkuoyinfuwu', '摄影扩印服务', null, null, 3, 8, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15599, 15590, '829', null, null, 'qitajuminfuwu', '其他居民服务', null, '指上述未包括的居民服务。', 3, 9, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15600, 15589, '83', null, null, 'qitafuwuye', '其他服务业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15601, 15600, '831', null, null, 'xiuliyuweihu', '修理与维护', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15602, 15601, '8311', null, null, 'qiche?motuocheweihuyubaoyang', '汽车、摩托车维护与保养', null, '指非汽车制造厂、修理厂的修理和维护活动。这类活动一般在路边规模较小的修理服务部进行。包括为汽车、摩托车提供上油、充气、打蜡、抛光、喷漆、清洗、换零配件、出售零部件等服务。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15603, 15601, '8312', null, null, 'bangongshebeiweixiu', '办公设备维修', null, '指各种办公设备修理公司、修理门市部和修理网点的修理活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15604, 15601, '8313', null, null, 'jiayongdianqixiuli', '家用电器修理', null, '指家用电器维修门市部，以及生产企业驻各地的维修网点和维修中心的修理活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15605, 15601, '8319', null, null, 'qitariyongpinxiuli', '其他日用品修理', null, '指其他日用品维修门市部、修理摊点的活动，以及生产企业驻各地的维修网点和维修中心的修理活动。', 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15606, 15600, '832', null, null, 'qingjiefuwu', '清洁服务', null, '指对建筑物、办公用品、家庭用品的清洗和消毒服务。包括专业公司和个人的清洗服务。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15607, 15606, '8321', null, null, 'jianzhuwuqingjiefuwu', '建筑物清洁服务', null, '指对建筑物内外墙、玻璃幕墙、地面、天花板及烟囱的清洗活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15608, 15606, '8329', null, null, 'qitaqingjiefuwu', '其他清洁服务', null, '指专业清洗人员为企业的机器、办公设备的清洗活动，以及为居民的日用品、器具及设备的清洗活动。包括清扫、消毒等服务。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15609, 15600, '839', null, null, 'qitaweiliemingdefuwu', '其他未列明的服务', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15610, 6, 'P', null, null, 'jiaoyu', '教育', null, null, 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15611, 15610, '84', null, null, 'jiaoyu', '教育', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15612, 15611, '841', null, null, 'xueqianjiaoyu', '学前教育', null, '指按照国家幼儿教育规定对学龄前幼儿进行保育和教育的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15613, 15611, '842', null, null, 'chudengjiaoyu', '初等教育', null, '指义务教育法规定的初等教育和成人扫盲教育活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15614, 15611, '843', null, null, 'zhongdengjiaoyu', '中等教育', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15615, 15614, '8431', null, null, 'chuzhongjiaoyu', '初中教育', null, '指义务教育法规定的对小学毕业生进行初级中等教育的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15616, 15614, '8432', null, null, 'gaozhongjiaoyu', '高中教育', null, '指非义务教育阶段，通过考试招收初中毕业生进行普通高中教育的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15617, 15614, '8433', null, null, 'zhongdengzhuanyejiaoyu', '中等专业教育', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15618, 15614, '8434', null, null, 'zhiyezhongxuejiaoyu', '职业中学教育', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15619, 15614, '8435', null, null, 'jigongxuexiaojiaoyu', '技工学校教育', null, '指根据教育行政部门的规定，招收小学或初中毕业生实施中等职业技术教育的活动。', 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15620, 15614, '8439', null, null, 'qitazhongdengjiaoyu', '其他中等教育', null, '指其他未列明的中等教育活动。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15621, 15611, '844', null, null, 'gaodengjiaoyu', '高等教育', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15622, 15621, '8441', null, null, 'putonggaodengjiaoyu', '普通高等教育', null, '指经教育行政部门批准，由国家、地方、社会办的获取学历的高等教育活动。指在完成高级中等教育基础上实施的教育。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15623, 15621, '8442', null, null, 'chengrengaodengjiaoyu', '成人高等教育', null, '指经教育主管部门批准举办的成人高等教育活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15624, 15611, '849', null, null, 'qitajiaoyu', '其他教育', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15625, 15624, '8491', null, null, 'zhiyejinengpeixun', '职业技能培训', null, '指经教育主管部门、劳动部门或有关主管部门批准，由政府部门、企业、社会办的职业培训、就业培训及各种知识、技能的培训活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15626, 15624, '8492', null, null, 'teshujiaoyu', '特殊教育', null, '指为残障儿童提供的特殊教育活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 1100 records committed...
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15627, 15624, '8499', null, null, 'qitaweiliemingdejiaoyu', '其他未列明的教育', null, '指党政教育和上述未列明的教育活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15628, 6, 'Q', null, null, 'weisheng?shehuibaozhangheshehuifuliye', '卫生、社会保障和社会福利业', null, '本类包括85—87大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15629, 15628, '85', null, null, 'weisheng', '卫生', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15630, 15629, '851', null, null, 'yiyuan', '医院', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15631, 15630, '8511', null, null, 'zongheyiyuan', '综合医院', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15632, 15630, '8512', null, null, 'zhongyiyiyuan', '中医医院', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15633, 15630, '8513', null, null, 'zhongxiyijieheyiyuan', '中西医结合医院', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15634, 15630, '8514', null, null, 'minzuyiyuan', '民族医院', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15635, 15630, '8515', null, null, 'zhuankeyiyuan', '专科医院', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15636, 15630, '8516', null, null, 'liaoyangyuan', '疗养院', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15637, 15629, '852', null, null, 'weishengyuanjishequyiliaohuo****', '卫生院及社区医疗活动', null, '指城镇街道、社区医院和乡（镇）医疗卫生机构的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15638, 15629, '853', null, null, 'menzhenbuyiliaohuo****', '门诊部医疗活动', null, '指门诊部、诊所、医务室、卫生站、护理院等卫生机构的活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15639, 15629, '854', null, null, 'jihuashengyujishufuwuhuo****', '计划生育技术服务活动', null, '指各地计划生育技术服务机构的活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15640, 15629, '855', null, null, 'fuyoubaojianhuo****', '妇幼保健活动', null, '指非医院的妇女及婴幼儿保健活动。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15641, 15629, '856', null, null, 'zhuankejibingfangzhihuo****', '专科疾病防治活动', null, '指对各种专科疾病进行预防及群众预防的活动。', 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15642, 15629, '857', null, null, 'jibingyufangkongzhijifangyihuo****', '疾病预防控制及防疫活动', null, null, 3, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15643, 15629, '859', null, null, 'qitaweishenghuo****', '其他卫生活动', null, '指急救中心及其他未列明的卫生机构的活动。', 3, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15644, 15628, '86', null, null, 'shehuibaozhangye', '社会保障业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15645, 15644, '860', null, null, 'shehuibaozhangye', '社会保障业', null, '指依据国家有关规定开展的各种社会保障活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15646, 15628, '87', null, null, 'shehuifuliye', '社会福利业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15647, 15646, '871', null, null, 'tigongzhusudeshehuifuli', '提供住宿的社会福利', null, '指提供临时、长期住宿的福利或救济活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15648, 15647, '8711', null, null, 'ganbuxiuyangsuo', '干部休养所', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15649, 15647, '8712', null, null, 'shouyangshourongfuwu', '收养收容服务', null, '指对孤儿、老人、残疾人、弱智儿童、流浪儿童、盲流等人员的收养、收容活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15650, 15646, '872', null, null, 'butigongzhusudeshehuifuli', '不提供住宿的社会福利', null, '指为孤儿、老人、残疾人、弱智儿童、军烈属、五保户及其他弱势群体提供不住宿的看护、帮助活动，以及其他社会福利活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15651, 6, 'R', null, null, 'wenhua?tiyuheyuleye', '文化、体育和娱乐业', null, '本类包括88—92大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15652, 15651, '88', null, null, 'xinwenchubanye', '新闻出版业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15653, 15652, '881', null, null, 'xinwenye', '新闻业', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15654, 15652, '882', null, null, 'chubanye', '出版业', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15655, 15654, '8821', null, null, 'tushuchuban', '图书出版', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15656, 15654, '8822', null, null, 'baozhichuban', '报纸出版', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15657, 15654, '8823', null, null, 'qikanchuban', '期刊出版', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15658, 15654, '8824', null, null, 'yinxiangzhipinchuban', '音像制品出版', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15659, 15654, '8825', null, null, 'dianzichubanwuchuban', '电子出版物出版', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15660, 15654, '8829', null, null, 'qitachuban', '其他出版', null, null, 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15661, 15651, '89', null, null, 'guangbo?dianshi?dianyingheyinxiangye', '广播、电视、电影和音像业', null, '指对广播、电视、电影、录音、录像内容的制作、编导、主持、播出、放映等活动。不包括广播电视信号的传输和接收活动。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15662, 15661, '891', null, null, 'guangbo', '广播', null, '指广播节目的制作和播放等服务。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15663, 15661, '892', null, null, 'dianshi', '电视', null, '指电视节目的制作和播放等服务。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15664, 15661, '893', null, null, 'dianying', '电影', null, '指电影的制作、发行和放映活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15665, 15664, '8931', null, null, 'dianyingzhizuoyufaxing', '电影制作与发行', null, '指电影的制片、制作、监制、发行等活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15666, 15664, '8932', null, null, 'dianyingfangying', '电影放映', null, '指专业电影院以及设在娱乐场所独立（或相对独立）的电影放映场所的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15667, 15661, '894', null, null, 'yinxiangzhizuo', '音像制作', null, '指从事录音、摄像、录像等制作活动。其制品可以出版、销售，可以作为广播、电影、电视广告，可以在其他宣传场合播放，或提供给广播电台播放，但不做为电视节目播放。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15668, 15651, '90', null, null, 'wenhuayishuye', '文化艺术业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15669, 15668, '901', null, null, 'wenyichuangzuoyubiaoyan', '文艺创作与表演', null, '指文学、美术创造和表演艺术（如戏曲、歌舞、话剧、音乐、杂技、马戏、木偶等表演艺术）等活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15670, 15668, '902', null, null, 'yishubiaoyanchangguan', '艺术表演场馆', null, '指有观众席、舞台、灯光设备，专供文艺团体演出的场所的管理活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15671, 15668, '903', null, null, 'tushuguanyudanganguan', '图书馆与档案馆', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15672, 15671, '9031', null, null, 'tushuguan', '图书馆', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15673, 15671, '9032', null, null, 'danganguan', '档案馆', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15674, 15668, '904', null, null, 'wenwujiwenhuabaohu', '文物及文化保护', null, '指对具有历史、文化、艺术、科学价值，并经有关部门鉴定，列入文物保护范围的不可移动文物的保护和管理活动；对我国语言、文字、民间文化艺术、民俗等非物质遗产的文化保护和管理活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15675, 15668, '905', null, null, 'bowuguan', '博物馆', null, '指收藏、研究、展示文物和标本的博物馆的活动，以及展示人类文化、艺术、科技、文明的美术馆、艺术馆、展览馆、科技馆、天文馆等管理活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15676, 15668, '906', null, null, 'lieshilingyuan?jinianguan', '烈士陵园、纪念馆', null, null, 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15677, 15668, '907', null, null, 'qunzhongwenhuahuo****', '群众文化活动', null, '指开展群众文化活动场所的管理活动。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15678, 15668, '908', null, null, 'wenhuayishujingjidaili', '文化艺术经纪代理', null, null, 3, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15679, 15668, '909', null, null, 'qitawenhuayishu', '其他文化艺术', null, null, 3, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15680, 15651, '91', null, null, 'tiyu', '体育', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15681, 15680, '911', null, null, 'tiyuzuzhi', '体育组织', null, '指专业从事体育比赛、训练、辅导和管理的组织的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15682, 15680, '912', null, null, 'tiyuchangguan', '体育场馆', null, '指可供观赏比赛的场馆和专供运动员训练用的场地的管理活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15683, 15680, '919', null, null, 'qitatiyu', '其他体育', null, '指上述未包括的体育活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15684, 15651, '92', null, null, 'yuleye', '娱乐业', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15685, 15684, '921', null, null, 'shineiyulehuo****', '室内娱乐活动', null, '指室内各种娱乐活动和以娱乐为主的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15686, 15684, '922', null, null, 'youleyuan', '游乐园', null, '指配有娱乐设施的大型室外娱乐活动及以娱乐为主的活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15687, 15684, '923', null, null, 'xiuxianjianshenyulehuo****', '休闲健身娱乐活动', null, '指主要面向社会开放的休闲健身娱乐场所和其他体育娱乐场所的管理活动。', 3, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15688, 15684, '929', null, null, 'qitayulehuo****', '其他娱乐活动', null, '指各种形式的彩票活动，以及公园、海滩和旅游景点内小型设施的娱乐活动。', 3, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15689, 6, 'S', null, null, 'gonggongguanliheshehuizuzhi', '公共管理和社会组织', null, '本类包括93—97大类。', 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15690, 15689, '93', null, null, 'zhongguogongchandangjiguan', '中国共产党机关', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15691, 15690, '930', null, null, 'zhongguogongchandangjiguan', '中国共产党机关', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15692, 15689, '94', null, null, 'guojiajigou', '国家机构', null, '指宪法规定的国家机构的活动和国家武装力量。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15693, 15692, '941', null, null, 'guojiaquanlijigou', '国家权力机构', null, '指宪法规定的全国和地方各级人民代表大会及常委会机关的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15694, 15692, '942', null, null, 'guojiaxingzhengjigou', '国家行政机构', null, '指国务院及所属行政主管部门的活动；县以上地方各级人民政府及所属各工作部门的活动；乡（镇）级地方人民政府的活动；行政管理部门下属的监督、检查机构的活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15695, 15694, '9421', null, null, 'zongheshiwuguanlijigou', '综合事务管理机构', null, '指中央和地方人民政府的活动，以及依法管理全国或地方综合事务的政府主管部门的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15696, 15694, '9422', null, null, 'duiwaishiwuguanlijigou', '对外事务管理机构', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15697, 15694, '9423', null, null, 'gonggonganquanguanlijigou', '公共安全管理机构', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15698, 15694, '9424', null, null, 'shehuishiwuguanlijigou', '社会事务管理机构', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15699, 15694, '9425', null, null, 'jingjishiwuguanlijigou', '经济事务管理机构', null, null, 4, 5, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15700, 15694, '9426', null, null, 'zhengfushiwuguanlijigou', '政府事务管理机构', null, '指依法对国务院及其主管部门有关事务的管理，以及对各级人民政府及工作部门有关事务的管理活动。', 4, 6, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15701, 15694, '9427', null, null, 'xingzhengjiandujianchajigou', '行政监督检查机构', null, '指依法对社会经济活动进行监督、监理、稽查、检查、查处等活动。包括独立（或相对独立）于各级行政管理单位的执法检查大队的活动。', 4, 7, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15702, 15692, '943', null, null, 'renminfayuanherenminjianchayuan', '人民法院和人民检察院', null, '指宪法规定的人民法院和人民检察院的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15703, 15702, '9431', null, null, 'renminfayuan', '人民法院', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15704, 15702, '9432', null, null, 'renminjianchayuan', '人民检察院', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15705, 15692, '949', null, null, 'qitaguojiajigou', '其他国家机构', null, '指其他未另列明的国家机构的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15706, 15689, '95', null, null, 'renminzhengxieheminzhudangpai', '人民政协和民主党派', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15707, 15706, '951', null, null, 'renminzhengxie', '人民政协', null, null, 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15708, 15706, '952', null, null, 'minzhudangpai', '民主党派', null, null, 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15709, 15689, '96', null, null, 'qunzhongtuanti?shehuituantihezongjiaozuzhi', '群众团体、社会团体和宗教组织', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15710, 15709, '961', null, null, 'qunzhongtuanti', '群众团体', null, '指不在社会团体登记管理机关登记的群众团体的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15711, 15710, '9611', null, null, 'gonghui', '工会', null, null, 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15712, 15710, '9612', null, null, 'fulian', '妇联', null, null, 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15713, 15710, '9613', null, null, 'gongqingtuan', '共青团', null, null, 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15714, 15710, '9619', null, null, 'qitaqunzhongtuanti', '其他群众团体', null, null, 4, 4, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15715, 15709, '962', null, null, 'shehuituanti', '社会团体', null, '指依法在社会团体登记管理机关登记的单位的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15716, 15715, '9621', null, null, 'zhuanyexingtuanti', '专业性团体', null, '指由同一领域的成员、专家组成的社会团体（如学科、学术、文化、艺术、教育、卫生等）的活动。', 4, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15717, 15715, '9622', null, null, 'xingyexingtuanti', '行业性团体', null, '指由一个行业，或某一类企业，或不同企业的雇主（经理、厂长）组成的社会团体的活动。', 4, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15718, 15715, '9629', null, null, 'qitashehuituanti', '其他社会团体', null, '指未列明的其他社会团体的活动。', 4, 3, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15719, 15709, '963', null, null, 'zongjiaozuzhi', '宗教组织', null, '指经批准的宗教组织的活动和寺庙、清真寺、教堂等的宗教活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15720, 15689, '97', null, null, 'jicengqunzhongzizhizuzhi', '基层群众自治组织', null, '指通过选举产生的社区性组织，该组织为本地区提供一般性管理、调解、治安、优抚、计划生育等服务。', 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15721, 15720, '971', null, null, 'shequzizhizuzhi', '社区自治组织', null, '指城市、镇的居民通过选举产生的群众性自治组织的管理活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15722, 15720, '972', null, null, 'cunminzizhizuzhi', '村民自治组织', null, '指农村村民通过选举产生的群众性自治组织的管理活动。', 3, 2, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15723, 6, 'T', null, null, 'guojizuzhi', '国际组织', null, null, 1, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15724, 15723, '98', null, null, 'guojizuzhi', '国际组织', null, null, 2, 1, sysdate, sysdate, 'YTB', 'YTB');
insert into T_CODE (ID, CODE_TYPE, CODE, CODE1, ENAME1, ENAME, CNAME, CNAME1, MEMO, CODE_LEVEL, SORT_LIST, CREATE_DATE, UPDATE_DATE, CREATE_USER, UPDATE_USER)
values (15725, 15724, '980', null, null, 'guojizuzhi', '国际组织', null, '指联合国和其他国际组织驻我国境内的机构的活动。', 3, 1, sysdate, sysdate, 'YTB', 'YTB');
commit;
prompt 1199 records loaded
prompt Enabling foreign key constraints for T_CODE...
set feedback on
set define on
prompt Done.
