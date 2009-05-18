
var pubschedule_show = new Array();
var pubschedule_value = new Array();
pubschedule_show[0] = '近一天';
pubschedule_value[0] = '1';
pubschedule_show[1] = '近二天';
pubschedule_value[1] = '2';
pubschedule_show[2] = '近三天';
pubschedule_value[2] = '3';
pubschedule_show[3] = '近一周';
pubschedule_value[3] = '4';
pubschedule_show[4] = '近两周';
pubschedule_value[4] = '5';
pubschedule_show[5] = '近一月';
pubschedule_value[5] = '6';
pubschedule_show[6] = '近六周';
pubschedule_value[6] = '7';
pubschedule_show[7] = '近两月';
pubschedule_value[7] = '8';


//create by liyao 2008-4-25
//地区层数据字典
//均可用PHP程序生成

//工作地点键值匹配数组
var ja=[];ja['0100']='北京市';ja['0200']='上海市';ja['0300']='广东省';ja['0302']='广州市';ja['0303']='惠州市';ja['0304']='汕头市';ja['0305']='珠海市';ja['0306']='佛山市';ja['0307']='中山市';ja['0308']='东莞市';ja['0314']='韶关市';ja['0315']='江门市';ja['0317']='湛江市';ja['0318']='肇庆市';ja['0319']='清远市';ja['0320']='潮州市';ja['0321']='河源市';ja['0322']='揭阳市';ja['0323']='茂名市';ja['0324']='汕尾市';ja['0325']='顺德市';ja['0400']='深圳市';ja['0500']='天津市';ja['0600']='重庆市';ja['0700']='江苏省';ja['0702']='南京市';ja['0703']='苏州市';ja['0704']='无锡市';ja['0705']='常州市';ja['0706']='昆山市';ja['0707']='常熟市';ja['0708']='扬州市';ja['0709']='南通市';ja['0710']='镇江市';ja['0711']='徐州市';ja['0712']='连云港市';ja['0713']='盐城市';ja['0714']='张家港市';ja['0800']='浙江省';ja['0802']='杭州市';ja['0803']='宁波市';ja['0804']='温州市';ja['0805']='绍兴市';ja['0806']='金华市';ja['0807']='嘉兴市';ja['0808']='台州市';ja['0809']='湖州市';ja['0810']='丽水市';ja['0811']='舟山市';ja['0812']='衢州市';ja['0900']='四川省';ja['0902']='成都市';ja['0903']='绵阳市';ja['0904']='乐山市';ja['0905']='泸州市';ja['0906']='德阳市';ja['0907']='宜宾市';ja['0908']='自贡市';ja['0909']='内江市';ja['0910']='攀枝花市';ja['1000']='海南省';ja['1002']='海口市';ja['1003']='三亚市';ja['1100']='福建省';ja['1102']='福州市';ja['1103']='厦门市';ja['1104']='泉州市';ja['1105']='漳州市';ja['1106']='莆田市';ja['1107']='三明市';ja['1108']='南平市';ja['1109']='宁德市';ja['1110']='龙岩市';ja['1200']='山东省';ja['1202']='济南市';ja['1203']='青岛市';ja['1204']='烟台市';ja['1205']='潍坊市';ja['1206']='威海市';ja['1207']='淄博市';ja['1208']='临沂市';ja['1209']='济宁市';ja['1210']='东营市';ja['1211']='泰安市';ja['1212']='日照市';ja['1213']='德州市';ja['1300']='江西省';ja['1302']='南昌市';ja['1303']='九江市';ja['1400']='广西';ja['1402']='南宁市';ja['1403']='桂林市';ja['1404']='柳州市';ja['1405']='北海市';ja['1500']='安徽省';ja['1502']='合肥市';ja['1503']='芜湖市';ja['1504']='安庆市';ja['1505']='马鞍山市';ja['1506']='蚌埠市';ja['1507']='阜阳市';ja['1508']='铜陵市';ja['1509']='滁州市';ja['1510']='黄山市';ja['1511']='淮南市';ja['1512']='六安市';ja['1513']='巢湖市';ja['1514']='宣城市';ja['1515']='池州市';ja['1600']='河北省';ja['1602']='石家庄市';ja['1603']='廊坊市';ja['1604']='保定市';ja['1605']='唐山市';ja['1606']='秦皇岛市';ja['1700']='河南省';ja['1702']='郑州市';ja['1703']='洛阳市';ja['1704']='开封市';ja['1800']='湖北省';ja['1802']='武汉市';ja['1803']='宜昌市';ja['1804']='黄石市';ja['1805']='襄樊市';ja['1806']='十堰市';ja['1807']='荆州市';ja['1808']='荆门市';ja['1809']='孝感市';ja['1810']='鄂州市';ja['1900']='湖南省';ja['1902']='长沙市';ja['1903']='株洲市';ja['1904']='湘潭市';ja['1905']='衡阳市';ja['1906']='岳阳市';ja['1907']='常德市';ja['1908']='益阳市';ja['1909']='郴州市';ja['1910']='邵阳市';ja['1911']='怀化市';ja['1912']='娄底市';ja['1913']='永州市';ja['1914']='张家界市';ja['2000']='陕西省';ja['2002']='西安市';ja['2003']='咸阳市';ja['2004']='宝鸡市';ja['2005']='铜川市';ja['2006']='延安市';ja['2100']='山西省';ja['2102']='太原市';ja['2103']='运城市';ja['2104']='大同市';ja['2105']='临汾市';ja['2200']='黑龙江省';ja['2202']='哈尔滨市';ja['2203']='伊春市';ja['2204']='绥化市';ja['2205']='大庆市';ja['2206']='齐齐哈尔市';ja['2207']='牡丹江市';ja['2208']='佳木斯市';ja['2300']='辽宁省';ja['2302']='沈阳市';ja['2303']='大连市';ja['2304']='鞍山市';ja['2305']='营口市';ja['2306']='抚顺市';ja['2307']='锦州市';ja['2308']='丹东市';ja['2309']='葫芦岛市';ja['2310']='本溪市';ja['2311']='辽阳市';ja['2312']='铁岭市';ja['2400']='吉林省';ja['2402']='长春市';ja['2403']='吉林市';ja['2404']='辽源市';ja['2405']='通化市';ja['2500']='云南省';ja['2502']='昆明市';ja['2503']='曲靖市';ja['2504']='玉溪市';ja['2505']='大理市';ja['2506']='丽江市';ja['2507']='蒙自市';ja['2508']='开远市';ja['2509']='个旧市';ja['2510']='红河州';ja['2600']='贵州省';ja['2602']='贵阳市';ja['2603']='遵义市';ja['2700']='甘肃省';ja['2702']='兰州市';ja['2703']='金昌市';ja['2800']='内蒙古';ja['2802']='呼和浩特市';ja['2803']='赤峰市';ja['2804']='包头市';ja['2900']='宁夏';ja['2902']='银川市';ja['3000']='西藏';ja['3002']='拉萨市';ja['3003']='日喀则市';ja['3100']='新疆';ja['3102']='乌鲁木齐市';ja['3103']='克拉玛依市';ja['3104']='喀什地区市';ja['3200']='青海省';ja['3202']='西宁市';ja['3300']='香港';ja['3400']='澳门';ja['3500']='台湾';ja['3600']='国外';
//主要城市数据字典
var maincity=[['华北-东北',['0100','0500','2303','2302','2402','2202']],['华东地区',['0200','0702','0703','0802','0803','1502','1102','1202','1203']],['华南-华中',['0302','0400','0308','1802','1902','1702']],['西北-西南',['2002','0902','0600','2502']]];
//所有省份数据字典
var allprov=[['华北-东北',['1600','2100','2800','2300','2400','2200']],['华东地区',['0700','0800','1500','1100','1300','1200']],['华南-华中',['0300','1400','1000','1700','1800','1900']],['西北-西南',['2000','2700','3200','2900','3100','0900','2600','2500','3000']],['其它',['3300','3400','3500','3600']]];


//Modified by Ryan Gao 2007-08-15 14:14:42
var ind_s = new Array();
var ind_v = new Array();
ind_s[0] = '计算机软件';
ind_v[0] = '01';
ind_s[1] = '计算机硬件';
ind_v[1] = '37';
ind_s[2] = '计算机服务(系统、数据服务，维修)';
ind_v[2] = '38';
ind_s[3] = '通信/电信/网络设备';
ind_v[3] = '31';
ind_s[4] = '通信/电信运营、增值服务';
ind_v[4] = '39';
ind_s[5] = '互联网/电子商务';
ind_v[5] = '32';
ind_s[6] = '网络游戏';
ind_v[6] = '40';
ind_s[7] = '电子技术/半导体/集成电路';
ind_v[7] = '02';
ind_s[8] = '仪器仪表/工业自动化';
ind_v[8] = '35';
ind_s[9] = '会计/审计';
ind_v[9] = '41';
ind_s[10] = '金融/投资/证券';
ind_v[10] = '03';
ind_s[11] = '银行';
ind_v[11] = '42';
ind_s[12] = '保险';
ind_v[12] = '43';
ind_s[13] = '贸易/进出口';
ind_v[13] = '04';
ind_s[14] = '批发/零售';
ind_v[14] = '22';
ind_s[15] = '快速消费品(食品,饮料,化妆品)';
ind_v[15] = '05';
ind_s[16] = '服装/纺织/皮革';
ind_v[16] = '06';
ind_s[17] = '家具/家电/工艺品/玩具';
ind_v[17] = '44';
ind_s[18] = '办公用品及设备';
ind_v[18] = '45';
ind_s[19] = '机械/设备/重工';
ind_v[19] = '14';
ind_s[20] = '汽车及零配件';
ind_v[20] = '33';
ind_s[21] = '制药/生物工程';
ind_v[21] = '08';
ind_s[22] = '医疗/护理/保健/卫生';
ind_v[22] = '46';
ind_s[23] = '医疗设备/器械';
ind_v[23] = '47';
ind_s[24] = '广告';
ind_v[24] = '12';
ind_s[25] = '公关/市场推广/会展';
ind_v[25] = '48';
ind_s[26] = '影视/媒体/艺术';
ind_v[26] = '49';
ind_s[27] = '文字媒体/出版';
ind_v[27] = '13';
ind_s[28] = '印刷/包装/造纸';
ind_v[28] = '15';
ind_s[29] = '房地产开发';
ind_v[29] = '26';
ind_s[30] = '建筑与工程';
ind_v[30] = '09';
ind_s[31] = '家居/室内设计/装潢';
ind_v[31] = '50';
ind_s[32] = '物业管理/商业中心';
ind_v[32] = '51';
ind_s[33] = '中介服务';
ind_v[33] = '34';
ind_s[34] = '专业服务(咨询，人力资源)';
ind_v[34] = '07';
ind_s[35] = '检测，认证';
ind_v[35] = '52';
ind_s[36] = '法律';
ind_v[36] = '18';
ind_s[37] = '教育/培训';
ind_v[37] = '23';
ind_s[38] = '学术/科研';
ind_v[38] = '24';
ind_s[39] = '餐饮业';
ind_v[39] = '11';
ind_s[40] = '酒店/旅游';
ind_v[40] = '53';
ind_s[41] = '娱乐/休闲/体育';
ind_v[41] = '17';
ind_s[42] = '美容/保健';
ind_v[42] = '54';
ind_s[43] = '生活服务';
ind_v[43] = '27';
ind_s[44] = '交通/运输/物流';
ind_v[44] = '21';
ind_s[45] = '航天/航空';
ind_v[45] = '55';
ind_s[46] = '石油/化工/矿产/地质';
ind_v[46] = '19';
ind_s[47] = '采掘业/冶炼';
ind_v[47] = '16';
ind_s[48] = '电力/水利';
ind_v[48] = '36';
ind_s[49] = '原材料和加工';
ind_v[49] = '56';
ind_s[50] = '政府';
ind_v[50] = '28';
ind_s[51] = '非盈利机构';
ind_v[51] = '57';
ind_s[52] = '环保';
ind_v[52] = '20';
ind_s[53] = '农业/渔业/林业';
ind_v[53] = '29';
ind_s[54] = '多元化业务集团公司';
ind_v[54] = '58';
ind_s[55] = '其他行业';
ind_v[55] = '30';
//add by liyao 2007-8-24
//新增的对行业进行分类,根据产品部的设计稿人为增加的,其中的值分别是新增分类名字
//及其最后一项在数组$d_indtype中的序号即第几项
indtypeTop=new Array(
Array('',0),
Array('计算机/互联网/通信/电子',9),
Array('会计/金融/银行/保险',	13),
Array('贸易/消费/制造/营运',	21),
Array('制药/医疗',				24),
Array('广告/媒体',				29),
Array('房地产/建筑',			33),
Array('专业服务/教育/培训',		39),
Array('服务业',					44),
Array('物流/运输',				46),
Array('能源/原材料',			50),
Array('政府/非赢利机构/其他',	56)
);

function EncodeUrl( city , address , lonlat ) {
	window.open( '/jobsearch/tranToMap.php?city=' + encodeURIComponent( city ) + '&address=' + encodeURIComponent( address ) + '&lonlat=' + lonlat, 'ShowMap' , 'width=800,height=480,top=50, left=50,resizable=yes' );
}

//modify by gly7 yao.yao.li@51job.com 2007-11-30
var func_s = new Array();
var func_v = new Array();
var subfunc_s = new Array();
var subfunc_v = new Array();
func_s[0] = '计算机硬件';
func_v[0] = '2400';
subfunc_s[0] = new Array();
subfunc_v[0] = new Array();
subfunc_s[0][0] = '(全部)计算机硬件类';
subfunc_v[0][0] = '2400';
subfunc_s[0][1] = '高级硬件工程师';
subfunc_v[0][1] = '2401';
subfunc_s[0][2] = '硬件工程师';
subfunc_v[0][2] = '2402';
subfunc_s[0][3] = '其他';
subfunc_v[0][3] = '2403';
func_s[1] = '计算机软件';
func_v[1] = '0100';
subfunc_s[1] = new Array();
subfunc_v[1] = new Array();
subfunc_s[1][0] = '(全部)计算机软件类';
subfunc_v[1][0] = '0100';
subfunc_s[1][1] = '高级软件工程师';
subfunc_v[1][1] = '0106';
subfunc_s[1][2] = '软件工程师';
subfunc_v[1][2] = '0107';
subfunc_s[1][3] = '软件UI设计师/工程师';
subfunc_v[1][3] = '0144';
subfunc_s[1][4] = '仿真应用工程师';
subfunc_v[1][4] = '0145';
subfunc_s[1][5] = 'ERP实施顾问(ORACLE/SAP)';
subfunc_v[1][5] = '0146';
subfunc_s[1][6] = 'ERP技术开发(ORACLE/SAP)';
subfunc_v[1][6] = '0117';
subfunc_s[1][7] = '需求工程师';
subfunc_v[1][7] = '0147';
subfunc_s[1][8] = '系统集成工程师';
subfunc_v[1][8] = '0137';
subfunc_s[1][9] = '系统分析员';
subfunc_v[1][9] = '0123';
subfunc_s[1][10] = '系统工程师';
subfunc_v[1][10] = '0127';
subfunc_s[1][11] = '系统架构设计师';
subfunc_v[1][11] = '0143';
subfunc_s[1][12] = '数据库工程师/管理员';
subfunc_v[1][12] = '0108';
subfunc_s[1][13] = '计算机辅助设计工程师';
subfunc_v[1][13] = '0141';
subfunc_s[1][14] = '其他';
subfunc_v[1][14] = '0142';
func_s[2] = '互联网开发及应用';
func_v[2] = '2500';
subfunc_s[2] = new Array();
subfunc_v[2] = new Array();
subfunc_s[2][0] = '(全部)互联网开发及应用类';
subfunc_v[2][0] = '2500';
subfunc_s[2][1] = '互联网软件开发工程师';
subfunc_v[2][1] = '2501';
subfunc_s[2][2] = '语音/视频开发工程师';
subfunc_v[2][2] = '2514';
subfunc_s[2][3] = '多媒体/游戏开发工程师';
subfunc_v[2][3] = '2502';
subfunc_s[2][4] = '网站营运经理/主管';
subfunc_v[2][4] = '2503';
subfunc_s[2][5] = '网络工程师';
subfunc_v[2][5] = '2504';
subfunc_s[2][6] = 'UI设计师/顾问';
subfunc_v[2][6] = '2515';
subfunc_s[2][7] = '网站架构设计师';
subfunc_v[2][7] = '2512';
subfunc_s[2][8] = '网站维护工程师';
subfunc_v[2][8] = '2513';
subfunc_s[2][9] = '系统管理员/网络管理员';
subfunc_v[2][9] = '2505';
subfunc_s[2][10] = '网站策划';
subfunc_v[2][10] = '2506';
subfunc_s[2][11] = '网站编辑';
subfunc_v[2][11] = '2507';
subfunc_s[2][12] = '网页设计/制作/美工';
subfunc_v[2][12] = '2508';
subfunc_s[2][13] = '网络信息安全工程师';
subfunc_v[2][13] = '2509';
subfunc_s[2][14] = '智能大厦/综合布线';
subfunc_v[2][14] = '2510';
subfunc_s[2][15] = '其他';
subfunc_v[2][15] = '2511';
func_s[3] = 'IT-管理';
func_v[3] = '2600';
subfunc_s[3] = new Array();
subfunc_v[3] = new Array();
subfunc_s[3][0] = '(全部)IT-管理类';
subfunc_v[3][0] = '2600';
subfunc_s[3][1] = '首席技术执行官CTO/首席信息官CIO';
subfunc_v[3][1] = '2601';
subfunc_s[3][2] = '技术总监/经理';
subfunc_v[3][2] = '2602';
subfunc_s[3][3] = '信息技术经理/主管';
subfunc_v[3][3] = '2603';
subfunc_s[3][4] = '信息技术专员';
subfunc_v[3][4] = '2604';
subfunc_s[3][5] = '项目总监';
subfunc_v[3][5] = '2605';
subfunc_s[3][6] = '项目经理';
subfunc_v[3][6] = '2606';
subfunc_s[3][7] = '项目主管';
subfunc_v[3][7] = '2607';
subfunc_s[3][8] = '项目执行/协调人员';
subfunc_v[3][8] = '2608';
subfunc_s[3][9] = '其他';
subfunc_v[3][9] = '2609';
func_s[4] = 'IT-品管、技术支持及其它';
func_v[4] = '2700';
subfunc_s[4] = new Array();
subfunc_v[4] = new Array();
subfunc_s[4][0] = '(全部)IT-品管、技术支持及其它类';
subfunc_v[4][0] = '2700';
subfunc_s[4][1] = '技术支持经理';
subfunc_v[4][1] = '2701';
subfunc_s[4][2] = '技术支持工程师';
subfunc_v[4][2] = '2702';
subfunc_s[4][3] = '计量工程师';
subfunc_v[4][3] = '2703';
subfunc_s[4][4] = '标准化工程师';
subfunc_v[4][4] = '2704';
subfunc_s[4][5] = '品质经理';
subfunc_v[4][5] = '2705';
subfunc_s[4][6] = '系统测试';
subfunc_v[4][6] = '2706';
subfunc_s[4][7] = '软件测试';
subfunc_v[4][7] = '2707';
subfunc_s[4][8] = '硬件测试';
subfunc_v[4][8] = '2708';
subfunc_s[4][9] = '测试员';
subfunc_v[4][9] = '2709';
subfunc_s[4][10] = '技术文员/助理';
subfunc_v[4][10] = '2710';
subfunc_s[4][11] = '其他';
subfunc_v[4][11] = '2711';
func_s[5] = '通信技术';
func_v[5] = '2800';
subfunc_s[5] = new Array();
subfunc_v[5] = new Array();
subfunc_s[5][0] = '(全部)通信技术类';
subfunc_v[5][0] = '2800';
subfunc_s[5][1] = '通信技术工程师';
subfunc_v[5][1] = '2801';
subfunc_s[5][2] = '有线传输工程师';
subfunc_v[5][2] = '2802';
subfunc_s[5][3] = '无线通信工程师';
subfunc_v[5][3] = '2803';
subfunc_s[5][4] = '电信交换工程师';
subfunc_v[5][4] = '2804';
subfunc_s[5][5] = '数据通信工程师';
subfunc_v[5][5] = '2805';
subfunc_s[5][6] = '移动通信工程师';
subfunc_v[5][6] = '2806';
subfunc_s[5][7] = '电信网络工程师';
subfunc_v[5][7] = '2807';
subfunc_s[5][8] = '通信电源工程师';
subfunc_v[5][8] = '2808';
subfunc_s[5][9] = '增值产品开发工程师';
subfunc_v[5][9] = '2810';
subfunc_s[5][10] = '其他';
subfunc_v[5][10] = '2809';
func_s[6] = '电子/电器/半导体/仪器仪表';
func_v[6] = '2900';
subfunc_s[6] = new Array();
subfunc_v[6] = new Array();
subfunc_s[6][0] = '(全部)电子/电器/半导体/仪器仪表类';
subfunc_v[6][0] = '2900';
subfunc_s[6][1] = '集成电路IC设计/应用工程师';
subfunc_v[6][1] = '2901';
subfunc_s[6][2] = 'IC验证工程师';
subfunc_v[6][2] = '2902';
subfunc_s[6][3] = '电子工程师/技术员';
subfunc_v[6][3] = '2903';
subfunc_s[6][4] = '电子技术研发工程师';
subfunc_v[6][4] = '2917';
subfunc_s[6][5] = '电子/电器维修工程师/技师';
subfunc_v[6][5] = '2920';
subfunc_s[6][6] = '变压器与磁电工程师';
subfunc_v[6][6] = '2921';
subfunc_s[6][7] = '版图设计工程师';
subfunc_v[6][7] = '2922';
subfunc_s[6][8] = '电气工程师/技术员';
subfunc_v[6][8] = '2904';
subfunc_s[6][9] = '电路工程师/技术员(模拟/数字)';
subfunc_v[6][9] = '2905';
subfunc_s[6][10] = '电声/音响工程师/技术员';
subfunc_v[6][10] = '2906';
subfunc_s[6][11] = '激光/光电子技术';
subfunc_v[6][11] = '2918';
subfunc_s[6][12] = '半导体技术';
subfunc_v[6][12] = '2907';
subfunc_s[6][13] = '自动控制工程师/技术员';
subfunc_v[6][13] = '2908';
subfunc_s[6][14] = '电子软件开发(ARM/MCU...)';
subfunc_v[6][14] = '2909';
subfunc_s[6][15] = '嵌入式软件开发(Linux/单片机/DLC/DSP…)';
subfunc_v[6][15] = '2910';
subfunc_s[6][16] = '嵌入式硬件开发(主板机…)';
subfunc_v[6][16] = '2919';
subfunc_s[6][17] = '电池/电源开发';
subfunc_v[6][17] = '2911';
subfunc_s[6][18] = 'FAE 现场应用工程师';
subfunc_v[6][18] = '2912';
subfunc_s[6][19] = '家用电器/数码产品研发';
subfunc_v[6][19] = '2913';
subfunc_s[6][20] = '仪器/仪表/计量';
subfunc_v[6][20] = '2914';
subfunc_s[6][21] = '测试工程师';
subfunc_v[6][21] = '2915';
subfunc_s[6][22] = '其他';
subfunc_v[6][22] = '2916';
func_s[7] = '销售管理';
func_v[7] = '0200';
subfunc_s[7] = new Array();
subfunc_v[7] = new Array();
subfunc_s[7][0] = '(全部)销售管理类';
subfunc_v[7][0] = '0200';
subfunc_s[7][1] = '销售总监';
subfunc_v[7][1] = '0201';
subfunc_s[7][2] = '销售经理';
subfunc_v[7][2] = '0202';
subfunc_s[7][3] = '销售主管';
subfunc_v[7][3] = '0203';
subfunc_s[7][4] = '业务拓展主管/经理';
subfunc_v[7][4] = '0232';
subfunc_s[7][5] = '渠道/分销经理';
subfunc_v[7][5] = '0207';
subfunc_s[7][6] = '渠道/分销主管';
subfunc_v[7][6] = '0220';
subfunc_s[7][7] = '客户经理/主管';
subfunc_v[7][7] = '0208';
subfunc_s[7][8] = '区域销售总监';
subfunc_v[7][8] = '0230';
subfunc_s[7][9] = '区域销售经理';
subfunc_v[7][9] = '0226';
subfunc_s[7][10] = '其他';
subfunc_v[7][10] = '0231';
func_s[8] = '销售人员';
func_v[8] = '3000';
subfunc_s[8] = new Array();
subfunc_v[8] = new Array();
subfunc_s[8][0] = '(全部)销售人员类';
subfunc_v[8][0] = '3000';
subfunc_s[8][1] = '销售代表';
subfunc_v[8][1] = '3001';
subfunc_s[8][2] = '渠道/分销专员';
subfunc_v[8][2] = '3002';
subfunc_s[8][3] = '客户代表';
subfunc_v[8][3] = '3003';
subfunc_s[8][4] = '销售工程师';
subfunc_v[8][4] = '3004';
subfunc_s[8][5] = '电话销售';
subfunc_v[8][5] = '3005';
subfunc_s[8][6] = '经销商';
subfunc_v[8][6] = '3006';
subfunc_s[8][7] = '其他';
subfunc_v[8][7] = '3007';
func_s[9] = '销售行政及商务';
func_v[9] = '3100';
subfunc_s[9] = new Array();
subfunc_v[9] = new Array();
subfunc_s[9][0] = '(全部)销售行政及商务类';
subfunc_v[9][0] = '3100';
subfunc_s[9][1] = '销售行政经理/主管';
subfunc_v[9][1] = '3101';
subfunc_s[9][2] = '销售行政专员/助理';
subfunc_v[9][2] = '3102';
subfunc_s[9][3] = '商务经理';
subfunc_v[9][3] = '3103';
subfunc_s[9][4] = '商务主管/专员';
subfunc_v[9][4] = '3104';
subfunc_s[9][5] = '商务助理';
subfunc_v[9][5] = '3105';
subfunc_s[9][6] = '销售助理';
subfunc_v[9][6] = '3106';
subfunc_s[9][7] = '其他';
subfunc_v[9][7] = '3107';
func_s[10] = '客服及技术支持';
func_v[10] = '3200';
subfunc_s[10] = new Array();
subfunc_v[10] = new Array();
subfunc_s[10][0] = '(全部)客服及技术支持类';
subfunc_v[10][0] = '3200';
subfunc_s[10][1] = '客服总监(非技术)';
subfunc_v[10][1] = '3201';
subfunc_s[10][2] = '客服经理(非技术)';
subfunc_v[10][2] = '3202';
subfunc_s[10][3] = '客服主管(非技术)';
subfunc_v[10][3] = '3203';
subfunc_s[10][4] = '客服专员/助理(非技术)';
subfunc_v[10][4] = '3204';
subfunc_s[10][5] = '客户关系经理/主管';
subfunc_v[10][5] = '3210';
subfunc_s[10][6] = '投诉专员';
subfunc_v[10][6] = '3211';
subfunc_s[10][7] = '售前/售后技术支持经理';
subfunc_v[10][7] = '3205';
subfunc_s[10][8] = '售前/售后技术支持主管';
subfunc_v[10][8] = '3206';
subfunc_s[10][9] = '售前/售后技术支持工程师';
subfunc_v[10][9] = '3207';
subfunc_s[10][10] = '咨询热线/呼叫中心服务人员';
subfunc_v[10][10] = '3208';
subfunc_s[10][11] = '其他';
subfunc_v[10][11] = '3209';
func_s[11] = '财务/审计/税务';
func_v[11] = '0400';
subfunc_s[11] = new Array();
subfunc_v[11] = new Array();
subfunc_s[11][0] = '(全部)财务/审计/税务类';
subfunc_v[11][0] = '0400';
subfunc_s[11][1] = '首席财务官 CFO';
subfunc_v[11][1] = '0444';
subfunc_s[11][2] = '财务总监';
subfunc_v[11][2] = '0401';
subfunc_s[11][3] = '财务经理';
subfunc_v[11][3] = '0402';
subfunc_s[11][4] = '财务顾问';
subfunc_v[11][4] = '0445';
subfunc_s[11][5] = '财务主管/总帐主管';
subfunc_v[11][5] = '0403';
subfunc_s[11][6] = '会计经理/会计主管';
subfunc_v[11][6] = '0404';
subfunc_s[11][7] = '会计';
subfunc_v[11][7] = '0405';
subfunc_s[11][8] = '出纳员';
subfunc_v[11][8] = '0414';
subfunc_s[11][9] = '财务/会计助理';
subfunc_v[11][9] = '0422';
subfunc_s[11][10] = '会计文员';
subfunc_v[11][10] = '0447';
subfunc_s[11][11] = '财务分析经理/主管';
subfunc_v[11][11] = '0406';
subfunc_s[11][12] = '财务分析员';
subfunc_v[11][12] = '0407';
subfunc_s[11][13] = '成本经理/成本主管';
subfunc_v[11][13] = '0408';
subfunc_s[11][14] = '成本管理员';
subfunc_v[11][14] = '0409';
subfunc_s[11][15] = '审计经理/主管';
subfunc_v[11][15] = '0410';
subfunc_s[11][16] = '审计专员/助理';
subfunc_v[11][16] = '0419';
subfunc_s[11][17] = '税务经理/税务主管';
subfunc_v[11][17] = '0411';
subfunc_s[11][18] = '税务专员/助理';
subfunc_v[11][18] = '0412';
subfunc_s[11][19] = '统计员';
subfunc_v[11][19] = '0446';
subfunc_s[11][20] = '其他';
subfunc_v[11][20] = '0443';
func_s[12] = '证券/金融/投资';
func_v[12] = '3300';
subfunc_s[12] = new Array();
subfunc_v[12] = new Array();
subfunc_s[12][0] = '(全部)证券/金融/投资类';
subfunc_v[12][0] = '3300';
subfunc_s[12][1] = '证券/期货/外汇经纪人';
subfunc_v[12][1] = '3301';
subfunc_s[12][2] = '证券分析师';
subfunc_v[12][2] = '3302';
subfunc_s[12][3] = '股票/期货操盘手';
subfunc_v[12][3] = '3303';
subfunc_s[12][4] = '金融/经济研究员';
subfunc_v[12][4] = '3304';
subfunc_s[12][5] = '投资/基金项目经理';
subfunc_v[12][5] = '3305';
subfunc_s[12][6] = '投资/理财顾问';
subfunc_v[12][6] = '3306';
subfunc_s[12][7] = '投资银行业务';
subfunc_v[12][7] = '3307';
subfunc_s[12][8] = '融资经理/融资主管';
subfunc_v[12][8] = '3308';
subfunc_s[12][9] = '融资专员';
subfunc_v[12][9] = '3309';
subfunc_s[12][10] = '拍卖师';
subfunc_v[12][10] = '3310';
subfunc_s[12][11] = '其他';
subfunc_v[12][11] = '3311';
func_s[13] = '银行';
func_v[13] = '2200';
subfunc_s[13] = new Array();
subfunc_v[13] = new Array();
subfunc_s[13][0] = '(全部)银行类';
subfunc_v[13][0] = '2200';
subfunc_s[13][1] = '行长/副行长';
subfunc_v[13][1] = '2207';
subfunc_s[13][2] = '资产评估/分析';
subfunc_v[13][2] = '2208';
subfunc_s[13][3] = '风险控制';
subfunc_v[13][3] = '2209';
subfunc_s[13][4] = '信贷管理/信用调查/分析人员';
subfunc_v[13][4] = '2215';
subfunc_s[13][5] = '进出口/信用证结算';
subfunc_v[13][5] = '2210';
subfunc_s[13][6] = '外汇交易';
subfunc_v[13][6] = '2212';
subfunc_s[13][7] = '清算人员';
subfunc_v[13][7] = '2211';
subfunc_s[13][8] = '高级客户经理/客户经理';
subfunc_v[13][8] = '2213';
subfunc_s[13][9] = '客户主管/专员';
subfunc_v[13][9] = '2214';
subfunc_s[13][10] = '银行柜员';
subfunc_v[13][10] = '2216';
subfunc_s[13][11] = '银行卡、电子银行业务推广';
subfunc_v[13][11] = '2222';
subfunc_s[13][12] = '其他';
subfunc_v[13][12] = '2221';
func_s[14] = '保险';
func_v[14] = '3400';
subfunc_s[14] = new Array();
subfunc_v[14] = new Array();
subfunc_s[14][0] = '(全部)保险类';
subfunc_v[14][0] = '3400';
subfunc_s[14][1] = '保险精算师';
subfunc_v[14][1] = '3401';
subfunc_s[14][2] = '保险产品开发/项目策划';
subfunc_v[14][2] = '3402';
subfunc_s[14][3] = '保险业务经理/主管';
subfunc_v[14][3] = '3403';
subfunc_s[14][4] = '保险代理/经纪人/客户经理';
subfunc_v[14][4] = '3404';
subfunc_s[14][5] = '理财顾问/财务规划师';
subfunc_v[14][5] = '3405';
subfunc_s[14][6] = '储备经理人';
subfunc_v[14][6] = '3406';
subfunc_s[14][7] = '保险核保';
subfunc_v[14][7] = '3407';
subfunc_s[14][8] = '保险理赔';
subfunc_v[14][8] = '3408';
subfunc_s[14][9] = '保险客户服务/续期管理';
subfunc_v[14][9] = '3409';
subfunc_s[14][10] = '保险培训师';
subfunc_v[14][10] = '3410';
subfunc_s[14][11] = '保险内勤';
subfunc_v[14][11] = '3411';
subfunc_s[14][12] = '契约管理';
subfunc_v[14][12] = '3413';
subfunc_s[14][13] = '其他';
subfunc_v[14][13] = '3412';
func_s[15] = '生产/营运';
func_v[15] = '3500';
subfunc_s[15] = new Array();
subfunc_v[15] = new Array();
subfunc_s[15][0] = '(全部)生产/营运类';
subfunc_v[15][0] = '3500';
subfunc_s[15][1] = '工厂经理/厂长';
subfunc_v[15][1] = '3501';
subfunc_s[15][2] = '总工程师/副总工程师';
subfunc_v[15][2] = '3502';
subfunc_s[15][3] = '项目经理/主管';
subfunc_v[15][3] = '3503';
subfunc_s[15][4] = '项目工程师';
subfunc_v[15][4] = '3504';
subfunc_s[15][5] = '营运经理';
subfunc_v[15][5] = '3505';
subfunc_s[15][6] = '营运主管';
subfunc_v[15][6] = '3506';
subfunc_s[15][7] = '生产经理/车间主任';
subfunc_v[15][7] = '3507';
subfunc_s[15][8] = '生产计划/物料管理(PMC)';
subfunc_v[15][8] = '3508';
subfunc_s[15][9] = '生产主管/督导/领班';
subfunc_v[15][9] = '3509';
subfunc_s[15][10] = '生产文员';
subfunc_v[15][10] = '3512';
subfunc_s[15][11] = '化验员';
subfunc_v[15][11] = '3510';
subfunc_s[15][12] = '其他';
subfunc_v[15][12] = '3511';
func_s[16] = '质量/安全管理';
func_v[16] = '3600';
subfunc_s[16] = new Array();
subfunc_v[16] = new Array();
subfunc_s[16][0] = '(全部)质量/安全管理类';
subfunc_v[16][0] = '3600';
subfunc_s[16][1] = '质量管理/测试经理(QA/QC经理)';
subfunc_v[16][1] = '3601';
subfunc_s[16][2] = '质量管理/测试主管(QA/QC主管)';
subfunc_v[16][2] = '3602';
subfunc_s[16][3] = '质量管理/测试工程师(QA/QC工程师)';
subfunc_v[16][3] = '3603';
subfunc_s[16][4] = '质量检验员/测试员';
subfunc_v[16][4] = '3604';
subfunc_s[16][5] = '可靠度工程师';
subfunc_v[16][5] = '3605';
subfunc_s[16][6] = '故障分析工程师';
subfunc_v[16][6] = '3606';
subfunc_s[16][7] = '认证工程师/审核员';
subfunc_v[16][7] = '3607';
subfunc_s[16][8] = '体系工程师/审核员';
subfunc_v[16][8] = '3608';
subfunc_s[16][9] = '安全/健康/环境经理/主管';
subfunc_v[16][9] = '3609';
subfunc_s[16][10] = '安全/健康/环境工程师';
subfunc_v[16][10] = '3610';
subfunc_s[16][11] = '供应商管理';
subfunc_v[16][11] = '3611';
subfunc_s[16][12] = '采购材料、设备质量管理';
subfunc_v[16][12] = '3612';
subfunc_s[16][13] = '其他';
subfunc_v[16][13] = '3613';
func_s[17] = '工程/机械/能源';
func_v[17] = '0500';
subfunc_s[17] = new Array();
subfunc_v[17] = new Array();
subfunc_s[17][0] = '(全部)工程/机械/能源类';
subfunc_v[17][0] = '0500';
subfunc_s[17][1] = '技术研发经理/主管';
subfunc_v[17][1] = '0510';
subfunc_s[17][2] = '技术研发工程师';
subfunc_v[17][2] = '0511';
subfunc_s[17][3] = '产品工艺/制程工程师';
subfunc_v[17][3] = '0547';
subfunc_s[17][4] = '产品规划工程师';
subfunc_v[17][4] = '0559';
subfunc_s[17][5] = '实验室负责人/工程师';
subfunc_v[17][5] = '0512';
subfunc_s[17][6] = '工程/设备经理';
subfunc_v[17][6] = '0513';
subfunc_s[17][7] = '工程/设备主管';
subfunc_v[17][7] = '0514';
subfunc_s[17][8] = '工程/设备工程师';
subfunc_v[17][8] = '0515';
subfunc_s[17][9] = '工程/机械绘图员';
subfunc_v[17][9] = '0523';
subfunc_s[17][10] = '工业工程师';
subfunc_v[17][10] = '0560';
subfunc_s[17][11] = '机械工程师';
subfunc_v[17][11] = '0539';
subfunc_s[17][12] = '结构工程师';
subfunc_v[17][12] = '0561';
subfunc_s[17][13] = '模具工程师';
subfunc_v[17][13] = '0548';
subfunc_s[17][14] = '机电工程师';
subfunc_v[17][14] = '0544';
subfunc_s[17][15] = '维修工程师';
subfunc_v[17][15] = '0537';
subfunc_s[17][16] = '铸造/锻造工程师/技师';
subfunc_v[17][16] = '0562';
subfunc_s[17][17] = '注塑工程师/技师';
subfunc_v[17][17] = '0563';
subfunc_s[17][18] = '焊接工程师/技师';
subfunc_v[17][18] = '0564';
subfunc_s[17][19] = '夹具工程师/技师';
subfunc_v[17][19] = '0565';
subfunc_s[17][20] = 'CNC工程师';
subfunc_v[17][20] = '0566';
subfunc_s[17][21] = '冲压工程师/技师';
subfunc_v[17][21] = '0567';
subfunc_s[17][22] = '锅炉工程师/技师';
subfunc_v[17][22] = '0568';
subfunc_s[17][23] = '电力工程师/技术员';
subfunc_v[17][23] = '0569';
subfunc_s[17][24] = '光源与照明工程';
subfunc_v[17][24] = '0570';
subfunc_s[17][25] = '汽车/摩托车工程师';
subfunc_v[17][25] = '0571';
subfunc_s[17][26] = '船舶工程师';
subfunc_v[17][26] = '0572';
subfunc_s[17][27] = '轨道工程师/技术员';
subfunc_v[17][27] = '0575';
subfunc_s[17][28] = '飞机维修机械师';
subfunc_v[17][28] = '0576';
subfunc_s[17][29] = '飞行器设计与制造';
subfunc_v[17][29] = '0573';
subfunc_s[17][30] = '水利/水电工程师';
subfunc_v[17][30] = '0577';
subfunc_s[17][31] = '石油天然气技术人员';
subfunc_v[17][31] = '0578';
subfunc_s[17][32] = '地质／地质勘测工程师';
subfunc_v[17][32] = '0579';
subfunc_s[17][33] = '其他';
subfunc_v[17][33] = '0574';
func_s[18] = '汽车';
func_v[18] = '5400';
subfunc_s[18] = new Array();
subfunc_v[18] = new Array();
subfunc_s[18][0] = '(全部)汽车类';
subfunc_v[18][0] = '5400';
subfunc_s[18][1] = '汽车机构工程师';
subfunc_v[18][1] = '5401';
subfunc_s[18][2] = '汽车设计工程师';
subfunc_v[18][2] = '5402';
subfunc_s[18][3] = '汽车电子工程师';
subfunc_v[18][3] = '5403';
subfunc_s[18][4] = '汽车质量管理';
subfunc_v[18][4] = '5404';
subfunc_s[18][5] = '汽车安全性能工程师';
subfunc_v[18][5] = '5405';
subfunc_s[18][6] = '汽车装配工艺工程师';
subfunc_v[18][6] = '5406';
subfunc_s[18][7] = '汽车修理人员';
subfunc_v[18][7] = '5407';
subfunc_s[18][8] = '4S店经理/维修站经理';
subfunc_v[18][8] = '5408';
subfunc_s[18][9] = '汽车销售/经纪人';
subfunc_v[18][9] = '5409';
subfunc_s[18][10] = '二手车评估师';
subfunc_v[18][10] = '5410';
subfunc_s[18][11] = '其他';
subfunc_v[18][11] = '5411';
func_s[19] = '技工';
func_v[19] = '3700';
subfunc_s[19] = new Array();
subfunc_v[19] = new Array();
subfunc_s[19][0] = '(全部)技工类';
subfunc_v[19][0] = '3700';
subfunc_s[19][1] = '技工';
subfunc_v[19][1] = '3701';
subfunc_s[19][2] = '钳工/机修工/钣金工';
subfunc_v[19][2] = '3702';
subfunc_s[19][3] = '电焊工/铆焊工';
subfunc_v[19][3] = '3703';
subfunc_s[19][4] = '车工/磨工/铣工/冲压工/锣工';
subfunc_v[19][4] = '3704';
subfunc_s[19][5] = '切割技工';
subfunc_v[19][5] = '3714';
subfunc_s[19][6] = '模具工';
subfunc_v[19][6] = '3705';
subfunc_s[19][7] = '电工';
subfunc_v[19][7] = '3706';
subfunc_s[19][8] = '叉车工';
subfunc_v[19][8] = '3707';
subfunc_s[19][9] = '空调工/电梯工/锅炉工';
subfunc_v[19][9] = '3708';
subfunc_s[19][10] = '水工/木工/漆工';
subfunc_v[19][10] = '3709';
subfunc_s[19][11] = '普工';
subfunc_v[19][11] = '3710';
subfunc_s[19][12] = '裁剪车缝熨烫';
subfunc_v[19][12] = '3711';
subfunc_s[19][13] = '汽车修理工';
subfunc_v[19][13] = '3712';
subfunc_s[19][14] = '其他';
subfunc_v[19][14] = '3713';
func_s[20] = '服装/纺织/皮革';
func_v[20] = '3800';
subfunc_s[20] = new Array();
subfunc_v[20] = new Array();
subfunc_s[20][0] = '(全部)服装/纺织/皮革类';
subfunc_v[20][0] = '3800';
subfunc_s[20][1] = '服装/纺织设计';
subfunc_v[20][1] = '3801';
subfunc_s[20][2] = '面料辅料开发';
subfunc_v[20][2] = '3802';
subfunc_s[20][3] = '面料辅料采购';
subfunc_v[20][3] = '3803';
subfunc_s[20][4] = '服装/纺织/皮革跟单';
subfunc_v[20][4] = '3804';
subfunc_s[20][5] = '质量管理/验货员(QA/QC)';
subfunc_v[20][5] = '3805';
subfunc_s[20][6] = '板房/楦头/底格出格师';
subfunc_v[20][6] = '3806';
subfunc_s[20][7] = '服装打样/制版';
subfunc_v[20][7] = '3807';
subfunc_s[20][8] = '电脑放码员';
subfunc_v[20][8] = '3811';
subfunc_s[20][9] = '纸样师/车板工';
subfunc_v[20][9] = '3808';
subfunc_s[20][10] = '裁床';
subfunc_v[20][10] = '3809';
subfunc_s[20][11] = '其他';
subfunc_v[20][11] = '3810';
func_s[21] = '采购';
func_v[21] = '3900';
subfunc_s[21] = new Array();
subfunc_v[21] = new Array();
subfunc_s[21][0] = '(全部)采购类';
subfunc_v[21][0] = '3900';
subfunc_s[21][1] = '买手';
subfunc_v[21][1] = '3908';
subfunc_s[21][2] = '采购总监';
subfunc_v[21][2] = '3901';
subfunc_s[21][3] = '采购经理';
subfunc_v[21][3] = '3902';
subfunc_s[21][4] = '采购主管';
subfunc_v[21][4] = '3903';
subfunc_s[21][5] = '采购员';
subfunc_v[21][5] = '3904';
subfunc_s[21][6] = '采购助理';
subfunc_v[21][6] = '3905';
subfunc_s[21][7] = '其他';
subfunc_v[21][7] = '3907';
func_s[22] = '贸易';
func_v[22] = '4000';
subfunc_s[22] = new Array();
subfunc_v[22] = new Array();
subfunc_s[22][0] = '(全部)贸易类';
subfunc_v[22][0] = '4000';
subfunc_s[22][1] = '外贸/贸易经理/主管';
subfunc_v[22][1] = '4001';
subfunc_s[22][2] = '外贸/贸易专员/助理';
subfunc_v[22][2] = '4002';
subfunc_s[22][3] = '国内贸易人员';
subfunc_v[22][3] = '4003';
subfunc_s[22][4] = '业务跟单经理';
subfunc_v[22][4] = '4004';
subfunc_s[22][5] = '高级业务跟单';
subfunc_v[22][5] = '4005';
subfunc_s[22][6] = '业务跟单';
subfunc_v[22][6] = '4006';
subfunc_s[22][7] = '助理业务跟单';
subfunc_v[22][7] = '4007';
subfunc_s[22][8] = '其他';
subfunc_v[22][8] = '4008';
func_s[23] = '物流/仓储';
func_v[23] = '0800';
subfunc_s[23] = new Array();
subfunc_v[23] = new Array();
subfunc_s[23][0] = '(全部)物流/仓储类';
subfunc_v[23][0] = '0800';
subfunc_s[23][1] = '物流总监';
subfunc_v[23][1] = '0827';
subfunc_s[23][2] = '物流经理';
subfunc_v[23][2] = '0801';
subfunc_s[23][3] = '物流主管';
subfunc_v[23][3] = '0802';
subfunc_s[23][4] = '物流专员/助理';
subfunc_v[23][4] = '0814';
subfunc_s[23][5] = '供应链总监';
subfunc_v[23][5] = '0828';
subfunc_s[23][6] = '供应链经理';
subfunc_v[23][6] = '0825';
subfunc_s[23][7] = '供应链主管/专员';
subfunc_v[23][7] = '0826';
subfunc_s[23][8] = '物料经理';
subfunc_v[23][8] = '0803';
subfunc_s[23][9] = '物料主管/专员';
subfunc_v[23][9] = '0804';
subfunc_s[23][10] = '仓库经理/主管';
subfunc_v[23][10] = '0808';
subfunc_s[23][11] = '仓库管理员';
subfunc_v[23][11] = '0809';
subfunc_s[23][12] = '运输经理/主管';
subfunc_v[23][12] = '0810';
subfunc_s[23][13] = '货运代理';
subfunc_v[23][13] = '0829';
subfunc_s[23][14] = '集装箱业务';
subfunc_v[23][14] = '0830';
subfunc_s[23][15] = '海关事务管理';
subfunc_v[23][15] = '0832';
subfunc_s[23][16] = '报关员';
subfunc_v[23][16] = '0811';
subfunc_s[23][17] = '单证员';
subfunc_v[23][17] = '0812';
subfunc_s[23][18] = '船务/空运陆运操作';
subfunc_v[23][18] = '0815';
subfunc_s[23][19] = '快递员';
subfunc_v[23][19] = '0813';
subfunc_s[23][20] = '调度员';
subfunc_v[23][20] = '0831';
subfunc_s[23][21] = '理货员';
subfunc_v[23][21] = '0823';
subfunc_s[23][22] = '其他';
subfunc_v[23][22] = '0824';
func_s[24] = '生物/制药/医疗器械';
func_v[24] = '4100';
subfunc_s[24] = new Array();
subfunc_v[24] = new Array();
subfunc_s[24][0] = '(全部)生物/制药/医疗器械类';
subfunc_v[24][0] = '4100';
subfunc_s[24][1] = '生物工程/生物制药';
subfunc_v[24][1] = '4101';
subfunc_s[24][2] = '化学分析测试员';
subfunc_v[24][2] = '4116';
subfunc_s[24][3] = '医药技术研发管理人员';
subfunc_v[24][3] = '4103';
subfunc_s[24][4] = '医药技术研发人员';
subfunc_v[24][4] = '4104';
subfunc_s[24][5] = '临床研究员';
subfunc_v[24][5] = '4105';
subfunc_s[24][6] = '临床协调员';
subfunc_v[24][6] = '4106';
subfunc_s[24][7] = '药品注册';
subfunc_v[24][7] = '4107';
subfunc_s[24][8] = '药品生产/质量管理';
subfunc_v[24][8] = '4108';
subfunc_s[24][9] = '药品市场推广经理';
subfunc_v[24][9] = '4109';
subfunc_s[24][10] = '药品市场推广主管/专员';
subfunc_v[24][10] = '4110';
subfunc_s[24][11] = '医药招商';
subfunc_v[24][11] = '4120';
subfunc_s[24][12] = '医药销售经理/主管';
subfunc_v[24][12] = '4111';
subfunc_s[24][13] = '医药销售代表';
subfunc_v[24][13] = '4112';
subfunc_s[24][14] = '医疗设备注册';
subfunc_v[24][14] = '4117';
subfunc_s[24][15] = '医疗设备生产/质量管理';
subfunc_v[24][15] = '4118';
subfunc_s[24][16] = '医疗器械市场推广';
subfunc_v[24][16] = '4113';
subfunc_s[24][17] = '医疗器械销售';
subfunc_v[24][17] = '4114';
subfunc_s[24][18] = '医疗器械维修人员';
subfunc_v[24][18] = '4119';
subfunc_s[24][19] = '其他';
subfunc_v[24][19] = '4115';
func_s[25] = '化工';
func_v[25] = '5500';
subfunc_s[25] = new Array();
subfunc_v[25] = new Array();
subfunc_s[25][0] = '(全部)化工类';
subfunc_v[25][0] = '5500';
subfunc_s[25][1] = '化工技术应用';
subfunc_v[25][1] = '5501';
subfunc_s[25][2] = '化工实验室研究员/技术员';
subfunc_v[25][2] = '5502';
subfunc_s[25][3] = '涂料研发工程师';
subfunc_v[25][3] = '5503';
subfunc_s[25][4] = '配色技术员';
subfunc_v[25][4] = '5504';
subfunc_s[25][5] = '塑料工程师';
subfunc_v[25][5] = '5505';
subfunc_s[25][6] = '化妆品研发';
subfunc_v[25][6] = '5506';
subfunc_s[25][7] = '食品/饮料研发';
subfunc_v[25][7] = '5507';
subfunc_s[25][8] = '其他';
subfunc_v[25][8] = '5508';
func_s[26] = '医院/医疗/护理';
func_v[26] = '1300';
subfunc_s[26] = new Array();
subfunc_v[26] = new Array();
subfunc_s[26][0] = '(全部)医院/医疗/护理类';
subfunc_v[26][0] = '1300';
subfunc_s[26][1] = '医院管理人员';
subfunc_v[26][1] = '1302';
subfunc_s[26][2] = '内科医生';
subfunc_v[26][2] = '1301';
subfunc_s[26][3] = '外科医生';
subfunc_v[26][3] = '1317';
subfunc_s[26][4] = '专科医生';
subfunc_v[26][4] = '1318';
subfunc_s[26][5] = '牙科医生';
subfunc_v[26][5] = '1319';
subfunc_s[26][6] = '麻醉医生';
subfunc_v[26][6] = '1308';
subfunc_s[26][7] = '美容整形师';
subfunc_v[26][7] = '1320';
subfunc_s[26][8] = '理疗师';
subfunc_v[26][8] = '1321';
subfunc_s[26][9] = '中医科医生';
subfunc_v[26][9] = '1322';
subfunc_s[26][10] = '针灸、推拿';
subfunc_v[26][10] = '1313';
subfunc_s[26][11] = '心理医生';
subfunc_v[26][11] = '1309';
subfunc_s[26][12] = '营养师';
subfunc_v[26][12] = '1314';
subfunc_s[26][13] = '药库主任/药剂师';
subfunc_v[26][13] = '1304';
subfunc_s[26][14] = '医药学检验';
subfunc_v[26][14] = '1310';
subfunc_s[26][15] = '公共卫生/疾病控制';
subfunc_v[26][15] = '1323';
subfunc_s[26][16] = '护理主任/护士长';
subfunc_v[26][16] = '1324';
subfunc_s[26][17] = '护士/护理人员';
subfunc_v[26][17] = '1305';
subfunc_s[26][18] = '兽医';
subfunc_v[26][18] = '1315';
subfunc_s[26][19] = '其他';
subfunc_v[26][19] = '1311';
func_s[27] = '广告';
func_v[27] = '4200';
subfunc_s[27] = new Array();
subfunc_v[27] = new Array();
subfunc_s[27][0] = '(全部)广告类';
subfunc_v[27][0] = '4200';
subfunc_s[27][1] = '广告客户总监/副总监';
subfunc_v[27][1] = '4201';
subfunc_s[27][2] = '广告客户经理';
subfunc_v[27][2] = '4202';
subfunc_s[27][3] = '广告客户主管/专员';
subfunc_v[27][3] = '4203';
subfunc_s[27][4] = '广告创意/设计经理';
subfunc_v[27][4] = '4204';
subfunc_s[27][5] = '广告创意总监';
subfunc_v[27][5] = '4205';
subfunc_s[27][6] = '广告创意/设计主管/专员';
subfunc_v[27][6] = '4206';
subfunc_s[27][7] = '美术指导';
subfunc_v[27][7] = '4211';
subfunc_s[27][8] = '文案/策划';
subfunc_v[27][8] = '4207';
subfunc_s[27][9] = '企业/业务发展经理';
subfunc_v[27][9] = '4208';
subfunc_s[27][10] = '企业策划人员';
subfunc_v[27][10] = '4209';
subfunc_s[27][11] = '其他';
subfunc_v[27][11] = '4210';
func_s[28] = '公关/媒介';
func_v[28] = '4300';
subfunc_s[28] = new Array();
subfunc_v[28] = new Array();
subfunc_s[28][0] = '(全部)公关/媒介类';
subfunc_v[28][0] = '4300';
subfunc_s[28][1] = '公关经理';
subfunc_v[28][1] = '4301';
subfunc_s[28][2] = '公关主管';
subfunc_v[28][2] = '4302';
subfunc_s[28][3] = '公关专员';
subfunc_v[28][3] = '4303';
subfunc_s[28][4] = '会务经理';
subfunc_v[28][4] = '4304';
subfunc_s[28][5] = '会务主管';
subfunc_v[28][5] = '4305';
subfunc_s[28][6] = '会务专员';
subfunc_v[28][6] = '4306';
subfunc_s[28][7] = '媒介经理';
subfunc_v[28][7] = '4307';
subfunc_s[28][8] = '媒介主管';
subfunc_v[28][8] = '4308';
subfunc_s[28][9] = '媒介专员';
subfunc_v[28][9] = '4309';
subfunc_s[28][10] = '公关/媒介助理';
subfunc_v[28][10] = '4310';
subfunc_s[28][11] = '其他';
subfunc_v[28][11] = '4311';
func_s[29] = '市场/营销';
func_v[29] = '0300';
subfunc_s[29] = new Array();
subfunc_v[29] = new Array();
subfunc_s[29][0] = '(全部)市场/营销类';
subfunc_v[29][0] = '0300';
subfunc_s[29][1] = '市场/营销/拓展总监';
subfunc_v[29][1] = '0301';
subfunc_s[29][2] = '市场/营销/拓展经理';
subfunc_v[29][2] = '0302';
subfunc_s[29][3] = '市场/营销/拓展主管';
subfunc_v[29][3] = '0303';
subfunc_s[29][4] = '市场/营销/拓展专员';
subfunc_v[29][4] = '0304';
subfunc_s[29][5] = '市场助理';
subfunc_v[29][5] = '0305';
subfunc_s[29][6] = '市场分析/调研人员';
subfunc_v[29][6] = '0324';
subfunc_s[29][7] = '产品/品牌经理';
subfunc_v[29][7] = '0306';
subfunc_s[29][8] = '产品/品牌主管';
subfunc_v[29][8] = '0307';
subfunc_s[29][9] = '产品/品牌专员';
subfunc_v[29][9] = '0330';
subfunc_s[29][10] = '市场通路经理/主管';
subfunc_v[29][10] = '0308';
subfunc_s[29][11] = '市场通路专员';
subfunc_v[29][11] = '0335';
subfunc_s[29][12] = '市场企划经理/主管';
subfunc_v[29][12] = '0336';
subfunc_s[29][13] = '市场企划专员';
subfunc_v[29][13] = '0337';
subfunc_s[29][14] = '促销经理';
subfunc_v[29][14] = '0310';
subfunc_s[29][15] = '促销主管/督导';
subfunc_v[29][15] = '0311';
subfunc_s[29][16] = '促销员/导购';
subfunc_v[29][16] = '0312';
subfunc_s[29][17] = '选址拓展';
subfunc_v[29][17] = '0338';
subfunc_s[29][18] = '其他';
subfunc_v[29][18] = '0329';
func_s[30] = '影视/媒体';
func_v[30] = '4400';
subfunc_s[30] = new Array();
subfunc_v[30] = new Array();
subfunc_s[30][0] = '(全部)影视/媒体类';
subfunc_v[30][0] = '4400';
subfunc_s[30][1] = '影视策划/制作人员';
subfunc_v[30][1] = '4401';
subfunc_s[30][2] = '导演/编导';
subfunc_v[30][2] = '4402';
subfunc_s[30][3] = '艺术/设计总监';
subfunc_v[30][3] = '4403';
subfunc_s[30][4] = '经纪人/星探';
subfunc_v[30][4] = '4404';
subfunc_s[30][5] = '演员/模特/主持人';
subfunc_v[30][5] = '4405';
subfunc_s[30][6] = '摄影师';
subfunc_v[30][6] = '4406';
subfunc_s[30][7] = '音效师';
subfunc_v[30][7] = '4407';
subfunc_s[30][8] = '配音员';
subfunc_v[30][8] = '4408';
subfunc_s[30][9] = '化妆师/造型师';
subfunc_v[30][9] = '4409';
subfunc_s[30][10] = '其他';
subfunc_v[30][10] = '4410';
func_s[31] = '写作/出版/印刷';
func_v[31] = '4500';
subfunc_s[31] = new Array();
subfunc_v[31] = new Array();
subfunc_s[31][0] = '(全部)写作/出版/印刷类';
subfunc_v[31][0] = '4500';
subfunc_s[31][1] = '总编/副总编';
subfunc_v[31][1] = '4501';
subfunc_s[31][2] = '编辑/作家/撰稿人';
subfunc_v[31][2] = '4502';
subfunc_s[31][3] = '记者';
subfunc_v[31][3] = '4503';
subfunc_s[31][4] = '美术编辑';
subfunc_v[31][4] = '4504';
subfunc_s[31][5] = '排版设计';
subfunc_v[31][5] = '4505';
subfunc_s[31][6] = '校对/录入';
subfunc_v[31][6] = '4506';
subfunc_s[31][7] = '出版/发行';
subfunc_v[31][7] = '4507';
subfunc_s[31][8] = '电分操作员';
subfunc_v[31][8] = '4509';
subfunc_s[31][9] = '印刷排版/制版';
subfunc_v[31][9] = '4510';
subfunc_s[31][10] = '数码直印/菲林输出';
subfunc_v[31][10] = '4511';
subfunc_s[31][11] = '打稿机操作员';
subfunc_v[31][11] = '4512';
subfunc_s[31][12] = '调墨技师';
subfunc_v[31][12] = '4513';
subfunc_s[31][13] = '印刷机械机长';
subfunc_v[31][13] = '4514';
subfunc_s[31][14] = '晒版/拼版/装订/烫金技工';
subfunc_v[31][14] = '4515';
subfunc_s[31][15] = '其他';
subfunc_v[31][15] = '4508';
func_s[32] = '艺术/设计';
func_v[32] = '0900';
subfunc_s[32] = new Array();
subfunc_v[32] = new Array();
subfunc_s[32][0] = '(全部)艺术/设计类';
subfunc_v[32][0] = '0900';
subfunc_s[32][1] = '平面设计';
subfunc_v[32][1] = '0904';
subfunc_s[32][2] = '动画/3D设计';
subfunc_v[32][2] = '0924';
subfunc_s[32][3] = '店面/陈列/展览设计';
subfunc_v[32][3] = '0925';
subfunc_s[32][4] = '多媒体设计';
subfunc_v[32][4] = '0926';
subfunc_s[32][5] = '包装设计';
subfunc_v[32][5] = '0927';
subfunc_s[32][6] = '工业/产品设计';
subfunc_v[32][6] = '0919';
subfunc_s[32][7] = '工艺品/珠宝设计鉴定';
subfunc_v[32][7] = '0920';
subfunc_s[32][8] = '家具/家居用品设计';
subfunc_v[32][8] = '0928';
subfunc_s[32][9] = '玩具设计';
subfunc_v[32][9] = '0929';
subfunc_s[32][10] = '其他';
subfunc_v[32][10] = '0921';
func_s[33] = '建筑工程';
func_v[33] = '2100';
subfunc_s[33] = new Array();
subfunc_v[33] = new Array();
subfunc_s[33][0] = '(全部)建筑工程类';
subfunc_v[33][0] = '2100';
subfunc_s[33][1] = '建筑工程师';
subfunc_v[33][1] = '2101';
subfunc_s[33][2] = '结构/土木/土建工程师';
subfunc_v[33][2] = '2102';
subfunc_s[33][3] = '公路/桥梁/港口/隧道工程';
subfunc_v[33][3] = '2118';
subfunc_s[33][4] = '岩土工程';
subfunc_v[33][4] = '2119';
subfunc_s[33][5] = '电气工程';
subfunc_v[33][5] = '2103';
subfunc_s[33][6] = '给排水/暖通工程';
subfunc_v[33][6] = '2104';
subfunc_s[33][7] = '幕墙工程师';
subfunc_v[33][7] = '2122';
subfunc_s[33][8] = '城市规划与设计';
subfunc_v[33][8] = '2109';
subfunc_s[33][9] = '室内外装潢设计';
subfunc_v[33][9] = '2108';
subfunc_s[33][10] = '园艺/园林/景观设计';
subfunc_v[33][10] = '2117';
subfunc_s[33][11] = '测绘/测量';
subfunc_v[33][11] = '2120';
subfunc_s[33][12] = '建筑制图';
subfunc_v[33][12] = '2110';
subfunc_s[33][13] = '工程造价师/预结算';
subfunc_v[33][13] = '2105';
subfunc_s[33][14] = '建筑工程管理/项目经理';
subfunc_v[33][14] = '2106';
subfunc_s[33][15] = '建筑工程验收';
subfunc_v[33][15] = '2121';
subfunc_s[33][16] = '工程监理';
subfunc_v[33][16] = '2107';
subfunc_s[33][17] = '施工员';
subfunc_v[33][17] = '2111';
subfunc_s[33][18] = '其他';
subfunc_v[33][18] = '2116';
func_s[34] = '房地产';
func_v[34] = '4600';
subfunc_s[34] = new Array();
subfunc_v[34] = new Array();
subfunc_s[34][0] = '(全部)房地产类';
subfunc_v[34][0] = '4600';
subfunc_s[34][1] = '房地产开发/策划经理';
subfunc_v[34][1] = '4601';
subfunc_s[34][2] = '房地产开发/策划主管/专员';
subfunc_v[34][2] = '4602';
subfunc_s[34][3] = '房产项目配套工程师';
subfunc_v[34][3] = '4603';
subfunc_s[34][4] = '房地产项目招标专员';
subfunc_v[34][4] = '4608';
subfunc_s[34][5] = '房地产评估';
subfunc_v[34][5] = '4604';
subfunc_s[34][6] = '房地产中介/交易';
subfunc_v[34][6] = '4605';
subfunc_s[34][7] = '房地产销售人员';
subfunc_v[34][7] = '4606';
subfunc_s[34][8] = '其他';
subfunc_v[34][8] = '4607';
func_s[35] = '物业管理';
func_v[35] = '4700';
subfunc_s[35] = new Array();
subfunc_v[35] = new Array();
subfunc_s[35][0] = '(全部)物业管理类';
subfunc_v[35][0] = '4700';
subfunc_s[35][1] = '高级物业顾问/物业顾问';
subfunc_v[35][1] = '4701';
subfunc_s[35][2] = '物业管理经理/主管';
subfunc_v[35][2] = '4702';
subfunc_s[35][3] = '物业管理专员/助理';
subfunc_v[35][3] = '4703';
subfunc_s[35][4] = '物业招商/租赁/租售';
subfunc_v[35][4] = '4704';
subfunc_s[35][5] = '物业设施管理人员';
subfunc_v[35][5] = '4705';
subfunc_s[35][6] = '物业维修人员';
subfunc_v[35][6] = '4706';
subfunc_s[35][7] = '其他';
subfunc_v[35][7] = '4707';
func_s[36] = '人力资源';
func_v[36] = '0600';
subfunc_s[36] = new Array();
subfunc_v[36] = new Array();
subfunc_s[36][0] = '(全部)人力资源类';
subfunc_v[36][0] = '0600';
subfunc_s[36][1] = '人事总监';
subfunc_v[36][1] = '0601';
subfunc_s[36][2] = '人事经理';
subfunc_v[36][2] = '0602';
subfunc_s[36][3] = '人事主管';
subfunc_v[36][3] = '0603';
subfunc_s[36][4] = '人事专员';
subfunc_v[36][4] = '0604';
subfunc_s[36][5] = '人事助理';
subfunc_v[36][5] = '0605';
subfunc_s[36][6] = '招聘经理/主管';
subfunc_v[36][6] = '0606';
subfunc_s[36][7] = '招聘专员/助理';
subfunc_v[36][7] = '0626';
subfunc_s[36][8] = '薪资福利经理/主管';
subfunc_v[36][8] = '0607';
subfunc_s[36][9] = '薪资福利专员/助理';
subfunc_v[36][9] = '0608';
subfunc_s[36][10] = '绩效考核经理/主管';
subfunc_v[36][10] = '0627';
subfunc_s[36][11] = '绩效考核专员/助理';
subfunc_v[36][11] = '0628';
subfunc_s[36][12] = '培训经理/主管';
subfunc_v[36][12] = '0609';
subfunc_s[36][13] = '培训专员/助理/培训师';
subfunc_v[36][13] = '0610';
subfunc_s[36][14] = '企业文化/员工关系';
subfunc_v[36][14] = '0629';
subfunc_s[36][15] = '其他';
subfunc_v[36][15] = '0625';
func_s[37] = '高级管理';
func_v[37] = '0700';
subfunc_s[37] = new Array();
subfunc_v[37] = new Array();
subfunc_s[37][0] = '(全部)高级管理类';
subfunc_v[37][0] = '0700';
subfunc_s[37][1] = '首席执行官CEO/总裁/总经理';
subfunc_v[37][1] = '0701';
subfunc_s[37][2] = '首席运营官COO';
subfunc_v[37][2] = '0707';
subfunc_s[37][3] = '副总经理/副总裁';
subfunc_v[37][3] = '0702';
subfunc_s[37][4] = '合伙人';
subfunc_v[37][4] = '0704';
subfunc_s[37][5] = '总监';
subfunc_v[37][5] = '0705';
subfunc_s[37][6] = '办事处首席代表';
subfunc_v[37][6] = '0708';
subfunc_s[37][7] = '办事处/分公司/分支机构经理';
subfunc_v[37][7] = '0709';
subfunc_s[37][8] = '总裁助理/总经理助理';
subfunc_v[37][8] = '0703';
subfunc_s[37][9] = '其他';
subfunc_v[37][9] = '0706';
func_s[38] = '行政/后勤';
func_v[38] = '2300';
subfunc_s[38] = new Array();
subfunc_v[38] = new Array();
subfunc_s[38][0] = '(全部)行政/后勤类';
subfunc_v[38][0] = '2300';
subfunc_s[38][1] = '行政总监';
subfunc_v[38][1] = '2301';
subfunc_s[38][2] = '行政经理/主管/办公室主任';
subfunc_v[38][2] = '2302';
subfunc_s[38][3] = '行政专员/助理';
subfunc_v[38][3] = '2303';
subfunc_s[38][4] = '经理助理/秘书';
subfunc_v[38][4] = '2304';
subfunc_s[38][5] = '前台接待/总机/接待生';
subfunc_v[38][5] = '2305';
subfunc_s[38][6] = '后勤';
subfunc_v[38][6] = '2306';
subfunc_s[38][7] = '图书管理员/资料管理员';
subfunc_v[38][7] = '2307';
subfunc_s[38][8] = '电脑操作员/打字员';
subfunc_v[38][8] = '2308';
subfunc_s[38][9] = '其他';
subfunc_v[38][9] = '2309';
func_s[39] = '咨询/顾问';
func_v[39] = '1400';
subfunc_s[39] = new Array();
subfunc_v[39] = new Array();
subfunc_s[39][0] = '(全部)咨询/顾问类';
subfunc_v[39][0] = '1400';
subfunc_s[39][1] = '专业顾问';
subfunc_v[39][1] = '1401';
subfunc_s[39][2] = '咨询总监';
subfunc_v[39][2] = '1402';
subfunc_s[39][3] = '咨询经理';
subfunc_v[39][3] = '1403';
subfunc_s[39][4] = '专业培训师';
subfunc_v[39][4] = '1406';
subfunc_s[39][5] = '咨询员';
subfunc_v[39][5] = '1404';
subfunc_s[39][6] = '猎头/人才中介';
subfunc_v[39][6] = '1408';
subfunc_s[39][7] = '情报信息分析人员';
subfunc_v[39][7] = '1407';
subfunc_s[39][8] = '其他';
subfunc_v[39][8] = '1405';
func_s[40] = '律师/法务';
func_v[40] = '1100';
subfunc_s[40] = new Array();
subfunc_v[40] = new Array();
subfunc_s[40][0] = '(全部)律师/法务类';
subfunc_v[40][0] = '1100';
subfunc_s[40][1] = '律师/法律顾问';
subfunc_v[40][1] = '1101';
subfunc_s[40][2] = '律师助理';
subfunc_v[40][2] = '1103';
subfunc_s[40][3] = '法务经理';
subfunc_v[40][3] = '1106';
subfunc_s[40][4] = '法务主管/专员';
subfunc_v[40][4] = '1102';
subfunc_s[40][5] = '法务助理';
subfunc_v[40][5] = '1107';
subfunc_s[40][6] = '知识产权/专利顾问/专员';
subfunc_v[40][6] = '1108';
subfunc_s[40][7] = '其他';
subfunc_v[40][7] = '1105';
func_s[41] = '教师';
func_v[41] = '1200';
subfunc_s[41] = new Array();
subfunc_v[41] = new Array();
subfunc_s[41][0] = '(全部)教师类';
subfunc_v[41][0] = '1200';
subfunc_s[41][1] = '大学教授';
subfunc_v[41][1] = '1208';
subfunc_s[41][2] = '讲师/助教';
subfunc_v[41][2] = '1204';
subfunc_s[41][3] = '中学教师';
subfunc_v[41][3] = '1201';
subfunc_s[41][4] = '小学教师';
subfunc_v[41][4] = '1209';
subfunc_s[41][5] = '幼教';
subfunc_v[41][5] = '1207';
subfunc_s[41][6] = '院校教务管理人员';
subfunc_v[41][6] = '1202';
subfunc_s[41][7] = '兼职教师';
subfunc_v[41][7] = '1210';
subfunc_s[41][8] = '家教';
subfunc_v[41][8] = '1205';
subfunc_s[41][9] = '其他';
subfunc_v[41][9] = '1206';
func_s[42] = '科研人员';
func_v[42] = '1000';
subfunc_s[42] = new Array();
subfunc_v[42] = new Array();
subfunc_s[42][0] = '(全部)科研人员类';
subfunc_v[42][0] = '1000';
subfunc_s[42][1] = '科研管理人员';
subfunc_v[42][1] = '1002';
subfunc_s[42][2] = '科研人员';
subfunc_v[42][2] = '1001';
func_s[43] = '餐饮/娱乐';
func_v[43] = '4800';
subfunc_s[43] = new Array();
subfunc_v[43] = new Array();
subfunc_s[43][0] = '(全部)餐饮/娱乐类';
subfunc_v[43][0] = '4800';
subfunc_s[43][1] = '餐饮/娱乐管理';
subfunc_v[43][1] = '4801';
subfunc_s[43][2] = '餐饮/娱乐领班';
subfunc_v[43][2] = '4802';
subfunc_s[43][3] = '餐饮/娱乐服务员';
subfunc_v[43][3] = '4803';
subfunc_s[43][4] = '礼仪/迎宾';
subfunc_v[43][4] = '4804';
subfunc_s[43][5] = '司仪';
subfunc_v[43][5] = '4805';
subfunc_s[43][6] = '行政主厨/厨师长';
subfunc_v[43][6] = '4806';
subfunc_s[43][7] = '厨师/面点师';
subfunc_v[43][7] = '4807';
subfunc_s[43][8] = '调酒师';
subfunc_v[43][8] = '4808';
subfunc_s[43][9] = '茶艺师';
subfunc_v[43][9] = '4809';
subfunc_s[43][10] = '其他';
subfunc_v[43][10] = '4810';
func_s[44] = '酒店/旅游';
func_v[44] = '4900';
subfunc_s[44] = new Array();
subfunc_v[44] = new Array();
subfunc_s[44][0] = '(全部)酒店/旅游类';
subfunc_v[44][0] = '4900';
subfunc_s[44][1] = '酒店/宾馆经理';
subfunc_v[44][1] = '4901';
subfunc_s[44][2] = '酒店/宾馆营销';
subfunc_v[44][2] = '4902';
subfunc_s[44][3] = '宴会管理';
subfunc_v[44][3] = '4912';
subfunc_s[44][4] = '大堂经理';
subfunc_v[44][4] = '4903';
subfunc_s[44][5] = '楼面经理';
subfunc_v[44][5] = '4904';
subfunc_s[44][6] = '前厅接待';
subfunc_v[44][6] = '4905';
subfunc_s[44][7] = '客房服务员/楼面服务员';
subfunc_v[44][7] = '4906';
subfunc_s[44][8] = '行李员';
subfunc_v[44][8] = '4907';
subfunc_s[44][9] = '清洁服务人员';
subfunc_v[44][9] = '4908';
subfunc_s[44][10] = '导游/旅行顾问';
subfunc_v[44][10] = '4909';
subfunc_s[44][11] = '订票/订房服务';
subfunc_v[44][11] = '4910';
subfunc_s[44][12] = '其他';
subfunc_v[44][12] = '4911';
func_s[45] = '美容/健身';
func_v[45] = '5000';
subfunc_s[45] = new Array();
subfunc_v[45] = new Array();
subfunc_s[45][0] = '(全部)美容/健身类';
subfunc_v[45][0] = '5000';
subfunc_s[45][1] = '美容顾问/化妆';
subfunc_v[45][1] = '5001';
subfunc_s[45][2] = '美容助理/见席美容师';
subfunc_v[45][2] = '5002';
subfunc_s[45][3] = '瘦身顾问';
subfunc_v[45][3] = '5003';
subfunc_s[45][4] = '发型师';
subfunc_v[45][4] = '5004';
subfunc_s[45][5] = '发型助理/学徒';
subfunc_v[45][5] = '5005';
subfunc_s[45][6] = '美甲师';
subfunc_v[45][6] = '5006';
subfunc_s[45][7] = '按摩/足疗';
subfunc_v[45][7] = '5007';
subfunc_s[45][8] = '健身顾问/教练';
subfunc_v[45][8] = '5008';
subfunc_s[45][9] = '瑜伽/舞蹈老师';
subfunc_v[45][9] = '5009';
subfunc_s[45][10] = '宠物护理/美容';
subfunc_v[45][10] = '5010';
subfunc_s[45][11] = '其他';
subfunc_v[45][11] = '5011';
func_s[46] = '百货/连锁/零售服务';
func_v[46] = '5100';
subfunc_s[46] = new Array();
subfunc_v[46] = new Array();
subfunc_s[46][0] = '(全部)百货/连锁/零售服务类';
subfunc_v[46][0] = '5100';
subfunc_s[46][1] = '店长/卖场经理/楼面管理';
subfunc_v[46][1] = '5101';
subfunc_s[46][2] = '店员/营业员';
subfunc_v[46][2] = '5102';
subfunc_s[46][3] = '防损员/内保';
subfunc_v[46][3] = '5108';
subfunc_s[46][4] = '收银员';
subfunc_v[46][4] = '5103';
subfunc_s[46][5] = '理货员/陈列员';
subfunc_v[46][5] = '5104';
subfunc_s[46][6] = '导购员';
subfunc_v[46][6] = '5105';
subfunc_s[46][7] = '面包糕点加工';
subfunc_v[46][7] = '5109';
subfunc_s[46][8] = '生鲜食品加工';
subfunc_v[46][8] = '5110';
subfunc_s[46][9] = '熟食加工';
subfunc_v[46][9] = '5111';
subfunc_s[46][10] = '兼职店员';
subfunc_v[46][10] = '5106';
subfunc_s[46][11] = '其他';
subfunc_v[46][11] = '5107';
func_s[47] = '交通运输服务';
func_v[47] = '1800';
subfunc_s[47] = new Array();
subfunc_v[47] = new Array();
subfunc_s[47][0] = '(全部)交通运输服务类';
subfunc_v[47][0] = '1800';
subfunc_s[47][1] = '飞机机长/副机长';
subfunc_v[47][1] = '1822';
subfunc_s[47][2] = '空乘人员';
subfunc_v[47][2] = '1823';
subfunc_s[47][3] = '地勤人员';
subfunc_v[47][3] = '1824';
subfunc_s[47][4] = '列车车长';
subfunc_v[47][4] = '1825';
subfunc_s[47][5] = '列车司机';
subfunc_v[47][5] = '1826';
subfunc_s[47][6] = '乘务员';
subfunc_v[47][6] = '1801';
subfunc_s[47][7] = '船长/副船长';
subfunc_v[47][7] = '1827';
subfunc_s[47][8] = '船员';
subfunc_v[47][8] = '1828';
subfunc_s[47][9] = '司机';
subfunc_v[47][9] = '1810';
subfunc_s[47][10] = '其他';
subfunc_v[47][10] = '1829';
func_s[48] = '保安/家政/其他服务';
func_v[48] = '5200';
subfunc_s[48] = new Array();
subfunc_v[48] = new Array();
subfunc_s[48][0] = '(全部)保安/家政/其他服务类';
subfunc_v[48][0] = '5200';
subfunc_s[48][1] = '保安人员';
subfunc_v[48][1] = '5201';
subfunc_s[48][2] = '保镖';
subfunc_v[48][2] = '5202';
subfunc_s[48][3] = '寻呼员/话务员';
subfunc_v[48][3] = '5203';
subfunc_s[48][4] = '搬运工';
subfunc_v[48][4] = '5204';
subfunc_s[48][5] = '清洁工';
subfunc_v[48][5] = '5205';
subfunc_s[48][6] = '家政服务/保姆';
subfunc_v[48][6] = '5206';
subfunc_s[48][7] = '其他';
subfunc_v[48][7] = '5207';
func_s[49] = '公务员';
func_v[49] = '1500';
subfunc_s[49] = new Array();
subfunc_v[49] = new Array();
subfunc_s[49][0] = '(全部)公务员类';
subfunc_v[49][0] = '1500';
subfunc_s[49][1] = '公务员';
subfunc_v[49][1] = '1501';
func_s[50] = '翻译';
func_v[50] = '2000';
subfunc_s[50] = new Array();
subfunc_v[50] = new Array();
subfunc_s[50][0] = '(全部)翻译类';
subfunc_v[50][0] = '2000';
subfunc_s[50][1] = '英语翻译';
subfunc_v[50][1] = '2001';
subfunc_s[50][2] = '日语翻译';
subfunc_v[50][2] = '2002';
subfunc_s[50][3] = '德语翻译';
subfunc_v[50][3] = '2003';
subfunc_s[50][4] = '法语翻译';
subfunc_v[50][4] = '2004';
subfunc_s[50][5] = '俄语翻译';
subfunc_v[50][5] = '2005';
subfunc_s[50][6] = '意大利语翻译';
subfunc_v[50][6] = '2010';
subfunc_s[50][7] = '西班牙语翻译';
subfunc_v[50][7] = '2006';
subfunc_s[50][8] = '葡萄牙语翻译';
subfunc_v[50][8] = '2011';
subfunc_s[50][9] = '阿拉伯语翻译';
subfunc_v[50][9] = '2009';
subfunc_s[50][10] = '韩语/朝鲜语翻译';
subfunc_v[50][10] = '2007';
subfunc_s[50][11] = '泰语翻译';
subfunc_v[50][11] = '2012';
subfunc_s[50][12] = '中国方言翻译';
subfunc_v[50][12] = '2013';
subfunc_s[50][13] = '其他语种翻译';
subfunc_v[50][13] = '2008';
func_s[51] = '在校学生';
func_v[51] = '1600';
subfunc_s[51] = new Array();
subfunc_v[51] = new Array();
subfunc_s[51][0] = '(全部)在校学生类';
subfunc_v[51][0] = '1600';
subfunc_s[51][1] = '研究生';
subfunc_v[51][1] = '1605';
subfunc_s[51][2] = '大学/大专应届毕业生';
subfunc_v[51][2] = '1602';
subfunc_s[51][3] = '中专/职校生';
subfunc_v[51][3] = '1601';
subfunc_s[51][4] = '其他';
subfunc_v[51][4] = '1604';
func_s[52] = '储备干部/培训生/实习生';
func_v[52] = '1700';
subfunc_s[52] = new Array();
subfunc_v[52] = new Array();
subfunc_s[52][0] = '(全部)储备干部/培训生/实习生类';
subfunc_v[52][0] = '1700';
subfunc_s[52][1] = '储备干部';
subfunc_v[52][1] = '1702';
subfunc_s[52][2] = '培训生';
subfunc_v[52][2] = '1701';
subfunc_s[52][3] = '实习生';
subfunc_v[52][3] = '1703';
func_s[53] = '兼职';
func_v[53] = '5300';
subfunc_s[53] = new Array();
subfunc_v[53] = new Array();
subfunc_s[53][0] = '(全部)兼职类';
subfunc_v[53][0] = '5300';
subfunc_s[53][1] = '兼职';
subfunc_v[53][1] = '5301';
func_s[54] = '其他';
func_v[54] = '1900';
subfunc_s[54] = new Array();
subfunc_v[54] = new Array();
subfunc_s[54][0] = '(全部)其他类';
subfunc_v[54][0] = '1900';
subfunc_s[54][1] = '其他';
subfunc_v[54][1] = '1901';

//add by liyao 2007-8-24
//新增的对大类进行分类,根据产品部的设计稿人为增加的,其中的值分别是新增大类分类名字
//及其最后一项在数组$d_funtype中的大类序号即第几项
funtypeTop=new Array(
Array('',0),
Array('计算机/互联网/通信/电子',7),
Array('销售/客服/技术支持',		11),
Array('会计/金融/银行/保险',	15),
Array('生产/营运/采购/物流',	24),
Array('生物/制药/医疗/护理',	27),
Array('广告/市场/媒体/艺术',	33),
Array('建筑/房地产',			36),
Array('人事/行政/高级管理',		39),
Array('咨询/法律/教育/科研',	43),
Array('服务业',					49),
Array('公务员/翻译/其他',		55)
);

var indIndex=[];
indIndex['01']=0;
indIndex['37']=1;
indIndex['38']=2;
indIndex['31']=3;
indIndex['39']=4;
indIndex['32']=5;
indIndex['40']=6;
indIndex['02']=7;
indIndex['35']=8;
indIndex['41']=9;
indIndex['03']=10;
indIndex['42']=11;
indIndex['43']=12;
indIndex['04']=13;
indIndex['22']=14;
indIndex['05']=15;
indIndex['06']=16;
indIndex['44']=17;
indIndex['45']=18;
indIndex['14']=19;
indIndex['33']=20;
indIndex['08']=21;
indIndex['46']=22;
indIndex['47']=23;
indIndex['12']=24;
indIndex['48']=25;
indIndex['49']=26;
indIndex['13']=27;
indIndex['15']=28;
indIndex['26']=29;
indIndex['09']=30;
indIndex['50']=31;
indIndex['51']=32;
indIndex['34']=33;
indIndex['07']=34;
indIndex['52']=35;
indIndex['18']=36;
indIndex['23']=37;
indIndex['24']=38;
indIndex['11']=39;
indIndex['53']=40;
indIndex['17']=41;
indIndex['54']=42;
indIndex['27']=43;
indIndex['21']=44;
indIndex['55']=45;
indIndex['19']=46;
indIndex['16']=47;
indIndex['36']=48;
indIndex['56']=49;
indIndex['28']=50;
indIndex['57']=51;
indIndex['20']=52;
indIndex['29']=53;
indIndex['58']=54;
indIndex['30']=55;
var indWdArr = 'E' == lang ?  [245,256,234,890,735,155] : [180,211,260,797,651,146];
function initIndustrytype(  layerId ) {
	if ( 'E' == lang ) {
		var psind = 'Please Select Industry';
		var closeword = 'Close';
		var nolimit = 'No Limit';
		var clearword = 'Clear';
		var confirmword = 'Confirm';
		var selind = 'Selected Industry';
		var nomorethan = 'No more than ' + pLayer[layerId]['eleMaxNum'] + ' options';
	}
	else {
		var psind = '请选择行业类别';
		var closeword = '关闭';
		var nolimit = '不限';
		var clearword = '清空';
		var confirmword = '确认';
		var selind = '已选行业';
		var nomorethan = '您最多能选择' + pLayer[layerId]['eleMaxNum'] + '项';
	}
	var curNo=0;
	var curCount=0;
	var bgcolorArr=new Array('#F6F6F6','#ffffff');

	var str = '';
	str +='<table class="fun" width="' + indWdArr[3] + '">';

	//nav
	str +='<tr>';
	str +='<td height="36" valign="top" background="'+IMGPATH+'/images/title_bg.gif"  top="top" left="left">';
	str +='<table width="100%" height="28" border="0" cellpadding="0" cellspacing="0">';
	str +='<tr>';
	str +='<td align="left" valign="middle"  style="color:#fff;">&nbsp;&nbsp;<img src="'+IMGPATH+'/images/01.gif" valign="absmiddle"/>&nbsp;' + psind + '&nbsp;( ' + nomorethan + ' )</td>';
	//str +='<td align="right" valign="middle" style="color:#FFFFFF;"><span style="cursor:pointer;" onclick="javascript:initLayer( \'' + layerId + '\' , \'\' );">[' + clearword + ']</span>&nbsp;&nbsp;<span style="cursor:pointer;" onclick="javascript:confirmLayer( \'' + layerId + '\' );" title="' + quickConfirmWord + '">[' + confirmword + ']</span>&nbsp;&nbsp;<span style="cursor:pointer;" onclick="javascript:closeLayer(\'' + layerId + '\');" title="' + quickCloseWord + '">[' + closeword + ']</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>';
	str +='<td align="right" valign="middle" style="color:#FFFFFF;"><span style="cursor:pointer;" onclick="javascript:confirmLayer( \'' + layerId + '\' );" title="' + quickConfirmWord + '">[' + confirmword + ']</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>';
	str +='</tr>';
	str +='</table>';
	str +='</td>';
	str +='</tr>';
	//nav end
	
	str +='<tr><td align="center" valign="top"><table class="tbl" valign="top">';

	//已选结果部分 start
	str +='<tr height="20"><td class="topN" width="' + indWdArr[5] + '" style="padding-left:3px;padding-right:10px;">' + selind + '：</td><td id="sitb">';
	str +='<table class="tbl56" width="' + indWdArr[4] + '" valign="middle"><tbody><tr><td colspan="3" class="content_div"></td></tr></tbody></table>';
	str +='</td></tr>';
	//已选结果部分 end

	str +='<tr><td height="5" colspan="2"></td></tr>';
	//虚线
	str +='<tr><td height="5" colspan="2" background="' + IMGPATH + '/images/bgclear_bot.gif"></td></tr>';

	var allChxIdPrefix = pLayer[layerId]['allChxIdPrefix'];
	var allSpnIdPrefix = pLayer[layerId]['allSpnIdPrefix'];
	var numArr = document.page_form.statData ? document.page_form.statData.value.split('|') : [];
	var len=ind_v.length;
	for ( var i=0;i < len ;i++ ) {
		if ( i >= indtypeTop[curNo][1] ) {
			curNo++;
			str+= '<tr bgcolor="'+bgcolorArr[(curNo-1)%2]+'"><td class="topN" style="padding-left:3px;padding-right:10px;" width="' + indWdArr[5] + '">'+indtypeTop[curNo][0]+'</td><td><table class="tbl56" width="' + indWdArr[4] + '">';
			curCount=0;
		}
		curCount++;
		if ( 1 == curCount%3 ){
			str+='<tr>';
		}
		var num = numArr[ind_v[i]-1+106];//统计数据
		var numstr = num > 0 ? '(' + num + ')' : '';
		str += '<td style="width:'+indWdArr[(curCount-1)%3]+'px;cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="chxOrSpnClkFunc( this.childNodes[1] );"  class="content_div"><input style="' + chxValign + '" type="checkbox" id="' + allChxIdPrefix + ind_v[i] + '" value="' + ind_v[i] + '" onclick="chxClk( this );"><span style="' + spnValign + '" id="' + allSpnIdPrefix + ind_v[i] + '">' + ind_s[i] + numstr + '</span></td>';

		if ( 0 == curCount%3 ){
			str+='</tr>';
		}
		if ( i + 1 >= indtypeTop[curNo][1] ) {
			var subn = ( 3 - ( curCount % 3 ) ) % 3;
			for ( var j = 0 ; j <  subn ; j++  ) {
				str += '<td style="width:'+indWdArr[3-subn+j]+'px;"></td>';
			}
			str += subn ? '</tr>' : '';
			str += '</table></td></tr>';
		}
	}
	str += '</table></td></tr>';
	str+='<tr><td class="td33"></td></tr></table>';

	return str;
}

//create by liyao 2008-4-25
//公司信息页面调用脚本文件
if ( 'E' == lang ) {
	var copepn = 'Please enter the page number!';
}
else {
	var copepn = '请输入您要跳转的页数!';
}
function co_jump( jpage ){
    if( '' == trim( jpage )){
        alert( copepn );
        return false;
    }
    page_obj       = document.forms.coalljob.elements.curr_page;
    if( parseInt(jpage,10) < 1 ){
        page_obj.value = 1;
    }
    else if( parseInt(jpage,10) > parseInt(document.forms.coalljob.elements.total_page.value,10) ){
        page_obj.value = document.forms.coalljob.elements.total_page.value;
    }
    else{
        page_obj.value = jpage;
    }
    document.forms.coalljob.submit();
}

function co_chg_prepage( prepage ){
    document.forms.coalljob.elements.prepage.value  = prepage;
    document.forms.coalljob.elements.curr_page.value  = 1;
    document.forms.coalljob.submit();
}

function getAreaIDs(idx){
	switch(idx){
		case '0100':
			return new Array('0100');
		case '0200':
			return new Array('0200');
		case '0300':
			return new Array('0300','0302','0400','0303','0304','0305','0306','0307','0308','0314','0315','0317','0318','0319','0320','0321','0322','0323','0324','0325');
		case '0400':
			return new Array('0400');
		case '0500':
			return new Array('0500');
		case '0600':
			return new Array('0600');
		case '0700':
			return new Array('0700','0702','0703','0704','0705','0706','0707','0708','0709','0710','0711','0712','0713','0714');
		case '0800':
			return new Array('0800','0802','0803','0804','0805','0806','0807','0808','0809','0810','0811','0812');
		case '0900':
			return new Array('0900','0902','0903','0904','0905','0906','0907','0908','0909','0910');
		case '1000':
			return new Array('1000','1002','1003');
		case '1100':
			return new Array('1100','1102','1103','1104','1105','1106','1107','1108','1109','1110');
		case '1200':
			return new Array('1200','1202','1203','1204','1205','1206','1207','1208','1209','1210','1211','1212','1213');
		case '1300':
			return new Array('1300','1302','1303');
		case '1400':
			return new Array('1400','1402','1403','1404','1405');
		case '1500':
			return new Array('1500','1502','1503','1504','1505','1506','1507','1508','1509','1510','1511','1512','1513','1514','1515');
		case '1600':
			return new Array('1600','1602','1603','1604','1605','1606');
		case '1700':
			return new Array('1700','1702','1703','1704');
		case '1800':
			return new Array('1800','1802','1803','1804','1805','1806','1807','1808','1809','1810');
		case '1900':
			return new Array('1900','1902','1903','1904','1905','1906','1907','1908','1909','1910','1911','1912','1913','1914');
		case '2000':
			return new Array('2000','2002','2003','2004','2005','2006');
		case '2100':
			return new Array('2100','2102','2103','2104','2105');
		case '2200':
			return new Array('2200','2202','2203','2204','2205','2206','2207','2208');
		case '2300':
			return new Array('2300','2302','2303','2304','2305','2306','2307','2308','2309','2310','2311','2312');
		case '2400':
			return new Array('2400','2402','2403','2404','2405');
		case '2500':
			return new Array('2500','2502','2503','2504','2505','2506','2507','2508','2509','2510');
		case '2600':
			return new Array('2600','2602','2603');
		case '2700':
			return new Array('2700','2702','2703');
		case '2800':
			return new Array('2800','2802','2803','2804');
		case '2900':
			return new Array('2900','2902');
		case '3000':
			return new Array('3000','3002','3003');
		case '3100':
			return new Array('3100','3102','3103','3104');
		case '3200':
			return new Array('3200','3202');
		case '3300':
			return new Array('3300');
		case '3400':
			return new Array('3400');
		case '3500':
			return new Array('3500');
		case '3600':
			return new Array('3600');
		default:
			return new Array();
	}
}

function initJobArea( layerId ) {
	if ( 'E' == lang ) {
		var psara = 'Please Select Location';
		var closeword = 'Close';
		var clearword = 'Clear';
		var confirmword = 'Confirm';
		var selara = 'Selected Location';
		var mcity = 'MAJOR CITIES';
		var aprov = 'ALL PROVINCES';
		var w1 = 160;
		var w2 = 100;
		var nomorethan = 'No more than ' + pLayer[layerId]['eleMaxNum'] + ' options';
	}
	else {
		var psara = '请选择工作地点';
		var closeword = '关闭';
		var clearword = '清空';
		var confirmword = '确认';
		var selara = '已选地点';
		var mcity = '主要城市';
		var aprov = '所有省份';
		var w1 = 80;
		var w2 = 85;
		var nomorethan = '您最多能选择' + pLayer[layerId]['eleMaxNum'] + '项';
	}

	var rl = 6;//每行的列数

	var plen,i,k,slen,tmp,n,h1 = 25,pl = 5;
	var twd = w1 + w2 * rl + pl;//table 总宽度

	var htmlDiv = '';
	htmlDiv +='<table width="' + twd + '" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">';

	//nav
	htmlDiv +='<tr>';
	htmlDiv +='<td height="36" valign="top" background="'+IMGPATH+'/images/title_bg.gif"  top="top" left="left">';
	htmlDiv +='<table width="100%" height="28" border="0" cellpadding="0" cellspacing="0">';
	htmlDiv +='<tr>';
	htmlDiv +='<td width="4%" align="center" valign="middle"><img src="'+IMGPATH+'/images/01.gif" /></td>';
	htmlDiv +='<td width="66%" align="left" valign="middle"  style="color:#fff;">' + psara + '&nbsp;( ' + nomorethan + ' )</td>';
	//htmlDiv +='<td width="30%" align="right" valign="middle" style="color:#FFFFFF;"><span style="cursor:pointer;" onclick="javascript:initLayer( \'' + layerId + '\' , \'\' );">[' + clearword + ']</span>&nbsp;&nbsp;<span style="cursor:pointer;" onclick="javascript:confirmLayer( \'' + layerId + '\' );" title="' + quickConfirmWord + '">[' + confirmword + ']</span>&nbsp;&nbsp;<span style="cursor:pointer;" onclick="javascript:closeLayer(\'' + layerId + '\');" title="' + quickCloseWord + '">[' + closeword + ']</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>';
	htmlDiv +='<td width="30%" align="right" valign="middle" style="color:#FFFFFF;"><span style="cursor:pointer;" onclick="javascript:confirmLayer( \'' + layerId + '\' );" title="' + quickConfirmWord + '">[' + confirmword + ']</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>';
	htmlDiv +='</tr>';
	htmlDiv +='</table>';
	htmlDiv +='</td>';
	htmlDiv +='</tr>';
	//nav end
	
	htmlDiv +='<tr>';
	htmlDiv +='<td align="center" valign="top">';
	htmlDiv +='<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">';
	
	//已选地点初始化开始
	htmlDiv +='<tr id="sjtr" height="' + h1 + '">';
	htmlDiv +='<td width="' + w1 + '" style="color:#ff7400; font-size: 14px; font-weight: bold;padding-left:' + pl + 'px;">' + selara + '：</td>';
	for ( i = 0 ; i < rl  ; i++ ) {
		htmlDiv +='<td></td>';
	}
	htmlDiv +='</tr>';
	//已选地点初始化结束
	
	//虚线
	htmlDiv +='<tr><td height="5" colspan="' + ( rl + 1 ) + '" background="' + IMGPATH + '/images/bgclear_bot.gif"></td></tr>';

	//主要城市开始
	htmlDiv +='<tr height="' + h1 + '">';
	htmlDiv +='<td colspan="' + ( rl + 1 ) + '" bgcolor="#F7F7F7" style="color:#ff7400; font-size: 14px; font-weight: bold;padding-left:' + pl + 'px;">' + mcity + '：</td>';
	htmlDiv +='</tr>';
	
	plen = maincity.length;
	var lstChxIdPrefix = pLayer[layerId]['lstChxIdPrefix'];
	var lstSpnIdPrefix = pLayer[layerId]['lstSpnIdPrefix'];
	for ( i = 0 ; i < plen ; i++ ) {
		tmp = maincity[i];
		htmlDiv +='<tr height="' + h1 + '">';
		htmlDiv +='<td style="color:#000000;font-weight: bold;padding-left:' + pl + 'px;">' + tmp[0] + '：</td>';
		slen = tmp[1].length;
		for ( k = 0 ; k < slen ; k++ ) {
			htmlDiv += k && 0 == k % rl ? '<tr><td style="padding-left:' + pl + 'px;"></td>' : '';
			htmlDiv += '<td width="' + w2 + '" style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="chxOrSpnClkFunc( this.childNodes[1] );"><input style="' + chxValign + '"  type="checkbox" id="' + lstChxIdPrefix + tmp[1][k] + '" value="' + tmp[1][k] + '" onclick="chxClk( this );"><span style="' + spnValign + '" id="' + lstSpnIdPrefix + tmp[1][k] + '">' + ja[tmp[1][k]] + '</span></td>';
			htmlDiv += ( rl - 1 ) == k % rl ? '</tr>' : '';
		}
		n = ( rl - ( k % rl ) ) % rl;
		htmlDiv += n ? '<td colspan="' + n + '"></td></tr>' : '';
	}
	//主要城市结束

	//主要省份开始
	htmlDiv +='<tr height="' + h1 + '">';
	htmlDiv +='<td colspan="' + ( rl + 1 ) + '" bgcolor="#F7F7F7" style="color:#ff7400; font-size: 14px; font-weight: bold;padding-left:' + pl + 'px;">' + aprov + '：</td>';
	htmlDiv +='</tr>';
	
	plen = allprov.length;
	var me;
	var pd1 = '&nbsp;';
	var allChxIdPrefix = pLayer[layerId]['allChxIdPrefix'];
	var allSpnIdPrefix = pLayer[layerId]['allSpnIdPrefix'];
	for ( i = 0 ; i < plen ; i++ ) {
		tmp = allprov[i];
		htmlDiv +='<tr height="' + h1 + '">';
		htmlDiv +='<td style="color:#000000;font-weight: bold;padding-left:' + pl + 'px;">' + tmp[0] + '：</td>';
		slen = tmp[1].length;

		for ( k = 0 ; k < slen ; k++ ) {
			htmlDiv += k && 0 == k % rl ? '<tr><td style="padding-left:' + pl + 'px;"></td>' : '';
			if ( plen - 1 == i ) {//香港澳门等地区
				htmlDiv += '<td style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="chxOrSpnClkFunc( this.childNodes[1] );"><input style="' + chxValign + '" type="checkbox" id="' + allChxIdPrefix + tmp[1][k] + '" value="' + tmp[1][k] + '" onclick="chxClk( this );"><span style="' + spnValign + '" id="' + allSpnIdPrefix + tmp[1][k] + '">' + ja[tmp[1][k]] + '</span></td>';
			}
			else {
				htmlDiv += '<td layerId="' + layerId + '" pcode="' + tmp[1][k] + '" style="cursor:pointer;" onmouseover="chBgColor( this , 1 );allTdMover( this );" onmouseout="chBgColor( this , 0 );allTdMout( this );" onclick="openSubLayer( event , \'' + layerId + '\' , \'' + tmp[1][k] + '\' );">' + pd1 + '<span>' + ja[tmp[1][k]] + '</span></td>';
			}
			htmlDiv += ( rl - 1 ) == k % rl ? '</tr>' : '';
		}
		n = ( rl - ( k % rl ) ) % rl;
		htmlDiv += n ? '<td colspan="' + n + '"></td></tr>' : '';
	}
	//主要省份结束

	htmlDiv +='</table>';
	htmlDiv +='</td>';
	htmlDiv +='</tr>';
	//

	htmlDiv +='<tr>';
	htmlDiv +='<td height="4" align="center" valign="top" bgcolor="#FF7400"></td>';
	htmlDiv +='</tr>';

	htmlDiv +='</table>';
	return htmlDiv;
}

//create by liyao 2008-4-25
function chgKt(no) {
	form.keywordtype.value=no;
	if ( 'E' == lang ) {
		kt_bg_l = '';
		kt_bg_h = 'kt_bg'+ no;
	}
	else {
		kt_bg_l = 'kt_bg0';
		kt_bg_h = 'kt_bg';	
	}
	for ( var i=0;i<3;i++ ) {
		$_("kt"+i).className = kt_bg_l;
	}
	$_("kt"+no).className=kt_bg_h;
}

function cookieResearch(){
	var ckFrm=document.cookieResearchForm;
	var arg=cookieResearch.arguments;
    ckFrm.jobarea.value			= arg[0];
    ckFrm.issuedate.value		= arg[1];
    ckFrm.workyear.value		= arg[2];
    ckFrm.degreefrom.value		= arg[3];
    ckFrm.funtype_big.value		= arg[4];
    ckFrm.funtype.value			= arg[5];
    ckFrm.industrytype.value	= arg[6];
    ckFrm.cotype.value			= arg[7];
    ckFrm.providesalary.value	= arg[8];
    ckFrm.jobterm.value			= arg[9];
    ckFrm.keyword.value			= arg[10];
    ckFrm.keywordtype.value		= arg[11];
    ckFrm.stype.value			= arg[12];
    ckFrm.curr_page.value		= 1;
    ckFrm.target='_self';
	if ( 'keyword_search.php' == fileName ) {
		ckFrm.action= fileName;
	}
	else {
		ckFrm.action= 'search_result.php';
	}
  	ckFrm.submit();
}

function GetLength(strTemp){
	var i,sum;
	sum=0;
	for(i=0;i<strTemp.length;i++){
		if ((strTemp.charCodeAt(i)>=0) && (strTemp.charCodeAt(i)<=255)) 
			sum = sum + 1;
		else 
			sum=sum + 2;
	}
	return sum;
}

function $_(str) {
	if (typeof str == 'string' && document.getElementById(str) != null ) {
		return document.getElementById(str);
	}
	return false;
}

function goNone() {}

function isChild() {
	var parentObj = arguments[0];
	var childObj = arguments[1];
	var depth = arguments[2] || 0;
	var i = 1;
	while ( childObj && parentObj != childObj ) {
		i++;
		if ( depth && i > depth ) {
			break;
		}
		childObj = childObj.parentNode;
	}
	return parentObj == childObj ;
}

function Jtrim(str)
{
	var i = 0;
	var len = str.length;
	
	if(str == "")
	{
		return(str);
	}
	
	j = len -1;
	flagbegin = true;
	flagend = true;
	
	while((flagbegin == true) && (i< len))
	{
		if(str.charAt(i) == " ")
		{
			i = i + 1;
			flagbegin = true;
		}
		else
		{
			flagbegin = false;
		}
	}
	
	while((flagend == true) && (j >= 0))
	{
		if(str.charAt(j) == " ")
		{
			j = j - 1;
			flagend = true;
		}
		else
		{
			flagend = false;
		}
	}
	
	if(i > j)
	{
		return ("");
	}
	
	trimstr = str.substring(i,j+1);
	return trimstr;
}

function subStringPro(str, length){
	var stri = '';
	for(i=0,j=0; j<length;){
		if ((str.charCodeAt(i)>=0) && (str.charCodeAt(i)<=255)) {
			stri += str.charAt(i);
			j++;
		} else {
			stri += str.charAt(i);
			j += 2;
		}
		i++;
	}
	return stri;
}

/*
 *Author Liyao
 *Date 2008-12-15
 *Function dibiao contol
 */
void function() {
//检查类名是否被占用,若占用,提示修改原变量或者通过修改本JS文件对本类新命名
if ( window.Dibaosel ) {
	alert( 'variable Dibaosel has been used,please reset the variable Dibaosel or rename the class name for calendar in the js file!' );
	return false;
}

//构造函数
window.Dibaosel = function( param ){
	this.debug = true;

	if ( typeof param == 'undefined' ) {
		if ( this.debug ) {
			alert( '您未传入任何参数!' );
		}
		return null;
	}
	
	//检查及初始化必要参数

	if ( !param.container || !( this.container = Dibaosel.getopenNode( param.container ) ) ) {
		if ( this.debug ) {
			alert( '请传入容器控件!' );
		}
		return null;
	}

	if ( !param.openNode || !( this.openNode = Dibaosel.getopenNode( param.openNode ) ) ) {
		if ( this.debug ) {
			alert( '请传点击打开控件!' );
		}
		return null;
	}
	
	if ( !param.textInput || !( this.textInput = Dibaosel.getopenNode( param.textInput ) ) || !/text/i.test( this.textInput.type ) ) {
		if ( this.debug ) {
			alert( '请以正确的方式传入文本框控件,可传控件索引，控件ID，控件名称（此时取document中的第一个）!' );
		}
		return null;
	}
	
	if ( !param.data || !( param.data instanceof Array ) || ( this.data = param.data ).length < 1 ) {
		if ( this.debug ) {
			alert( '请以正确的方式传入要显示的内容数组!' );
		}
		return null;	
	}
	
	//初始化其它可选参数
	this.isLeftDir = param.isLeftDir || false;
	this.isTopDir = param.isTopDir || false;
	this.width = param.width || this.container.offsetWidth;
	this.height = param.height || null;
	this.colums = param.colums || 1;
	this.eleClkFunc = param.eleClkFunc || function() {};
	this.eleMovFunc = param.eleMovFunc || function(){ this.style.color='#ff7300'; };
	this.eleMouFunc = param.eleMouFunc || function(){ this.style.color='#000000'; };
	this.ifr = this.createIfr();
	this.tbl = this.createTbl();
	this.canClose = true;
	var key;
	if ( Dibaosel.browser.safari ) {
		key = 0;
	}
	else if ( Dibaosel.browser.opera ) {
		key =1;
	}
	else if ( Dibaosel.browser.msie ) {
		key =2;
	}
	else if ( Dibaosel.browser.mozilla ) {
		key = 3;
	}
	else {
		key = 2;
	}
	this.offsetW = param.offsetW && !isNaN( param.offsetW[key] ) ? param.offsetW[key] : 1; 
	this.offsetH = param.offsetH && !isNaN( param.offsetH[key] ) ? param.offsetH[key] : -2;

	//初始设置
	this.textInput.setAttribute( 'autocomplete' , 'off' );
	this.fillTbl();
	this.openNode.style.cursor = 'pointer';
	Dibaosel.iAttEvt( this.openNode ,	'click' ,		this.getOnFunc( 'click' ) );
	Dibaosel.iAttEvt( this.container ,	'mouseover' ,	this.getOnFunc( 'mouseover' ) );
	Dibaosel.iAttEvt( this.container ,	'mouseout' ,	this.getOnFunc( 'mouseout' ) );
	Dibaosel.iAttEvt( this.textInput ,	'mouseover' ,	this.getOnFunc( 'mouseover' ) );
	Dibaosel.iAttEvt( this.openNode ,	'mouseover' ,	this.getOnFunc( 'mouseover' ) );
	this.resize( { width: this.width , height: this.height } );
}

/***********静态属性和方法**********/
Dibaosel.userAgent = navigator.userAgent.toLowerCase();
Dibaosel.browser = {
	version: (Dibaosel.userAgent.match(/.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/) || [])[1],
	safari: /webkit/.test(Dibaosel.userAgent),
	opera: /opera/.test(Dibaosel.userAgent),
	msie: /msie/.test(Dibaosel.userAgent) && !/opera/.test(Dibaosel.userAgent),
	mozilla: /mozilla/.test(Dibaosel.userAgent) && !/(compatible|webkit)/.test(Dibaosel.userAgent)
};

//绑定事件
Dibaosel.getopenNode = function( obj ) {
	if ( !obj ) {
		return null;
	}
	if ( typeof obj == 'string' ) {
		var tmp;
		return document.getElementById( obj ) || ( ( tmp = document.getElementsByName( obj ) ) ? tmp[0] : null );
	}
	if ( obj.nodeType ) {
		return obj;
	}
	return null;
}

//绑定事件
Dibaosel.iAttEvt = function( a , b , c ) {
	var d = 'on' + b;
	if ( a.addEventListener ) {//ff opera
		a.addEventListener( b , c , false );
	}
	else if ( a.attachEvent ) {//ie
		a.attachEvent( d , c );
	}
	else {
		a[d] = c;
	}
}

Dibaosel.iGetAbsPos = function( a ) {
	var w = h = 0;
	while ( a ) {
		w += a['offsetLeft'];
		h += a['offsetTop'];
		a = a.offsetParent;
	}
	return { left: w , top: h };
}

/*******************原形方法************************/

Dibaosel.prototype.resize = function( size ) {
	if ( size ) {
		if ( !isNaN( size.width ) && size.width > 0 ) {
			this.tbl.style.width = size.width + 'px';
		}
		if ( !isNaN( size.height ) && size.height > 0 ) {
			this.tbl.style.height = size.height + 'px';
		}
		this.resizeIfr();
	}
}

Dibaosel.prototype.createTbl = function() {
	var tbl = document.createElement( 'table' );
	//tbl.cellSpacing = tbl.cellPadding = 2;
	var k = tbl.style;
	if ( !isNaN( this.width ) && this.width > 0 ) {
		k.width = this.width + 'px';
	}
	if ( !isNaN( this.height ) && this.height > 0 ) {
		k.height = this.height + 'px';
	}
	k.zIndex = 2;
	k.position = 'absolute';
	k.fontSize = '12px';
	k.color = '#000000';
	k.border = '1px solid #A6A6A8';
	k.backgroundColor = '#FFFFFF';
	k.visibility = 'hidden';
	
	this.container.appendChild( tbl );
	return tbl;
}

Dibaosel.prototype.fillTbl = function() {
	while ( this.tbl.rows.length > 0 ) {
		this.tbl.deleteRow( -1 );
	}
	var tr;
	for ( var i = 0 ; i < this.data.length ; i++ ) {
		if ( i % this.colums == 0 ) {
			tr = this.tbl.insertRow( -1 );
			tr.style.height = '22px';
		}
		var td = document.createElement( 'td' );
		td.style.cursor = 'pointer';
		td.style.paddingLeft = '2px';
		td.onclick = this.eleClkFunc;
		td.onmouseout = this.eleMouFunc;
		td.onmouseover = this.eleMovFunc;
		td.appendChild(  document.createTextNode( this.data[i] ) );
		tr.appendChild( td );
	}
	var n = this.colums - this.data.length % this.colums;
	if ( this.data.length > this.colums && n > 0 && n < this.colums ) {
		var td = document.createElement( 'td' );
		td.colSpan = n;
		tr.appendChild( td );
	}
	this.resizeIfr();
}

Dibaosel.prototype.createIfr = function() {
	var	f = document.createElement( 'iframe' );
	f.scrolling = 'no';
	f.frameBorder = '0';
	var	y = f.style;
	y.zIndex = 1;
	y.position = 'absolute';
	y.display = 'block';
	y.visibility = 'hidden';
	y.border = '0px solid blue';
	document.body.appendChild( f );
	return f;
}

Dibaosel.prototype.resizeIfr = function() {
	this.ifr.style.width = this.tbl.offsetWidth + 'px';
	this.ifr.style.height = this.tbl.offsetHeight + 'px';
}

Dibaosel.prototype.setPos = function() {
	var pos = Dibaosel.iGetAbsPos( this.container );

	this.tbl.style.left = ( pos.left + ( this.isLeftDir ? 0 : this.container.offsetWidth - this.tbl.offsetWidth ) + this.offsetW ) + 'px';

	this.tbl.style.top = ( pos.top + ( this.isTopDir ? ( - this.tbl.offsetHeight ) : this.container.offsetHeight ) + this.offsetH ) + 'px';

	this.ifr.style.left = this.tbl.style.left;
	this.ifr.style.top = this.tbl.style.top;
}

Dibaosel.prototype.getOnFunc = function( type ) {
	thisObj = this;
	function isClose() {
		if ( thisObj.canClose ) {
			thisObj.close();
		}
	}
	switch ( type ) {
		case 'click': return function() {thisObj.setPos();thisObj.open();};
		case 'mouseover': return function() {thisObj.canClose = false;};
		case 'mouseout': return function() {thisObj.canClose = true;setTimeout( isClose , 50 );};
	}
	return function(){};
}

//打开控件
Dibaosel.prototype.open = function() {
	if ( this.tbl.style.visibility == 'hidden' ) {
		this.tbl.style.visibility = this.ifr.style.visibility = 'visible';
	}
}

//关闭控件
Dibaosel.prototype.close = function() {
	if ( this.tbl.style.visibility == 'visible' ) {
		this.tbl.style.visibility = this.ifr.style.visibility = 'hidden';
	}
	
}

}();

//地标应用
window.Dibaosel.dibiaoInit = function( frm , offsetWh ) {
	dibiaodata = [];
	dibiaodata['0100'] = ['CBD','金融街','中关村','燕莎','马甸','长安街','公主坟','朝外','亚运村','上地','望京','东直门','石景山','西直门','亦庄'];
	dibiaodata['0200'] = ['人民广场','徐家汇','五角场','莘庄','上海火车站','陆家嘴','八佰伴','中山公园','虹口体育场','新天地','静安寺','外滩','张江','外高桥','金桥','虹桥'];

	var ja = frm.jobarea;
	var dataKey = '0100';
	for ( var i = 0 ; i < ja.length ; i++ ) {
		if ( ja[i].checked ) {
			dataKey = ja[i].value;
			break;
		}
	}

	var param = {
		container: 'dibiaoTbl',
		openNode: 'dibiao_td',
		textInput: frm.address,
		data: dibiaodata[dataKey],
		colums: 4,
		width: 219,
		offsetW: offsetWh && offsetWh.width ? offsetWh.width : null,
		offsetH: offsetWh && offsetWh.height ? offsetWh.height : null,
		eleClkFunc: function() {
			frm.address.focus();
			frm.address.value = this.innerHTML;
			dibiao.close();
		},
		eleMovFunc: function(){ this.style.backgroundColor = '#FFA22E'; this.style.color = '#ffffff';},
		eleMouFunc: function(){ this.style.backgroundColor = '#ffffff'; this.style.color = '#000000'; }
	};
	var dibiao = new Dibaosel( param );

	window.Dibaosel.iAttEvt( frm.address , 'focus' , 
		(function( obj ) {
			return function() {
				obj.style.color = '#000000';
				if ( '请输入地址' == obj.value ) {
					obj.value = '';
				}
			}
		})( frm.address )	
	);
	
	function jobareaClk( obj ){
		return function(){
			if ( dibiaodata[obj.value] ) {
				dibiao.data = dibiaodata[obj.value];
				dibiao.fillTbl();
			}
		}
	}
	window.Dibaosel.iAttEvt( frm.jobarea[0] , 'click' , jobareaClk( frm.jobarea[0] ) );
	window.Dibaosel.iAttEvt( frm.jobarea[1] , 'click' , jobareaClk( frm.jobarea[1] ) );
	
	if ( 'page_form' == frm.name ) {

		//表单提交
		var page_form_submit = this.page_form_submit = frm.onsubmit =  function(){
			frm.address.value = 'string' == typeof arguments[0] ? arguments[0] : frm.address.value.replace( /^请输入地址$/ , '');
			if ( !window.trim( frm.address.value ) ) {
				alert( '请输入中心位置!' );
				setTimeout( function() { frm.address.focus(); } , 20 );
				return false;
			}
			frm.keyword.value = frm.keyword.value.replace( /^例如：软件工程师$/ , '');
			frm.submit();
		}
		
		//map_search页面下方的地标搜索
		var mapbar_black = document.getElementsByTagName( 'a' );
		function mapbar_black_clk( obj ) { return function() {
				var tmp = obj,city = '';
				while ( ( tmp = tmp.parentNode ) && !( city = tmp.getAttribute( 'city' ) ) ) {};
				if ( city ) {
					var jas = document.getElementsByName( 'jobarea' );
					var len = jas.length;
					for ( var i = 0 ; i < len ; i++ ) {
						jas[i].checked = city == jas[i].value ? true : false;
					}
					frm.radius.value = '0.03';
					page_form_submit(obj.innerHTML);
				}
				return false;
			}
		}
		for ( var i = 0 ; i < mapbar_black.length ; i++ ) {
			if ( 'mapbar_black' == mapbar_black[i].className ) {
				window.Dibaosel.iAttEvt( mapbar_black[i] , 'click' , mapbar_black_clk( mapbar_black[i] ) );
			}
		}

	}

}

//map_result_form提交函数
window.Dibaosel.map_result_form_submit = function( form , fromType ) {
	if ( 1 == fromType ) {
		form.keyword.value = form.keyword1.value; 
	}
	else {
		form.keyword.value = document.getElementsByName('keyword3')[0].value;
	}
	if ( !window.trim( form.address.value ) ) {
		alert( '请输入中心位置!' );
		setTimeout( function() { form.address.focus(); } , 20 );
		return false;
	}
	search_result( fromType ); 
}

//地图初始化
window.mapSearchInit = function ( centerLonlat , radius , zoomLevel , imgPath , isMap_result ) {
	if ( typeof Maplet == 'undefined' ) {
		return ;
	}
	function init( lonlatInfoCoid ) {
		var marker = new MMarker( 
			new MPoint( lonlatInfoCoid.lonlat = correctLonlat( centerLonlat , radius , lonlatInfoCoid.lonlat ) ) , 
			new MIcon( imgPath  + 'icon_large_blue_' + lonlatInfoCoid.key + '.gif' , 25 , 37 )  , 
			new MInfoWindow( getInfoTitle( lonlatInfoCoid.coid ) , getInfoContent( lonlatInfoCoid.coid ) ) 
		);
		maplet.addOverlay( marker );
		marker.coid = lonlatInfoCoid.coid;
		marker.eventHandler = MEvent.addListener( marker , 'click' , markerClk );
		
		if ( isMap_result ) {
			var imgs = document.getElementsByName( lonlatInfoCoid.coid );
			for ( var i = 0 ; i < imgs.length  ; i++ ) {
				imgs[i].onclick = jobNameImgClk;
			}
		}

		return marker;
	}

	function jobNameImgClk() {
		for ( var coid in lonlatInfo ) {
			if ( lonlatInfo[coid].lonlat ) {
				if ( coid == this.name ) {
					var color = 'red';
					lonlatInfo[coid].marker.openInfoWindow();
				}
				else {
					var color = 'blue';
				}
				updateMarkerImg( coid , color );
				var imgs = document.getElementsByName( coid );
				for ( var i = 0 ; i < imgs.length ; i++ ) {
					updateJobNameImg( [imgs[i]] , coid , imgs[i] == this ? 'red' : 'blue' );
				}
			}
		}
	}

	function getInfoTitle( coid )  {
		var trueCoid = coid.substring( 2 );
		var coLinkObj = document.getElementsByName( 'coname_' + trueCoid )[0];
		var coName = coLinkObj.innerHTML.replace( /(<font color=.?#FF7600.?>)|(<\/font>)/ig , '' );
		if ( GetLength( coName ) > 25 ) {
			//alert( coName + ' ' + coName.length + ' ' + GetLength( coName ) + ' ' + subStringPro( coName , 22 ) );
			aTitle = ' title="' + coName + '" ';
			coName = subStringPro( coName , 22 ) + '...';
		}
		else {
			aTitle = '';
		}
		return  '<a  class="orange1" target="_blank" href="' + coLinkObj.href + '" ' + aTitle + '>' + coName + '</a><br><span style="color: #868686;font-weight:400;font-size:12px;">该公司下共有' + lonlatInfo[coid].jobids.length + '个职位</span>';
	}


	function getInfoContent( coid ) {
		var str = '';
		var jobids = lonlatInfo[coid].jobids;

		for ( var i = 0 ; i < jobids.length ; i++ ) {
			var jobLinkObj = document.getElementById( 'jobname_' + jobids[i] );
			var jobName = jobLinkObj.innerHTML.replace( /(<font color=.?#FF7600.?>)|(<\/font>)/ig , '' );
			if ( GetLength( jobName ) > 29 ) {
				aTitle = ' title="' + jobName + '" ';
				jobName = subStringPro( jobName , 26 ) + '...';
			}
			else {
				aTitle = '';
			}
			str += '<li onclick="javascript:OJDL(' + jobids[i] + ')" style="height: 23px;margin-left:4px !important;margin-left:-12px;"><a  class="orange1" style="width:100%;" target="_blank" href="' + jobLinkObj.href + '" ' + aTitle + '>' + jobName + '</a></li>';
		}

		return str;
	}

	function markerClk( marker ) {
		if ( !marker || !marker.coid || !lonlatInfo[marker.coid] ) {
			return;
		}
		for ( var coid in lonlatInfo ) {
			if ( lonlatInfo[coid].lonlat ) {
				updateMarkerImg( coid , coid == marker.coid ? 'red' : 'blue' );
				if ( isMap_result ) {
					var imgs = document.getElementsByName( coid );
					for ( var i = 0 ; i < imgs.length ; i++ ) {
						updateJobNameImg( [imgs[i]] , coid , imgs[i].name == marker.coid ? 'red' : 'blue' );
					}
				}
			}
		}
	}

	function updateMarkerImg( coid , color ) {
		var src = imgPath  + 'icon_large_' + color + '_' + lonlatInfo[coid].key + '.gif';
		if ( lonlatInfo[coid].marker.icon.img.firstChild.src != src ) {
			lonlatInfo[coid].marker.icon.img.firstChild.src = src;
		}
	}

	function updateJobNameImg( imgs , coid , color ) {
		var src = imgPath  + 'icon_' + color + '_' + lonlatInfo[coid].key + '.gif';
		for ( var i = 0 ; i < imgs.length ; i++ ) {
			if ( imgs[i].src != src ) {
				imgs[i].src = src;
			}
		}
	}

	function correctLonlat( centerLonlat , radius , lonlat ) {
		if ( radius < 0 || !/[0-9]{1,3}\.[0-9]+,[0-9]{1,2}\.[0-9]+/.test( centerLonlat ) ) {
			return '';
		}
		centerLonlat = centerLonlat.split( ',' );
		lonlat = ( lonlat ||  '' ).split( ',' );
		if ( Math.abs( centerLonlat[0] - lonlat[0] ) >=  radius ) {
			var ran = Math.random();
			lonlat[0] = centerLonlat[0] - 0.005 + ( ran > 0 ? ran/100 : 0.000 );

		}
		if ( Math.abs( centerLonlat[1] - lonlat[1] ) >=  radius ) {
			var ran = Math.random();
			lonlat[1] = centerLonlat[1] - 0.005 + ( ran > 0 ? ran/100 : 0.000 );

		}
		return lonlat.join( ',' );
	}

	if ( !centerLonlat || '全国' == centerLonlat || '-1,-1' == centerLonlat ) {
		centerLonlat = '全国';
		zoomLevel = 0;

		//创建提示层
		var sugLayer = document.createElement( 'div' );
		sugLayer.style.width = '260px';
		sugLayer.style.position = 'absolute';
		var mapLayer =  document.getElementById( 'mapbar' );
		var pos = Dibaosel.iGetAbsPos( mapLayer );
		sugLayer.style.left =  ( pos.left + ( mapLayer.offsetWidth - 300 )/2 ) + 'px';
		sugLayer.style.top =  ( pos.top + mapLayer.offsetHeight/2 ) + 'px';
		sugLayer.style.border = '1px solid #0564d5';
		sugLayer.style.padding = '6px';
		sugLayer.style.fontWeight = 'bold';
		sugLayer.style.fontSize = '12px';
		sugLayer.style.background = '#FFFFFF';
		sugLayer.style.textAlign = 'center';
		sugLayer.style.color = '#0564d5';
		sugLayer.innerHTML = '没有找到您查找的中心位置，请重新定位!';
		sugLayer.style.display = '';
		sugLayer.style.zIndex = 10;
		document.body.appendChild( sugLayer );
		Dibaosel.iAttEvt( mapLayer , 'click' , function(){ sugLayer.style.display = 'none'; } );
	}

	//创建地图
	window.mw = false; //禁用地图鼠标滚轮缩放
	maplet = new Maplet( 'mapbar' );
	maplet.centerAndZoom( new MPoint( centerLonlat ) , zoomLevel );
	maplet.addControl( new MStandardControl() );
	maplet.showOverview( false , false );
	maplet.clickToCenter = false;
	avBubble.width = 245;
	avBubble.height = 200;

	if ( centerLonlat != '全国' ) {

		//标注点
		if ( typeof lonlatInfo != 'undefined' ) {
			for ( var coid in lonlatInfo ) {
				if ( lonlatInfo[coid].lonlat ) {
					lonlatInfo[coid].coid = coid;
					lonlatInfo[coid].marker = init( lonlatInfo[coid] , centerLonlat , radius );
				}
			}
		}
		
		//预先加载infoWIN
		document.getElementById( 'MapContainer' ).style.display = 'none';
		var tt = maplet.getCenter().pid.split( ',' );
		var offsetll = 0;
		switch ( zoomLevel - 0 ) {
			case 10 : offsetll = 0.013;break;
			case 9  : offsetll = 0.030;break;
			case 8  : offsetll = 0.055;break;
		}
		var marker = new MMarker( 
			new MPoint( tt[0], tt[1] - offsetll ) , 
			new MIcon( imgPath  + 'icon_blue_11.gif' , 0 , 0 )  , 
			new MInfoWindow( '' , '' ) 
		);
		maplet.addOverlay( marker );
		marker.openInfoWindow();
		maplet.hideBubble();
		document.getElementById( 'MapContainer' ).style.display = '';
		window.Dibaosel.iAttEvt(document.getElementById( 'mybubble_CBtn' ),'click',function(){maplet.hideBubble()});
		
		//中心点
		maplet.addOverlay( new MMarker( new MPoint( centerLonlat ) , new MIcon( imgPath  + 'markerred.gif' , 10 , 10 ) ) );
		
		//查看全图按钮
		if ( isMap_result ) {
			var vFull = document.createElement( 'div' );
			vFull.style.width = '73px';
			vFull.style.height = '19px';
			vFull.style.position = 'absolute';
			vFull.style.zIndex = '10';
			var mapLayer =  document.getElementById( 'mapbar' );
			var pos = Dibaosel.iGetAbsPos( mapLayer );
			vFull.style.left =  ( pos.left +  mapLayer.offsetWidth - 73 ) + 'px';
			vFull.style.top =  ( pos.top + mapLayer.offsetHeight - 19 ) + 'px';

			var ids = '';
			var s1 = '';
			for ( var coid in lonlatInfo ) {
				if ( lonlatInfo[coid].lonlat ) {
					ids += s1 + coid+ '|' + lonlatInfo[coid].key + '|' + lonlatInfo[coid].lonlat + '|' + lonlatInfo[coid].jobids.join( ',' );
					s1 = '#';
				}
			}
			document.view_full_map.centerLonlat.value = centerLonlat;
			document.view_full_map.radius.value = radius;
			document.view_full_map.zoomLevel.value = zoomLevel - 0 + 1;
			document.view_full_map.lonlatInfo.value = ids;
			vFull.innerHTML = '<img style="cursor:pointer;" onclick="document.view_full_map.submit();" border="0" src="' + imgPath + 'view_full_map.gif">';
			document.body.appendChild( vFull );
		}
	}

}



//create by liyao 2007-8-30
//modify by liyao 2008-4-10
if ( 'E' == lang ) {
	var pekf = 'Please enter keyword or select job function/location!';
	var pemi = 'Please enter your member ID!';
	var pepw = 'Please enter your password!';
	var pspo = 'Please Select Position';
	var cdeep = 10;
	var tb1 = '<table width="100%" align="left" cellpadding="0" cellspacing="0"><tr><td width="12">';
	var tb2 = '</td><td align="left" style="">';
	var tb3 = '</td></tr></table>';
}
else {
	var pekf = '请输入关键字,或者选择职能类别/工作地点!';
	var pemi = '请输入用户名!';
	var pepw = '请输入密码!';
	var pspo = '请选择职位';
	var cdeep = 6;
	var tb1 = '';
	var tb2 = '';
	var tb3 = '';
}
//end
function advance_search( fromType ){
	var frm=document.page_form;
	if ( '' == Jtrim(frm.keyword.value) && ( '' == Jtrim(frm.funtype.value) || '0000' == Jtrim(frm.funtype.value) ) && ( '' == Jtrim(frm.jobarea.value) || '0000' == Jtrim(frm.jobarea.value) ) ) {
		alert( pekf );
		return false;
	}
	frm.fromType.value = fromType;
	frm.action = 'search_result.php';
	frm.submit();
	return false;
}

function type_search(funid,indid,jobarea){
	obj = document.forms.type_form;
	obj.postchannel.value 	  = '0000';
	obj.stype.value 		  = '3';
	obj.issuedate.value 	  = "3";
	obj.funtype.value         = funid;
	obj.industrytype.value 	  = indid;
	obj.jobarea.value 		  = jobarea;
	if ( jobarea ) {
		obj.action="search_result.php";
	}
	else {
		obj.action="cityChoose.php";
	}
	obj.submit();
}

function ChkUserLogin() {
	var frm = document.loginform;
	
	if(Jtrim(frm.username.value) == "") {
		window.alert( pemi );
		frm.username.select();
		return false;
	}else if(Jtrim(frm.userpwd.value) == "")
	{
		window.alert( pepw );
		frm.userpwd.select();
		return false;
	}else{
		return true;
	}
}
//定义全局变量记录当前显示的职能小类层的id的数字位
var bdClkEvt= document.body.onclick;
var curSwIdNum='';
function showSubFuntypeDiv( code,topObj ) {
	//先关闭当前的层
	if ( curSwIdNum != code ) {
		hiddenSubFuntypeDiv ( curSwIdNum );
	}
	curSwIdNum=code;
	document.body.onclick=function(event){isHiddenSubFuntypeDiv(event);};
	if ( document.getElementById('subDiv'+code) != null ) {
		$_('subDiv'+code).style.display='block';
		return ;
	}
	var wd  = topObj.clientWidth;
	var subObj=document.createElement('div');
	subObj.style.zIndex='2';
	subObj.id='subDiv'+code;
	subObj.style.position='absolute';
	subObj.style.width=wd+'px';
	subObj.style.display='block';
	subObj.style.background = '#FFEDDF';

	var tblStr='<table width="100%" align="center" cellpadding="0" cellspacing="0" style="border:3px solid #FF7B00;" bgcolor="#FEFFEF"><tbody><tr height="18"><td background="'+IMGPATH+'/images/open_bg.gif" style="color:#fff;padding-top:0px;cursor:default" valign="middle">&nbsp;<strong>' + pspo + '</strong></td><td background="'+IMGPATH+'/images/open_bg.gif"align="right"><img style="cursor:pointer" onclick="hiddenSubFuntypeDiv(\''+code+'\')" src="'+IMGPATH+'/images/close1.gif" align="absmiddle"></td></tr>';
	for ( var i=0; i < func_v.length ;i++ ) {
		if ( code == func_v[i] ) {
			break;
		}
	}
	for ( var k=0; k < subfunc_v[i].length;k++ ) {
		tblStr+='<tr><td height="20" colspan="2" style="cursor:default">' + tb1 + '<img src="'+IMGPATH+'/images/blackpoint.gif" align="absmiddle">' + tb2 + '<a href="javascript:type_search(\''+subfunc_v[i][k]+'\',\'\',\'\')"> '+subfunc_s[i][k]+'</a>' + tb3 + ' </td></tr>';
	}
	tblStr+='</tbody></table>';
	subObj.innerHTML=tblStr;
	topObj.appendChild(subObj);
}
function isHiddenSubFuntypeDiv(event) {
	if ( document.getElementById('subDiv'+curSwIdNum) != null ) {
		if ( 'none' != $_('subDiv'+curSwIdNum).style.display ) {
			event=event || window.event;
			srcElmt=event.target || event.srcElement;
			if ( srcElmt != $_('divId'+curSwIdNum) && !isChild( $_( 'subDiv' + curSwIdNum ) , srcElmt , cdeep ) ) {
				hiddenSubFuntypeDiv( curSwIdNum );
			}
		}
	}
}

function hiddenSubFuntypeDiv( code ) {
	if ( document.getElementById('subDiv'+code) != null ) {
		$_('subDiv'+code).style.display='none';
	}
	curSwIdNum='';
	document.body.onclik=bdClkEvt;
}

//create by liyao 2008-4-25
//切换TAB
//调用到 $_()
function val(no,type) {//属性赋值
	if ( 0 == type ) {
		var imgUrl=this.argArray[no][2];
		var disp='none';
	}
	else {
		var imgUrl=this.argArray[no][1];
		var disp='';
	}
	if (  1 == this.bgOrText ) {
		$_(this.argArray[no][0]).innerHTML='<img src="'+imgUrl+'">';
	}
	else {
		$_(this.argArray[no][0]).style.background='url('+imgUrl+'")';
	}
	if(typeof($_(this.argArray[no][3])) == 'object') {
		$_(this.argArray[no][3]).style.display=disp;
	}
}

function doChg(no) {//事件触发操作
	if ( this.curNo == no ) {
		return false;
	}
	this.val(this.curNo,0);
	this.val(no,1);
	this.curNo=no;
}

function init() {//属性初始化
	for ( var i=0;i<this.len;i++ ) {
		this.val(i,0);
		$_(this.argArray[i][0]).name=this.argArray[i][0]+i;
		$_(this.argArray[i][0]).style.cursor='pointer';
	}
	this.val(0,1);//默认为第一个高亮
	this.curNo=0;
}
chgBg =function (arr,eventCode,bgOrText) { //创建类名
    //属性
	this.argArray		=arr;
	this.eventCode		= eventCode;
	this.len			= this.argArray.length;
	this.curNo			= '0';
	this.bgOrText		= 1;//内容

	//方法
	this.val=val;
	this.doChg=doChg;
	this.val=val;
	this.init=init;
 }

function attEvt(chg){//外部调用函数
	for ( var i=0;i<chg.len;i++ ) {
		if ( 2 ==  chg.eventCode ) {
			$_(chg.argArray[i][0]).onmouseover=function (){chg.doChg(this.name.charAt(this.name.length-1))};
		}
		else {
			$_(chg.argArray[i][0]).onclick=function (){chg.doChg(this.name.charAt(this.name.length-1))};
		}
	}
}
//切换TAB结束

function openwin( url , name , width , height , left , top ) {
	window.open( url , name ,"toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,width="+width+",height="+height+",left="+left+",top="+top );
}

/*
 *Function: 关键字自动完成
 *Author:	Liyao
 *Date:		2008-3-12
 *Modify:	Liyao 2008-5-27
 *Modify:	Liyao 2008-8-20 因加入了拼音匹配方式故去掉了前缀缓存判断机制
 */
(function(){
	var ca = navigator.userAgent.toLowerCase();
	iBrowser = {
		I: ca.indexOf("msie")!=-1,
		M: ca.indexOf("mozilla") != -1,
		O: ca.indexOf("opera")!=-1,
		S: ca.indexOf("webkit") != -1
	}
	
	//数据提供对象
	window.DataProvide = function () {
		this.ajaxUrl = arguments[0] || '?';
		this.lang = arguments[1] || 'C';
		this.resWord = 'C' == this.lang ? '结果' : 'results';
		this.abuWord = 'C' == this.lang ? '约' : 'about';
		this.maxGetNum = 10;//数据提供接口每次提供的最大记录数
		this.dataArr = [];
		this.rDataArr = function ( key , kwd , onFunc ) {
			kwd = trim( kwd , 'left' );//去掉左边的空格
			var _kwd = '_' + kwd;
			var uKwd = window.encodeURIComponent ? encodeURIComponent( kwd ) : escape( kwd );
			if ( this.dataArr[_kwd] ) {//已缓存过,直接调用缓存记录,不再重新发送http请求
				onFunc( key , kwd , this.dataArr[_kwd] );
			}
			else {
				//2008-8-20 liyao 因加入了拼音匹配方式故去掉了前缀缓存判断机制
				document.domain = '51job.com';
				if ( !window.ajaxIfr || !ajaxIfr.contentWindow || !ajaxIfr.contentWindow.$ ) {//异常判断
					onFunc( key , kwd , [] );
					return false;
				}
				ajaxIfr.contentWindow.$.ajax( {
					url: this.ajaxUrl + '&kwd=' + uKwd + '&broswer=0&ran=' + Math.random(),
					pObj: this,
					key: key,
					kwd: kwd,
					_kwd: _kwd,
					onFunc: onFunc,
					error: function () { this.onFunc( this.key , this.kwd , [] ); },
					success: function ( rTxt ) {
						this.pObj.dataArr[this._kwd] = [];
						if ( rTxt ) {
							rTxt = ( rTxt + '' ).split( "\r\n" );
							var len = rTxt.length;
							var subtmp = [];
							for ( var i = 0 ; i < len ; i++ ) {
								subtmp =  rTxt[i].split( "\t" );
								if ( subtmp[0] && subtmp[1] > 0 ) {
									this.pObj.dataArr[this._kwd].push( [subtmp[0], ' ' + this.pObj.abuWord + ' ' +  subtmp[1] + ' ' + this.pObj.resWord] );
								}
							}
						}
						this.onFunc( this.key , this.kwd , this.pObj.dataArr[this._kwd] );
					}
				} );
			}
		}
	}

	window.iCom = [];
	window.iTag = 'iCom';
	var da = new RegExp("^[\\s\\u1100-\\u11FF\\u3040-\\u30FF\\u3130-\\u318F\\u31F0-\\u31FF\\u3400-\\u4DBF\\u4E00-\\u9FFF\\uAC00-\\uD7A3\\uF900-\\uFAFF\\uFF65-\\uFFDC]+$");
	window.iPush = function () {
		var pLen = arguments.length,key = iTag + ++iCom.length,a;
		for ( var i = 0 ; i < pLen ; i++ ) {
			a = arguments[i];
			if ( a[0] && 'text' == a[0].type && a[1] && 'function' == typeof a[2] && a[1] instanceof DataProvide && iCheck( a[0] ) ) {//参数验证
				if ( !document.getElementById( iTag + 'ui' ) ) {
					iCreateStyle();
				}
				iCom[key] = {};
				iCom[key]['iInput'] = a[0];
				iCom[key]['iDp'] = a[1];
				iCom[key]['iOnEvt'] = a[2];
				iCom[key]['iTbl'] = iCreateTbl();
				iCom[key]['iIfr'] = iCreateIfr();

				iClose( key );
				iResize( key );
				iGetPosPara( key );
				iSetPos( key );
				iSetAtt( key );
				iAttach( key );

				iCom[key]['sto'] = '';
			}
		}
	}

	function iSetAtt( key ) {
		var u = iCom[key]['iInput'];
		u.setAttribute( 'autocomplete' , 'off' );

		u.setAttribute( 'key' , key );//设置自定义属性
		u.setAttribute( 'vIndex' , -1 );//设置自定义属性 value in table row index
		u.setAttribute( 'preVal' , u.value );//设置自定义属性 value in table row index

		var t = iCom[key]['iTbl'];
		t.setAttribute( 'key' , key );//rel key to input
		t.setAttribute( 'kwd' , '' );//table kwd
		t.setAttribute( 'hIndex' , -1 );//highlight table row index
	}

	function iAttach( key ) {
		var u = iCom[key]['iInput'];
		iAttEvt( u , 'keydown' , iSetPreVal );
		iAttEvt( u , 'focus' , iGetPosPara );
		iAttEvt( u , 'blur' , iClose );
		iAttEvt( u , 'keyup' , iKeyup );
		if ( iBrowser.I ) {
			iAttEvt( u , 'beforedeactivate' , iBefore );
		}	
	}

	window.iAttEvt = function( a , b , c ) {//绑定事件
		var d = 'on' + b;
		if ( a.addEventListener ) {//ff opera
			a.addEventListener( b , c , false );
		}
		else if ( a.attachEvent ) {//ie
			a.attachEvent( d , c );
		}
		else {
			a[d] = c;
		}
	}

	//判断是否按上键
	function isUp( a ) { return a == 38 || a == 63232; }

	//判断是否按下键
	function isDown( a ){ return a == 40 || a == 63233; }

	//判断是否按右键
	function isRight( a ){ return a == 39; }

	//判断是否按上下方向键
	function isUD( a ) { return isUp(a) || isDown(a); }

	//记录前面的值
	function iSetPreVal( e ) {
		e = e || window.event;
		var u = e.srcElement || e.target;
		u.setAttribute( 'preVal' , u.value );
	}

	function iKeyup( e ) {
		e = e || window.event;
		var a = e.keyCode;
		var u = e.srcElement || e.target;

		var key = u.getAttribute( 'key' );
		var vIndex = u.getAttribute( 'vIndex' );
		var preVal = u.getAttribute( 'preVal' );

		var t = iCom[key]['iTbl'];
		var hIndex = t.getAttribute( 'hIndex' );
		var kwd = t.getAttribute( 'kwd' );

		var rKwd;
		if ( -1 == vIndex ) {
			rKwd = kwd;
		}
		else {
			rKwd = t.rows[vIndex] ? t.rows[vIndex].completeString : '';
		}
		
		if ( 27 == a || !trim( u.value ) ){//按esc键或者空值
			iClose( key );//关掉层
			return false;
		}

		if ( rKwd != u.value || ( isRight( a ) && -1 != vIndex ) || preVal != u.value ) {
			//如果数据不一致|按下右键并且值索引不为-1|值发生了改变,调用数据提供程序
			iCom[key]['iDp'].rDataArr( key , u.value , exec );
			return false;
		}

		if ( isUD( a ) ) {//只处理按了上下键的情况
			//直接处理显示或者上下移动table选项
			iUpDown( key , a );
			return false;
		}

		return true;
	}

	function iClearTbl( t ) {
		while ( t.rows.length > 0 ) {
			t.deleteRow(-1);
		}
	}

	function exec( key , kwd , data ) {
		//填充层
		iFillTbl( key , kwd , data );
		//处理显示层
		if ( iCom[key]['iTbl'].rows.length -1 ) {
			iOpen( key );
		}
		else {
			iClose( key );
		}
	}

	function iInsert( a , b ) {
		a.appendChild( document.createTextNode( b ) );
	}

	function iTrMDown() {
		var t = this.parentNode.parentNode;
		var key = t.getAttribute( 'key' );
		var u = iCom[key]['iInput'];
		u.value = this.completeString;
		u.setAttribute( 'vIndex' , this.rowIndex );
		function uf() {
			u.focus();
			if ( iBrowser.I ) {       
				var r = u.createTextRange();       
				r.moveStart('character', u.value.length);       
				r.collapse();       
				r.select();       
			}
		}
		setTimeout( uf , 10 );
		iCom[key]['iOnEvt']();
	}

	function iTrMOver() {
		var t = this.parentNode.parentNode;
		var key = t.getAttribute( 'key' );
		ChHigh( this.parentNode.parentNode , this.rowIndex );
	}

	function iFillTbl( key , kwd , b ) {
		var u = iCom[key]['iInput'];
		u.setAttribute( 'vIndex' , -1 );
		var a = iCom[key]['iTbl'];
		iClearTbl( a );
		a.style.width = u.offsetWidth + 'px';
		var bLen = b.length;
		a.setAttribute( 'kwd' , kwd );
		a.setAttribute( 'hIndex' , -1 );
		var e,f,h;
		for ( var d = 0 ; d < bLen ; ++d ) {
			e = a.insertRow( -1 );
			e.onmousedown = iTrMDown;
			e.onmouseover = iTrMOver;
			e.completeString = b[d][0];
			e.className = iTag + 'a';
			f = document.createElement( 'td' );
			iInsert( f , b[d][0] );
			f.className = iTag + 'c';
			if ( iBrowser.N && da.test( b[d][0] ) ) {
				f.style.paddingTop = '2px';
			}
			e.appendChild( f );
			h = document.createElement( 'td' );
			iInsert( h , b[d][1] );
			h.className = iTag + 'd';
			e.appendChild( h );
		}

		//关闭按钮行暂时取消
		var m = a.insertRow( -1 );
		var k = document.createElement( 'td' );
		k.setAttribute( 'keep' , 'keep' );
		k.colSpan = 2;
		m.style.height = 0;
		m.appendChild( k );
		/*
		if ( !iBrowser.I ) {
			m.onmousedown = iCancel;
		}
		var k = document.createElement( 'td' );
		k.setAttribute( 'keep' , 'keep' );
		k.colSpan = 2;
		m.className = iTag + 'e';
		var D = document.createElement( 'span' );
		D.className = iTag + 'f';
		m.appendChild( k );
		k.appendChild( D );
		iInsert( D , '关闭' );
		D.onclick = iClose;
		*/

		iResize( key );
	}

	function iUpDown() {//上下导航键操作
		var key = arguments[0];
		var a = arguments[1] || 0;
		if ( !isUD( a ) ) {//非上下键
			return false;
		}

		var u = iCom[key]['iInput'];
		var vIndex = u.getAttribute( 'vIndex' );

		var t = iCom[key]['iTbl'];
		var hIndex = t.getAttribute( 'hIndex' );
		var kwd = t.getAttribute( 'kwd' );
		var rLen = t.rows.length;

		if ( !( rLen - 1 ) ) {//如果table中没有数据,则关闭 table,返回
			iClose( key );
			return false;
		}
		
		if ( 'hidden' == t.style.visibility ) {//如果是关的,则打开
			ChHigh( t , vIndex );
			iOpen( key );
			return false;
		}

		hIndex1 = isDown( a ) ? hIndex - 0 + 1 : hIndex - 1;
		hIndex1 = hIndex1 < -1 ? rLen - 2 : ( hIndex1 > rLen - 2 ? -1 : hIndex1 );
		ChHigh( t , hIndex1 );
		u.value =  -1 == hIndex1 ? kwd : t.rows[hIndex1].completeString;
		u.setAttribute( 'vIndex' , hIndex1 );
	}

	function ChHigh( t , hIndex1 ) {
		var hIndex = t.getAttribute( 'hIndex' );
		var len = t.rows.length;
		if ( hIndex >=0 && hIndex <= len - 2 ) {
			t.rows[hIndex].className = iTag + 'a';
		}
		if ( hIndex1 >=0 && hIndex1 <= len - 2 ) {
			t.rows[hIndex1].className = iTag + 'b';
		}
		t.setAttribute( 'hIndex' , hIndex1 );
	}

	function iCancel( e ) {
		e = e || window.event;
		if ( iBrowser.O ) {
			var t = e.target || e.srcElement,key;
			while ( !( uokey = t.getAttribute( 'key' ) ) ) {
				t = t.parentNode;
			}
			function uo() {
				iOpen( uokey );
				iCom[uokey]['iInput'].focus();
			}
			setTimeout( uo , 10 );		
		}
		else {
			e.cancelBubble=true;
			e.returnValue=false;
			return false;
		}
	}

	function iCreateTbl( key ) {
		var t = document.createElement( 'table' );
		t.cellSpacing = ( t.cellPadding = "0" );
		t.className = iTag + 'm';
		t.style.visibility = 'hidden';
		document.body.appendChild( t );
		return t;
	}

	function iCreateIfr( key ) {
		var f = '';
		if ( iBrowser.I ) {//创建iframe
			var y;
			f = document.createElement( 'iframe' );
			y = f.style;
			y.zIndex = '1';
			y.position = 'absolute';
			y.display = 'block';
			y.borderWidth = 0;
			document.body.appendChild( f );
		}
		return f;
	}

	function iGetAbsPos( a ) {
		var w = h = 0;
		while ( a ) {
			w += a['offsetLeft'];
			h += a['offsetTop'];
			a = a.offsetParent;
		}
		return [w,h];
	}

	function iGetPosPara( e ) {
		if ( 'string' == typeof e ) {
			var key = e;
		}
		else {
			e = e || window.event;
			var u = e.srcElement || e.target;
			var key = u.getAttribute( 'key' );
		}
		var i = iCom[key]['iInput'];

		var iow = i.offsetWidth;
		var ioh = i.offsetHeight;

		var pos = iGetAbsPos( i );
		var iex = pos[0];
		var iey = pos[1] + ioh - 1;

		var bsw = document.body.scrollWidth || document.documentElement.scrollWidth;
		var bsh = document.body.scrollHeight || document.documentElement.scrollHeight;

		var bch = document.body.clientHeight || document.documentElement.clientHeight;

		iCom[key]['pospara'] = { iow: iow , ioh: ioh , iex: iex , iey: iey , bsw: bsw , bsh: bsh , bch: bch };
	}

	function iSetPos( e ) {
		if ( typeof e == 'string' ) {
			var key = e;
		}
		else {
			e = e || window.event;
			var u = e.srcElement || e.target;
			var key = u.getAttribute( 'key' );
		}
		var t = iCom[key]['iTbl'],f = iCom[key]['iIfr'];
		if ( !iCom[key]['pospara'] ) {//若因异常未计算好定位所需参数
			return ;
		}

		var iow = iCom[key]['pospara']['iow'];
		var ioh = iCom[key]['pospara']['ioh'];

		var iex = iCom[key]['pospara']['iex'];
		var iey = iCom[key]['pospara']['iey'];

		var bsw = iCom[key]['pospara']['bsw'];
		var bsh = iCom[key]['pospara']['bsh'];

		var bch = iCom[key]['pospara']['bch'];
		
		//滚动参数要实时统计
		var bst = document.body.scrollTop || document.documentElement.scrollTop;
		
		//自动完成table参数要实时统计
		var tow = t.offsetWidth;
		var toh = t.offsetHeight;
		
		/*******************计算左右停靠位置**********************/
		var tsl = iex + tow > bsw ? iex + iow - tow : iex;
		/*****************************************/
		
		/*******************计算上下停靠位置**********************/
		var tst;
		var up = iey - ioh + 2 - toh;
		if ( iey + 220 <= bst + bch ) {//下限未超出滚动条下边界 停靠在输入框下方
			tst = iey;
		}
		else {//下限超出滚动条下限
			if ( iey + 220 > bsh ) {//下限超出body下边界 则不管是否会被隐藏都往上停靠
				tst = up;
			}
			else {//下限未超出整个body下边界
				if ( iey - ioh + 2 - 220 >= bst ) {//往上依靠时没有超出滚动条上边界,则停靠在输入框上方
					tst = up;
				}
				else {//否则停靠在输入框下方
					tst = iey;
				}
			}
		}
		/*****************************************/

		t.style.left = tsl + 'px';
		t.style.top = tst + 'px';
		if ( f ) {
			f.style.left = t.style.left;
			f.style.top = t.style.top;		
		}
	}

	function iResize( key ) {
		var a = iCom[key]['iTbl'];
		var b = iCom[key]['iIfr'] || '';
		var c = iCom[key]['iInput'];
		a.style.width = Math.max( c.offsetWidth , a.offsetWidth ) + 'px';
		if ( b ) {//ie须遮住
			b.style.width = a.offsetWidth + 'px';
			b.style.height = a.offsetHeight + 'px';
		}	
	}

	function iBefore() {
		var e = window.event;
		if ( !e || !e.toElement ) {
			return false;
		}
		if ( 'keep' == e.toElement.getAttribute( 'keep' ) ) {
			e.cancelBubble=true;
			e.returnValue=false;
			return false;	
		}
	}

	function iClose( e ) {
		if ( typeof e == 'string' ) {
			var key = e;
		}
		else {
			e = e || window.event;
			var t = e.srcElement || e.target;
			var key;
			while ( t && !( key = t.getAttribute( 'key' ) ) ) {
				t = t.parentNode;
			}
		}
		iCom[key]['iTbl'].style.visibility = 'hidden';
		if ( iCom[key]['iIfr'] ) {
			iCom[key]['iIfr'].style.visibility = 'hidden';
		}
	}

	function iOpen( key ) {
		iSetPos( key );
		iCom[key]['iTbl'].style.visibility = 'visible';
		if ( iCom[key]['iIfr'] ) {
			iCom[key]['iIfr'].style.visibility = 'visible';
		}
	}

	function iCheck( obj ) {
		var iLen = iCom.length,key;
		for ( var i = 1 ; i <= iLen ; i++ ) {
			key = iTag + i;
			if ( iCom[key] && iCom[key]['iInput'] == obj ) {
				return false;
			}
		}
		return true;
	}

	function trim() {
		var str = ( arguments[0] || '' ) + '',l_r = arguments[1] || '',regExp1 = /^ */,regExp2 = / *$/;
		switch ( l_r ) {
			case 'left'		:return str.replace(regExp1,'');
			case 'right'	:return str.replace(regExp2,'');
			default			:return str.replace(regExp1,'').replace(regExp2,'');
		}
	}

	function iCreateStyle() {//创建样式
		var a=document.body.dir=="rtl",b=a?"right":"left",c=a?"left":"right";
		var d=document.getElementsByTagName("head")[0],e=document.createElement("style"),f=null,h=null,m=false;
		e.id = iTag + 'ui';
		if(document.styleSheets){
			d.appendChild(e);
			m=true;
			f=e.sheet?e.sheet:e.styleSheet;
		}
		if(!f){
			h=document.createTextNode("");
			e.appendChild(h);
		}
		var k=function(D,E){
			var ma=D+" { "+E+" }";
			if(f){
				if(f.insertRule){
					f.insertRule(ma,f.cssRules.length);
				}
				else if(f.addRule){
					f.addRule(D,E);
				}
			}
			else{
				h.data+=ma+"\n";
			}
		};
		k("."+iTag+"m","font-size:13px;font-family:arial,sans-serif;cursor:default;line-height:17px;border:1px solid #7F9DB9;z-index:2;position:absolute;background-color:white;margin:0;");
		k("."+iTag+"a","cursor:pointer;");
		k("."+iTag+"b","background-color:#36c;color:white;cursor:pointer;");
		k("."+iTag+"c","white-space:nowrap;overflow:hidden;text-align:"+b+";padding-"+b+":3px;"+(iBrowser.I||iBrowser.O?"padding-bottom:1px;":""));
		k("."+iTag+"d","white-space:nowrap;overflow:hidden;text-align:"+c+";color:#0080FF;padding-"+b+":3px;padding-"+c+":3px;");
		k("."+iTag+"b td","color:white;");
		k("."+iTag+"e td","padding:0 3px 2px;text-align:"+c+";font-size:10px;line-height:15px;");
		k("."+iTag+"f","color:#ff7400;text-decoration:underline;cursor:pointer;");
		if ( !m ) {
			d.appendChild( e );
		} 
	}
})();

/*
 *Author	liyao 
 *Date		2008-5-20
 *Function	关键字自动完成页面调用初始化
 */
function initAutoCom() {
	//判断域名,只有二级域名相同才方便跨域调用ajax
	var domainArr = document.domain.split( '.' );
	if ( '51job.com' != domainArr[domainArr.length-2] + '.' + domainArr[domainArr.length-1] ) {
		return false;
	}
	//创建iframe对象
	window.ajaxIfr = document.createElement( 'iframe' );
	ajaxIfr.style.display = 'none';
	//ajaxIfr.src = 'http://ehire.51job.com/kwdsrv/kwdAjaxIframe.html';
	ajaxIfr.src = 'http://kwdsrv.51job.com/kwdAjaxIframe.html';
	document.body.appendChild( ajaxIfr );
	window.ajaxIfr = ajaxIfr;

	//var kwdProVideUrl = 'http://ehire.51job.com/kwdsrv/Default.aspx?kwdType=';
	var kwdProVideUrl = 'http://kwdsrv.51job.com/Default.aspx?kwdType=';

	window.iDp = [];
	iDp[0] = new DataProvide( kwdProVideUrl + 0 , lang );
	iDp[1] = new DataProvide( kwdProVideUrl + 1 , lang );
	iDp[2] = new DataProvide( kwdProVideUrl + 2 , lang );
	var kTypeIndex = document.page_form.keywordtype.value - 0;
	switch ( fileName ) {
		case 'index.php' :	var kwdObj = [form['keyword1']];
							clkFunc = [function() { form.keyword.value = form.keyword1.value; form.fromType.value=1;form.submit(); }];
							break;
		case 'keyword_search.php' : var kwdObj = [form['keyword1'] , document.getElementsByName('keyword3')[0]];
							clkFunc = [function() { form.keyword.value = form.keyword1.value; search_result(1); },function() { form.keyword.value = document.getElementsByName('keyword3')[0].value; search_result(16); }];
							break;
		case 'advance_search.php' : var kwdObj = [form['keyword']];clkFunc = [function() { advance_search(1); }];
							break;
		case 'search_result.php' : var kwdObj = [form['keyword1'] , document.getElementsByName('keyword3')[0]];
							clkFunc = [function() { form.keyword.value = form.keyword1.value; search_result(1); },function() { form.keyword.value = document.getElementsByName('keyword3')[0].value; search_result(16); }];
							break;
		case 'map_search.php' : var kwdObj=[form['keyword']];clkFunc = [function() { window.Dibaosel.page_form_submit(); }];break;
		case 'map_result.php' : var kwdObj = [form['keyword1'] , document.getElementsByName('keyword3')[0]];
							clkFunc = [function() { window.Dibaosel.map_result_form_submit( form , 1 ); } , function() { window.Dibaosel.map_result_form_submit( form , 16 ); }];
		default : break;
	}
	var kwdLen = kwdObj.length;
	for ( var i = 0 ; i < kwdLen ; i++ ) {
		iPush( [kwdObj[i] , iDp[kTypeIndex] , clkFunc[i]] );
	}

	/*关键字类型图文切换绑定相应事件*/
	var i = 0 , tobj = null;
	while ( tobj = $_( 'kt' + i ) ) {
		iAttEvt( tobj , 'click' , function( event ) { var e = event || window.event;var eobj = e.target || e.srcElement;chgIDP( eobj.id.substr( 2 , 1 ) ) } );
		i++;
	}

	/*关键字类型radio切换绑定相应事件*/
	var ktobj = form.keywordtype;
	var ktlen = ktobj.length;
	for ( var i = 0 ; i < ktlen ; i++ ) {
		iAttEvt( ktobj[i] , 'click' , function( event ) { var e = event || window.event;var eobj = e.target || e.srcElement;chgIDP( eobj.value ) } );
	}
}

function chgIDP( no ) {
	//联想功能ajax url 相应切换
	if ( iCom ) {
		var iLen = iCom.length;
		for ( var i = 0 ; i < iLen ; i++ ) {
			iCom[( iTag + ( i + 1 ) )]['iDp'] = iDp[no];
		}
	}
}

var funcIndex = [];
funcIndex['2400']=0;
funcIndex['0100']=1;
funcIndex['2500']=2;
funcIndex['2600']=3;
funcIndex['2700']=4;
funcIndex['2800']=5;
funcIndex['2900']=6;
funcIndex['0200']=7;
funcIndex['3000']=8;
funcIndex['3100']=9;
funcIndex['3200']=10;
funcIndex['0400']=11;
funcIndex['3300']=12;
funcIndex['2200']=13;
funcIndex['3400']=14;
funcIndex['3500']=15;
funcIndex['3600']=16;
funcIndex['0500']=17;
funcIndex['5400']=18;
funcIndex['3700']=19;
funcIndex['3800']=20;
funcIndex['3900']=21;
funcIndex['4000']=22;
funcIndex['0800']=23;
funcIndex['4100']=24;
funcIndex['5500']=25;
funcIndex['1300']=26;
funcIndex['4200']=27;
funcIndex['4300']=28;
funcIndex['0300']=29;
funcIndex['4400']=30;
funcIndex['4500']=31;
funcIndex['0900']=32;
funcIndex['2100']=33;
funcIndex['4600']=34;
funcIndex['4700']=35;
funcIndex['0600']=36;
funcIndex['0700']=37;
funcIndex['2300']=38;
funcIndex['1400']=39;
funcIndex['1100']=40;
funcIndex['1200']=41;
funcIndex['1000']=42;
funcIndex['4800']=43;
funcIndex['4900']=44;
funcIndex['5000']=45;
funcIndex['5100']=46;
funcIndex['1800']=47;
funcIndex['5200']=48;
funcIndex['1500']=49;
funcIndex['2000']=50;
funcIndex['1600']=51;
funcIndex['1700']=52;
funcIndex['5300']=53;
funcIndex['1900']=54;
function getFuntypeIDs( id ) {
	var k = funcIndex[id];
	var v = [];
	var len = subfunc_v[k].length;
	for ( var i = 0 ; i < len ; i++ ) {
		v.push( subfunc_v[k][i] );
	}
	return v;
}

function getFuntypeName( id ) {
	var k = funcIndex[( id.substring( 0 , 2 ) + '00' )];
	if ( !k && k != 0 ) {
		return '';
	}
	var len = subfunc_v[k].length;
	for ( var i = 0 ; i < len ; i++ ) {
		if ( id == subfunc_v[k][i] ) {
			return subfunc_s[k][i];
		}
	}
	return '';
}
var funWdArr = 'E' == lang ?  [240,185,220,840,645,195] : [210,200,160,710,570,140];
function initFuntype( layerId ) {
	if ( 'E' == lang ) {
		var psfun = 'Please Select Function';
		var closeword = 'Close';
		var clearword = 'Clear';
		var confirmword = 'Confirm';
		var selfun = 'Selected Function';
		var nomorethan = 'No more than ' + pLayer[layerId]['eleMaxNum'] + ' options';
	}
	else {
		var psfun = '请选择职能类别';
		var closeword = '关闭';
		var clearword = '清空';
		var confirmword = '确认';
		var selfun = '已选职能';
		var nomorethan = '您最多能选择' + pLayer[layerId]['eleMaxNum'] + '项';
	}

	var curNo=0;
	var curCount=0;
	var bgcolorArr=new Array('#F6F6F6','#ffffff');
	
	var str = '';
	str +='<table class="fun" width="' + funWdArr[3] + '">';

	//nav
	str +='<tr>';
	str +='<td height="36" valign="top" background="'+IMGPATH+'/images/title_bg.gif"  top="top" left="left">';
	str +='<table width="100%" height="28" border="0" cellpadding="0" cellspacing="0">';
	str +='<tr>';
	str +='<td align="left" valign="middle"  style="color:#fff;">&nbsp;&nbsp;<img src="'+IMGPATH+'/images/01.gif" valign="absmiddle"/>&nbsp;' + psfun + '&nbsp;( ' + nomorethan + ' )</td>';
	//str +='<td align="right" valign="middle" style="color:#FFFFFF;"><span style="cursor:pointer;" onclick="javascript:initLayer( \'' + layerId + '\' , \'\' );">[' + clearword + ']</span>&nbsp;&nbsp;<span style="cursor:pointer;" onclick="javascript:confirmLayer( \'' + layerId + '\' );" title="' + quickConfirmWord + '">[' + confirmword + ']</span>&nbsp;&nbsp;<span style="cursor:pointer;" onclick="javascript:closeLayer(\'' + layerId + '\');" title="' + quickCloseWord + '">[' + closeword + ']</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>';
	str +='<td align="right" valign="middle" style="color:#FFFFFF;"><span style="cursor:pointer;" onclick="javascript:confirmLayer( \'' + layerId + '\' );" title="' + quickConfirmWord + '">[' + confirmword + ']</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>';
	str +='</tr>';
	str +='</table>';
	str +='</td>';
	str +='</tr>';
	//nav end
	
	str +='<tr><td align="center" valign="top"><table class="tbl" valign="top">';

	//已选结果部分 start
	str +='<tr height="22"><td class="topN" width="' + funWdArr[5] + '" style="padding-left:3px;padding-right:10px;">' + selfun + '：</td><td id="sftb">';
	str +='<table class="tbl56" width="' + funWdArr[4] + '" valign="middle"><tbody><tr><td colspan="3" class="content_div"></td></tr></tbody></table>';
	str +='</td></tr>';
	//已选结果部分 end
	
	str +='<tr><td height="5" colspan="2"></td></tr>';
	//虚线
	str +='<tr><td height="5" colspan="2" background="' + IMGPATH + '/images/bgclear_bot.gif"></td></tr>';

	var len=func_v.length;
	var numArr = document.page_form.statData ? document.page_form.statData.value.split('|') : [];
	for ( var i = 0 ; i < len ; i++ ) {
		if ( i >= funtypeTop[curNo][1] ) {
			curNo++;
			str+= '<tr bgcolor="'+bgcolorArr[(curNo-1)%2]+'"><td class="topN" style="padding-left:3px;padding-right:10px;" width="' + funWdArr[5] + '">'+funtypeTop[curNo][0]+'</td><td><table class="tbl56" width="' + funWdArr[4] + '">';
			curCount=0;
		}
		curCount++;
		if ( 1 == curCount%3 ){
			str+='<tr>';
		}
		var num = numArr[func_v[i].substr(0,2)-1+51];//统计数据
		var numstr = num > 0 ? '(' + num + ')' : '';
		str += '<td layerId="' + layerId + '" pcode="' + func_v[i] + '" style="width:'+funWdArr[(curCount-1)%3]+'px;cursor:pointer;" onmouseover="chBgColor( this , 1 );allTdMover( this );" onmouseout="chBgColor( this , 0 );allTdMout( this );" onclick="openSubLayer( event , \'' + layerId + '\' , \'' + func_v[i] + '\' );" class="content_div"><span>' + func_s[i] + numstr +  '</span></td>';

		if ( 0 == curCount%3 ){
			str+='</tr>';
		}
		if ( i + 1 >= funtypeTop[curNo][1] ) {
			var subn = ( 3 - ( curCount % 3 ) ) % 3;
			for ( var j = 0 ; j <  subn ; j++  ) {
				str += '<td style="width:'+funWdArr[3-subn+j]+'px;"></td>';
			}
			str += subn ? '</tr>' : '';
			str += '</table></td></tr>';
		}
	}
	str += '</table></td></tr>';
	str += '<tr><td class="td33"></td></tr></table>';
	return str;
}

//create by liyao 2008-4-25
//弹出层公用文件
//调用到$_()
//***************************拖动函数 start **********************************//
var objX = 0;
var objY = 0;
function drag_mouse_down(event,obj){
	var obj_left = obj.style.left;
	var obj_top = obj.style.top;
	var obj_left = obj_left.replace(/p|x/g,"");
	var obj_top = obj_top.replace(/p|x/g,"");
	if ( event == null ) {//IE必须
		event=window.event;
	}
	var clientX = String(event.clientX).replace(/p|x/g,"");
	var clientY = String(event.clientY).replace(/p|x/g,"");
	objX = clientX - obj_left;
	objY = clientY - obj_top;
}

function drag(event,obj){
	if( objX != 0 && objY != 0 ) {
		if ( event == null ) {//IE必须
			event=window.event;
		}
		if ( event.button == 1 ||  event.button == 0 ){
			var objWidth=obj.firstChild.clientWidth;
			var objHeight=obj.firstChild.clientHeight;

			var leftPo= event.clientX-objX;
			if ( leftPo < 0 ) {
				leftPo=0;
			}
			var bsw = document.body.scrollWidth || document.documentElement.scrollWidth;
			if ( leftPo > bsw - objWidth ) {
				leftPo = bsw-objWidth;
			}

			var topPo=event.clientY-objY;
			if ( topPo < 0 ) {
				topPo=0;
			}

			var bsh = document.body.scrollHeight || document.documentElement.scrollHeight;
			if ( topPo > bsh - objHeight ) {
				topPo = bsh - objHeight;
			}
			obj.style.left=leftPo+'px';
			obj.style.top=topPo+'px';
		}
	}
}
//***************************拖动函数 end **********************************//

//*********************滤镜效果*********************

//创建滤镜层
function buildGlobalLayer() {
	//定义记住BODY滚动高度的全局变量
	window.bdscrollHeight = document.body.scrollHeight || document.documentElement.scrollHeight;
	if ( browser.msie && browser.version != '7.0' ) {//IE 7.0以下版本需加iframe
		var gIfr			= document.createElement( 'iframe' );
		gIfr.id				='globalIfr';
		gIfr.style.display	= 'none';
		gIfr.style.position	= 'absolute';
		gIfr.style.clear	= 'both';
		gIfr.style.zIndex	= '90';
		gIfr.style.left		= '0px';
		gIfr.style.top		= '0px';
		gIfr.style.width	= '0px';
		gIfr.style.height	= '0px';
		gIfr.style.border	= '0px #ffffff solid';
		gIfr.onselectstart	= function() { return false;};
		gIfr.style.filter	= 'alpha(opacity=0)';
		document.body.appendChild( gIfr );
	}
	var gDiv				= document.createElement( 'div' );
	gDiv.id					= 'globalDiv';
	gDiv.style.display		= 'none';
	gDiv.style.position		= 'absolute';
	gDiv.style.clear		= 'both';
	gDiv.style.zIndex		= '91';
	gDiv.style.left			= '0px';
	gDiv.style.top			= '0px';
	gDiv.style.width		= '0px';
	gDiv.style.height		= '0px';
	gDiv.style.border		= '0px #ffffff solid';
	gDiv.style.background	= 'darkgray';
	gDiv.onselectstart		= function() { return false;};
	if ( browser.msie ) {
		gDiv.style.filter	= 'alpha(opacity=30)';
	}
	else {
		gDiv.style.opacity	= 30/100;
	}
	document.body.appendChild( gDiv );
}

//打开滤镜层
function openGlobalLayer() {
	window.bdscrollHeight = document.body.scrollHeight || document.documentElement.scrollHeight;
	var bw = ( document.body.scrollWidth || document.documentElement.scrollWidth ) + 'px';
	var bh = ( document.body.scrollHeight || document.documentElement.scrollHeight ) + 'px';
	if ( $_( 'globalIfr' ) ) {
		$_( 'globalIfr' ).style.width	= bw;
		$_( 'globalIfr' ).style.height	= bh;
		$_( 'globalIfr' ).style.display = 'block';
	}
	$_( 'globalDiv' ).style.width		= bw;
	$_( 'globalDiv' ).style.height		= bh;
	$_( 'globalDiv' ).style.display		= 'block';
}

//关闭滤镜层
function closeGlobalLayer() {
	if ( $_("globalIfr") ) {
		$_( 'globalIfr' ).style.width	= '0px';
		$_( 'globalIfr' ).style.height	= '0px';
		$_("globalIfr").style.display	= 'none';
	}
	$_( 'globalDiv' ).style.width		= '0px';
	$_( 'globalDiv' ).style.height		= '0px';
	$_( 'globalDiv' ).style.display		= 'none';
}
//*********************滤镜效果 end*********************

//******************************定位 start******************************
function centerLayer( obj ) {
	var ocw = obj.firstChild.clientWidth;
	var och = obj.firstChild.clientHeight;
	var bsl = document.body.scrollLeft || document.documentElement.scrollLeft;
	var bst = document.body.scrollTop || document.documentElement.scrollTop;
	var bcw = document.body.clientWidth || document.documentElement.clientWidth;
	var bch = document.body.clientHeight || document.documentElement.clientHeight;
	var osl = bsl + Math.floor( ( bcw - ocw ) / 2 );
		osl = Math.max( bsl , osl );
	var ost = bst + Math.floor( ( bch - och ) / 2 );
		ost = Math.max( bst , ost );
	obj.style.left	= osl + 'px';
	obj.style.top	= ost + 'px';
}
function checkAndResetStyleTop( obj ) {
	var och = obj.firstChild.clientHeight;
	var ost = parseInt( obj.style.top.substring( 0 , obj.style.top.length - 2 ) );
	if ( och + ost > bdscrollHeight ) {
		obj.style.top = bdscrollHeight - och + 'px';
	}
}
//******************************定位 end******************************//

//******************************中间层 start******************************//

//***************************层参数索引 start **********************************//
var tLayer = [];
tLayer['j'] = 'popupArea';
tLayer['f'] = 'popupFuntype';
tLayer['i'] = 'popupIndustry';

var pLayer = [];

pLayer['relSchMore'] = [];
pLayer['popupIssuedate'] = [];

pLayer['popupArea'] = [];
pLayer['popupFuntype'] = [];
pLayer['popupIndustry'] = [];

pLayer['popupArea']['eleName']		= 'jobarea';
pLayer['popupFuntype']['eleName']	= 'funtype';
pLayer['popupIndustry']['eleName']	= 'industrytype';

pLayer['popupIssuedate']['eleName']	= 'issuedate';

pLayer['popupArea']['isMulSel']		= true;
pLayer['popupFuntype']['isMulSel']	= true;
pLayer['popupIndustry']['isMulSel']	= true;

pLayer['popupArea']['selResTdId']		= 'areaSelResTd';
pLayer['popupFuntype']['selResTdId']	= 'funtypeSelResTd';
pLayer['popupIndustry']['selResTdId']	= 'industrySelResTd';

pLayer['popupArea']['btnName']		= 'btnSltArea';
pLayer['popupFuntype']['btnName']	= 'btnSltFuntype';
pLayer['popupIndustry']['btnName']	= 'btnSltIndustry';

pLayer['popupIssuedate']['btnName']	= 'btnSltIssuedate';

pLayer['popupArea']['selResColNum']		= 5;
pLayer['popupFuntype']['selResColNum']	= 1;
pLayer['popupIndustry']['selResColNum']	= 1;

pLayer['popupArea']['eleMaxNum']		= 5;
pLayer['popupFuntype']['eleMaxNum']	= 5;
pLayer['popupIndustry']['eleMaxNum']	= 5;

pLayer['popupArea']['selResChxIdPrefix']		= 'rjchx';
pLayer['popupFuntype']['selResChxIdPrefix']		= 'rfchx';
pLayer['popupIndustry']['selResChxIdPrefix']	= 'richx';

pLayer['popupArea']['selResSpnIdPrefix']		= 'rjspn';
pLayer['popupFuntype']['selResSpnIdPrefix']		= 'rfspn';
pLayer['popupIndustry']['selResSpnIdPrefix']	= 'rispn';

pLayer['popupArea']['selChxIdPrefix']			= 'sjchx';
pLayer['popupFuntype']['selChxIdPrefix']		= 'sfchx';
pLayer['popupIndustry']['selChxIdPrefix']		= 'sichx';

pLayer['popupArea']['selSpnIdPrefix']			= 'sjspn';
pLayer['popupFuntype']['selSpnIdPrefix']		= 'sfspn';
pLayer['popupIndustry']['selSpnIdPrefix']		= 'sispn';

pLayer['popupArea']['lstChxIdPrefix']			= 'ljchx';
pLayer['popupFuntype']['lstChxIdPrefix']		= 'lfchx';
pLayer['popupIndustry']['lstChxIdPrefix']		= 'lichx';

pLayer['popupArea']['lstSpnIdPrefix']			= 'ljspn';
pLayer['popupFuntype']['lstSpnIdPrefix']		= 'lfspn';
pLayer['popupIndustry']['lstSpnIdPrefix']		= 'lispn';

pLayer['popupArea']['allChxIdPrefix']			= 'ajchx';
pLayer['popupFuntype']['allChxIdPrefix']		= 'afchx';
pLayer['popupIndustry']['allChxIdPrefix']		= 'aichx';

pLayer['popupArea']['allSpnIdPrefix']			= 'ajspn';
pLayer['popupFuntype']['allSpnIdPrefix']		= 'afspn';
pLayer['popupIndustry']['allSpnIdPrefix']		= 'aispn';

pLayer['popupArea']['selObjId']			= 'sjtr';
pLayer['popupFuntype']['selObjId']		= 'sftb';
pLayer['popupIndustry']['selObjId']		= 'sitb';

//点击父类时是否默认勾上父类
pLayer['popupArea']['isDefaultToDoCheckedWithParent']		= false;
pLayer['popupFuntype']['isDefaultToDoCheckedWithParent']	= false;

//父类子层是否关闭标志数组
pLayer['popupArea']['isCloseSubLayerTag']		= [];
pLayer['popupFuntype']['isCloseSubLayerTag']	= [];

//父类子层ID前缀
pLayer['popupArea']['subLayerIdPrefix']			= 'subap';
pLayer['popupFuntype']['subLayerIdPrefix']		= 'subaf';

if ( browser.msie ) {
	var chxValignVal = 'bottom';
	var chxValign = 'vertical-align:' + chxValignVal + ';';
	var spnValignVal = 'bottom';
	var spnValign = 'vertical-align:' + spnValignVal + ';';
	var clsTop = 'padding-top:3px';
}
else {
	var chxValignVal = 'bottom';
	var chxValign = 'vertical-align:' + chxValignVal + ';';
	var spnValignVal = 'bottom';
	var spnValign = 'vertical-align:' + spnValignVal + ';';
	var clsTop = 'padding-top:0px';
}

if ( 'E' == lang ) {
	var noMoreThan = 'No more than ';
	var opt = ' options';
	var esci = 'Each selected category includes all of its sub-categories.';
	var quickCloseWord = 'Press Esc or ~ to close';
	var quickConfirmWord = 'Press Enter to confirm';
}
else {
	var noMoreThan = '您最多能选择';
	var opt = '项';
	var esci = '选择此大类，将包括以下所有小类';
	var quickCloseWord = '按 Esc键 或 ~键 直接关闭';
	var quickConfirmWord = '按 回车键(Enter) 直接确定';
}

//***************************层参数索引 start **********************************//

var layers		= [];
var dragObjs	= [];
var layerIds	= [];

function buildLayer() {
	var argArr = buildLayer.arguments;

	//定义层需要的初始字串变量
	var mainTable = '';
	var k;
	for(var i=0;i<argArr.length;i++){
		//求出其相应的TABLE
		var layerId = argArr[i];
		switch ( layerId ) {
			case 'popupArea':		mainTable = initJobArea( layerId );break;
			case 'popupFuntype':	mainTable = initFuntype( layerId );break;
			case 'popupIndustry':	mainTable = initIndustrytype( layerId );break;
			case 'popupSubfuntype':	mainTable = initSubfuntype( layerId );break;
			case 'popupIssuedate':	mainTable = initIssuedate( layerId );break;
			case 'relSchMore':		if ( !$_( 'relSchMoreEle' ) || !$_( 'relSchMoreVal' ) ) { return false;};
									mainTable = initRelSchMore( layerId );break;
			default :return false;
		}
		k = layers.length;
		layerIds[k] = layerId;

		layers[k] = document.createElement( 'div' );
		layers[k].id = layerId;
		layers[k].style.visibility = 'hidden';
		layers[k].style.position = 'absolute';
		layers[k].style.clear = 'both';
		layers[k].style.zIndex = '91';
		layers[k].innerHTML += mainTable;
		layers[k].style.left = '0px';
		layers[k].style.top = '0px';
		layers[k].style.border = '0px #ffffff solid';

		dragObjs[k]=layers[k].firstChild.firstChild.firstChild.firstChild;
		dragObjs[k].style.cursor='move';
		dragObjs[k].onmousedown = function( event ) {
			drag_mouse_down( event , this.parentNode.parentNode.parentNode.parentNode );
		};
		
		if ( browser.msie ) {
			layers[k].onselectstart = function() { return false;};
			layers[k].firstChild.onresize = function(){ checkAndResetStyleTop( this.parentNode );};
		}

		document.body.appendChild( layers[k] );
		if ( pLayer[layerId]['eleName'] ) {
			checkEleVal( layerId );
			showSelRes( layerId , form[pLayer[layerId]['eleName']].value );
		}
	}
}

function checkEleVal( layerId ) {
	var eleName = pLayer[layerId]['eleName'];
	var ids = form[eleName].value.split( ',' ),len = ids.length;
	for ( var i = 0 ; i < len  ; i++  ) {
		if ( !getShowName( layerId , ids[i] ) ) {
			form[eleName].value = '';
			break;
		}
	}
}

//记录body的相关初始
var bdMouseMove = document.body.onmousemove;
var bdMouseUp = document.body.onmouseup;
var docKeyDown = document.onkeydown;
//记录事件
function recordDocEvent() {
	bdMouseMove = document.body.onmousemove;
	bdMouseUp = document.body.onmouseup;
	docKeyDown = document.onkeydown;
}
//恢复事件
function recoverDocEvent() {
	document.body.onmousemove = bdMouseMove;
	document.body.onmouseup = bdMouseUp;
	document.onkeydown = docKeyDown;
}

//鼠标点击其它区域
/*
var docMouseDown = document.onmousedown;
//记录事件
function recordDocMouseDown() {
	docMouseDown = document.onmousedown;
}
//恢复事件
function recoverDocMouseDown() {
	document.onmousedown = docMouseDown;
}
*/

var curLayerId = '';//当前层ID
var curSubLayerId = '';//当前子层ID
function openLayer( layerId ) {
	if ( $_( layerId ) ) {
		if ( pLayer[layerId]['isMulSel'] ) {
			initLayer( layerId , form[pLayer[layerId]['eleName']].value );
		}
		if ( curLayerId != layerId && $_( curLayerId ) ) {
			closeLayer( curLayerId );//关闭当前层
		}
		openGlobalLayer();//打开滤镜层
		var obj = $_( layerId );
		if ( obj.style.visibility == 'hidden' ) {
			centerLayer( obj );
			obj.style.visibility = 'visible';
		}
		recordDocEvent();//记录全局事件
		document.body.onmousemove = function( event ) { drag( event , obj );};
		document.body.onmouseup = function() { objX = 0; objY=0;};
		document.onkeydown = closeOrConfirmLayer;
		curLayerId = layerId;//记录当前层ID
	}
}

function closeLayer( layerId ){
	if ( $_( layerId ) ) {
		if ( $_( curSubLayerId ) ) {
			closeSubLayer( curSubLayerId );
		}
		closeGlobalLayer();
		$_( layerId ).style.visibility = "hidden";
		recoverDocEvent();
		curLayerId = '';
	}
}

function closeSubLayer( subLayerId ) {
	if ( $_( subLayerId ) ) {
		$_( subLayerId ).style.visibility = "hidden";
		//recoverDocMouseDown();
		curSubLayerId = '';
	}
}


function closeOrConfirmLayer( e ) {
	var e = e || window.event;
	if ( 27 == e.keyCode || 192 == e.keyCode ) {//按ESC 或 ~ 键关闭层
		if ( $_( curSubLayerId ) ) {
			closeSubLayer( curSubLayerId );
			e.cancelBubble=true;
			e.returnValue=false;
			return false;
		}
		if ( $_( curLayerId ) ) {
			closeLayer( curLayerId );
			e.cancelBubble=true;
			e.returnValue=false;
			return false;
		}
	}
	else if ( 13 == e.keyCode ) {//按回车键确定层
		if ( $_( curLayerId ) && pLayer[curLayerId]['isMulSel'] ) {
			confirmLayer( curLayerId );
			e.cancelBubble=true;
			e.returnValue=false;
			return false;
		}
	}
}

/*
function isColseSubLayer( event ) {
	var e = event || window.event;
	var obj = e.srcElement || e.target;
	if ( $_( curSubLayerId ) && obj != $_( curSubLayerId ) && !isChild( $_( curSubLayerId ) , obj , 10 ) ) {
		closeSubLayer( curSubLayerId );
	}
}
*/

function openSubLayer( e , layerId , id ) {
	//layerId 层ID , id 子层ID数字部分
	var subLayerId = pLayer[layerId]['subLayerIdPrefix'] + id;

	if ( subLayerId != curSubLayerId && $_( curSubLayerId ) ) {
		closeSubLayer( curSubLayerId );
	}

	if ( !$_( subLayerId ) ) {
		buildSubLayer( layerId , id );
	}

	if ( pLayer[layerId]['isDefaultToDoCheckedWithParent'] ) {
		//是否默认帮用户勾上父类
		var ids = getSelIds( layerId );
		var len = ids.length;
		var eleMaxNum = pLayer[layerId]['eleMaxNum'];
		if ( len >= eleMaxNum ) {
			alert( noMoreThan + eleMaxNum + opt );
			return false;
		}
		var idPrefix2 = id.substring( 0 , 2 );
		var flag = true;
		for ( var i = 0 ; i < len ; i++ ) {
			if ( ids[i].substring( 0 , 2 ) == idPrefix2 ) {
				flag = false;
				break;
			}
		}
		if ( flag ) {
			doChecked( layerId , id );
		}
	}

	e = e || window.event; 
	var sobj = $_( subLayerId );
	fallowMouse( e , sobj );

	sobj.style.visibility = 'visible';

	//recordDocMouseDown();
	//document.onmousedown = function( event ) {isColseSubLayer( event );};

	curSubLayerId = subLayerId;
}

function buildSubLayer( layerId , id ) {
	var subLayerId = pLayer[layerId]['subLayerIdPrefix'] + id;
	var div = document.createElement( 'div' );
	div.id =subLayerId;
	div.style.zIndex = '92';
	div.style.position = 'absolute';
	div.style.visibility = 'hidden';
	div.bgcolor = '#FEFFEF';
	var selChxIdPrefix = pLayer[layerId]['selChxIdPrefix'];
	var allChxIdPrefix = pLayer[layerId]['allChxIdPrefix'];
	var allSpnIdPrefix = pLayer[layerId]['allSpnIdPrefix'];
	
	switch ( layerId ) {
		case 'popupArea': var ids = getAreaIDs( id ),num = ids.length - 1,cols = Math.ceil( Math.sqrt( num ) );break;
		case 'popupFuntype': var ids = getFuntypeIDs( id ),num = ids.length - 1,cols = num > 16 ? 2 : 1;break;
		default : return false;
	}

	var tstr = '<table cellpadding="0" cellspacing="0" style="border:1px solid #FF7B00;" bgcolor="#FEFFEF">';

	var chked = $_( selChxIdPrefix + ids[0] ).checked ? 'checked' : '';
	//tstr += '<tr><td colspan="' + cols + '"><table class="tbl" width="100%"><tr style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="chxOrSpnClkFunc( this.firstChild.childNodes[1] );"><td><input style="' + chxValign + '" type="checkbox" id="' + allChxIdPrefix + ids[0] + '" value="' + ids[0] + '" onclick="chxClk( this );" ' + chked + '><span style="font-weight:800;' + spnValign + '" id="' + allSpnIdPrefix + ids[0] + '">' + getShowName( layerId , ids[0] ) + '</span></td><td  align="right" style="width:50px;' + clsTop + '">&nbsp;&nbsp;<a class="orange3" href="javascript:goNone();" onclick="clkTocloseSubLayer( event , \'' + subPrefix + ids[0] + '\' );" title="' + quickCloseWord + '">' + ( 'E' == lang ? 'Close' : '关闭' ) + '</a>&nbsp;</td></tr></table></td></tr>';
	tstr += '<tr><td colspan="' + cols + '" style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="chxOrSpnClkFunc( this.childNodes[1] );"><input style="' + chxValign + '" type="checkbox" id="' + allChxIdPrefix + ids[0] + '" value="' + ids[0] + '" onclick="chxClk( this );" ' + chked + '><span style="font-weight:800;' + spnValign + '" id="' + allSpnIdPrefix + ids[0] + '">' + getShowName( layerId , ids[0] ) + '</span>&nbsp;</td></tr>';
	for ( var i = 1 ; i <= num ; i++ ) {
		tstr += 0 == ( i - 1 ) % cols ? '<tr height="20">' : '';
		chked = $_( selChxIdPrefix + ids[i] ).checked ? 'checked' : '';
		tstr += '<td style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="chxOrSpnClkFunc( this.childNodes[1] );"><input style="' + chxValign + '" type="checkbox" id="' + allChxIdPrefix + ids[i] + '" value="' + ids[i] + '" onclick="chxClk( this );" ' + chked + '><span style="' + spnValign + '" id="' + allSpnIdPrefix + ids[i] + '">' + getShowName( layerId , ids[i] ) + '</span>';
		tstr += ( cols - 1 ) == ( i - 1 ) % cols ? '&nbsp;</td></tr>' : '&nbsp;&nbsp;</td>';
	}
	var n = ( cols - ( ( i - 1 ) % cols ) ) % cols;
	tstr += n ? '<td colspan="' + n + '"></td></tr>' : '';
	tstr += '</table>';
	div.innerHTML = tstr;
	document.body.appendChild( div );
	div.setAttribute( 'layerId' , layerId );
	div.setAttribute( 'pcode' , id );
	div.onmouseover = function() { allTdMover( this ); };
	div.onmouseout = function() { allTdMout( this ); };
}

/*
function clkTocloseSubLayer( event , subLayerId ) {
	event = event || window.event;
	event.cancelBubble = true;
	closeSubLayer( subLayerId );
}
*/

function fallowMouse( e , obj ) {
	var ex = e.clientX;
	var ey = e.clientY;
	var bl = document.body.scrollLeft || document.documentElement.scrollLeft;
	var bt = document.body.scrollTop || document.documentElement.scrollTop;
	var bw = document.body.clientWidth || document.documentElement.clientWidth;
	var bh = document.body.clientHeight || document.documentElement.clientHeight;
	var ow = obj.clientWidth;
	var oh = obj.clientHeight;
	var ol = ex + ow > bw ? ex + bl - ow : ex + bl;
	ol = Math.max( bl , ol );
	var ot = ey + oh > bh ? ey + bt - oh : ey + bt;
	ot = ot < bt ? bt + bh - oh : ot;
	ot = ot < bt ? bt : ot;
	obj.style.left = ol + 'px';
	obj.style.top = ot + 'px';
}

function getSelIds( layerId ) {
	var t = $_(  pLayer[layerId]['selObjId'] ).getElementsByTagName( 'input' ), l = t.length,v = [];
	for ( var i = 0 ; i < l  ; i++  ) {
		if ( t[i].checked ) {
			v.push( t[i].value );
		}
	}
	return v;
}

function getSelNames( layerId , selIds ) {
	if ( !selIds ) {
		return [];
	}
	if ( selIds.constructor != Array ) {
		selIds = selIds.split( ',' );
	}
	var l = selIds.length,v = [];
	for ( var i = 0 ; i < l  ; i++  ) {
		v.push( getShowName( layerId , selIds[i] ) );
	}
	return v;
}

function confirmLayer( layerId ) {
	var selIds = getSelIds( layerId );
	showSelRes( layerId , selIds );
	closeLayer( layerId );
}

function initLayer( layerId , strIds ) {
	var ids = getSelIds( layerId );
	var len = ids.length;
	for ( var i = 0 ; i < len ; i ++ ) {
		cancelChecked( layerId , ids[i] );
	}
	if ( !strIds ) {
		return false;
	}
	ids = strIds.split( ',' );
	len = ids.length;
	for ( var i = 0 ; i < len ; i ++ ) {
		doChecked( layerId , ids[i] );
	}
}

function cancelChecked( layerId , id ) {
	var selObjId = pLayer[layerId]['selObjId'];
	var selChxIdPrefix = pLayer[layerId]['selChxIdPrefix'];
	var lstChxIdPrefix = pLayer[layerId]['lstChxIdPrefix'];
	var allChxIdPrefix = pLayer[layerId]['allChxIdPrefix'];

	if ( 'popupArea' == layerId ) {
		if ( $_( selChxIdPrefix + id ) ) {
			var tmpTr = $_( selObjId );
			var rmTd = $_( selChxIdPrefix + id ).parentNode;
			tmpTr.removeChild( rmTd );
			tmpTr.appendChild( document.createElement( 'td' ) );
		}
	}
	else if ( 'popupFuntype' == layerId || 'popupIndustry' == layerId ) {
		if ( $_( selChxIdPrefix + id ) ) {
			$_( selChxIdPrefix + id ).checked = false;
		}
		setFunIndSelObjHtml( layerId , getSelIds( layerId ) );
	}
	else {
		return false;
	}
	if ( $_( lstChxIdPrefix + id ) ) {
		$_( lstChxIdPrefix + id ).checked = false;
	}
	if ( $_( allChxIdPrefix + id ) ) {
		$_( allChxIdPrefix + id ).checked = false;
	}
}

function doChecked( layerId , id ) {
	var selObjId = pLayer[layerId]['selObjId'];
	var selChxIdPrefix = pLayer[layerId]['selChxIdPrefix'];
	var selSpnIdPrefix = pLayer[layerId]['selSpnIdPrefix'];
	var lstChxIdPrefix = pLayer[layerId]['lstChxIdPrefix'];
	var allChxIdPrefix = pLayer[layerId]['allChxIdPrefix'];

	if ( $_( selChxIdPrefix + id ) ) {//如果已经存在选中项,说明出现异常,则先删除该项,然后再钩上此值对应3项
		alert( '出现异常' );
		cancelChecked( layerId , id );
		doChecked( layerId , id );
		return false;
	}	
	if ( 'popupArea' == layerId ) {
		var selChx = document.createElement( 'input' );
		selChx.id = selChxIdPrefix + id;
		selChx.type = 'checkbox';
		selChx.value = id;
		selChx.style.verticalAlign = chxValignVal;
		selChx.onclick = function() { chxClk( this );};
		
		var selSpn = document.createElement( 'span' );
		selSpn.id = selSpnIdPrefix + id;
		selSpn.innerHTML = getShowName( layerId , id );
		selSpn.style.verticalAlign = spnValignVal;

		var tmpTd = document.createElement( 'td' );
		tmpTd.appendChild( selChx );
		tmpTd.appendChild( selSpn );
		tmpTd.style.cursor = 'pointer';
		tmpTd.onmouseover = function () { chBgColor( this , 1 ); };
		tmpTd.onmouseout = function () { chBgColor( this , 0 ); };
		tmpTd.onclick = function () { chxOrSpnClkFunc( this.childNodes[1] ); };


		var tmpTr = $_( selObjId );
		tmpTr.removeChild( tmpTr.lastChild );
		tmpTr.insertBefore( tmpTd , tmpTr.childNodes[getSelIds( layerId ).length+1] );
		selChx.checked = true;	
	}
	else if ( 'popupFuntype' == layerId || 'popupIndustry' == layerId ) {
		var selIds = getSelIds( layerId );
		selIds.push( id );
		setFunIndSelObjHtml( layerId , selIds );
	}
	else {
		return false;
	}
	if ( $_( lstChxIdPrefix + id ) ) {
		$_( lstChxIdPrefix + id ).checked = true;
	}
	if ( $_( allChxIdPrefix + id ) ) {
		$_( allChxIdPrefix + id ).checked = true;
	}
}

function setFunIndSelObjHtml( layerId , selIds ) {
	var selObjId = pLayer[layerId]['selObjId'];
	var selChxIdPrefix = pLayer[layerId]['selChxIdPrefix'];
	var selSpnIdPrefix = pLayer[layerId]['selSpnIdPrefix'];

	switch ( layerId ) {
		case 'popupFuntype':var wdArr = funWdArr;break;
		case 'popupIndustry':var wdArr= indWdArr;break;
		default : return false;
	}
	var len = selIds.length;
	var fCols = 3;
	var tblStr = '<table class="tbl56" valign="middle" width="' + wdArr[4] + '">';
	for ( var i = 0 ; i < len  ; i++  ) {
		if ( 0 == i % fCols ) {
			tblStr += '<tr>';
		}
		var chxId = selChxIdPrefix + selIds[i];
		var spnId = selSpnIdPrefix + selIds[i];
		var sname = getShowName( layerId , selIds[i] );
		var sn = i % fCols;
		var slen = Math.floor( wdArr[sn] / 180 * ( 'E' == lang ? 28 : 22 ) );
		var tstr = '';
		if ( GetLength( sname ) > slen ) {
			tstr = 'title=' + sname;
			sname = subStringPro( sname , slen ) + '...';
		}

		tblStr += '<td ' + tstr + ' style="width:' + wdArr[sn] + 'px;cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="chxOrSpnClkFunc( this.childNodes[1] );"  class="content_div"><input style="' + chxValign + '" type="checkbox" id="' + chxId + '" value="' + selIds[i] + '"' + ' checked' + ' onclick="chxClk( this );" ><span style="' + spnValign + '" id="' + spnId + '">' + sname + '</span></td>';
		if ( ( fCols - 1 ) == i % fCols ) {
			tblStr += '</tr>';
		}
	}
	var n = ( fCols - ( i % fCols ) ) % fCols,tr2 = '';
	for ( var i = 0 ; i < n  ; i++  ) {
		tblStr += '<td style="width:' + wdArr[( fCols - ( n - i ) )] + 'px;"  class="content_div"></td>';
		tr2 = '</tr>';
	}
	tblStr += tr2;
	tblStr += '</table>';
	$_( selObjId ).innerHTML = tblStr;
	if ( !browser.msie ) {
		checkAndResetStyleTop( $_( layerId ) );
	}
}

function chBgColor( obj , type ) {
	if ( type ) {
		var objBgColor = '#FFA22E';
		var objColor = '#ffffff';
	}
	else {
		var objBgColor = '';
		var objColor = '#000000';
	}
	obj.bgColor = objBgColor;
	obj = 'TR' == obj.nodeName ? obj.firstChild : obj;
	obj.style.color = objColor;
}

function chxClk( obj ) {
	obj.checked = !obj.checked;
}

function chxOrSpnClkFunc( obj ) {
	var t1 = obj.id.substring( 0 , 2 );
	var t2 = obj.id.substring( 2 , 5 );
	var t3 = obj.id.substring( 5 );
	var tag = obj.id.charAt( 1 );
	layerId = tLayer[tag];

	var chxObj = $_( t1 + 'chx' + t3 );
	if ( 'spn' == t2 ) {
		chxObj.checked = !chxObj.checked;
	}
	if ( chxObj.checked ) {//打钩
		if ( 'popupArea' == layerId || 'popupFuntype' == layerId ) {
			var p1 = t3.substring( 0 , 2 );
			var p2 = t3.substring( 2 );
			if ( '00' == p2 ) {//选择父级,取消该父级下所有子级
				var ids = getSelIds( layerId );
				var len = ids.length;
				for ( var i = 0 ; i < len  ; i++  ) {
					if ( ids[i].substring( 0 , 2 ) == p1 && ids[i] != t3 ) {
						cancelChecked( layerId , ids[i] );
					}
				}
			}
			else {//选择子级,取消该子集所属父集
				cancelChecked( layerId , p1 + '00' );
			}
		}
		var eleMaxNum = pLayer[layerId]['eleMaxNum'];

		if ( getSelIds( layerId ).length >= eleMaxNum ) {
			chxObj.checked = false;
			alert( noMoreThan + eleMaxNum + opt );
			return false;
		}
		doChecked( layerId , t3 );
	}
	else {//取消
		cancelChecked( layerId , t3 );
	}
}

function getShowName( layerId , id ) {
	id += '';
	switch ( layerId ) {
		case 'popupArea': return ja[id];break;
		case 'popupFuntype': return getFuntypeName( id );break;
		case 'popupIndustry': if ( !indIndex[id] && indIndex[id] != 0 ) {return '';} return ind_s[indIndex[id]];break;
		case 'popupIssuedate':return pubschedule_show[id-1];break;
		default : return '';
	}
}

//用到全局变量fileName
function showSelRes( layerId , selIds ) {
	if ( !selIds ) {
		selIds = [];
	}
	if ( selIds.constructor != Array ) {
		selIds = selIds.split( ',' );
	}
	var selResTdId = pLayer[layerId]['selResTdId'];
	var eleName = pLayer[layerId]['eleName'];
	var btnName = pLayer[layerId]['btnName'];
	var selResColNum = pLayer[layerId]['selResColNum'];
	var selResChxIdPrefix = pLayer[layerId]['selResChxIdPrefix'];
	var selResSpnIdPrefix = pLayer[layerId]['selResSpnIdPrefix'];
	
	if ( form[eleName] ) {
		form[eleName].value = selIds.join( ',' );
	}

	if ( $_( selResTdId ) ) {
		var len = selIds.length;
		var perWd = Math.floor( 1.0 / selResColNum * 100 ) + '%';
		var tblStr = '<table width="100%" border="0" cellspacing="0" cellpadding="0" valign="top">';
		for ( var i = 0 ; i < len  ; i++  ) {
			if ( 0 == i % selResColNum ) {
				tblStr += '<tr>';
			}
			var chxId = selResChxIdPrefix + selIds[i];
			var spnId = selResSpnIdPrefix + selIds[i];
			var strNames = getShowName( layerId , selIds[i] );
			var len1 = GetLength( strNames );
			var len2 = 'E' == lang ? 40 : 32;
			var tstr = '';
			var strNames1 = len1 > len2 ? subStringPro( strNames , len2 ) : strNames;
			if ( strNames != strNames1 ) {
				tstr = 'title="' + strNames + '"';
				strNames1 += '...';
			}
			tblStr += '<td ' + tstr + ' width=' + perWd + ' style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="selResClk( \'' + layerId + '\' , \'' + spnId + '\');"><input style="' + chxValign + '" type="checkbox" id="' + chxId + '" value="' + selIds[i] + '"' + ' checked' + ' onclick="chxClk( this );"><span style="' + spnValign + '" id="' + spnId + '">' + strNames1 + '</span></td>';
			if ( ( selResColNum - 1 ) == i % selResColNum ) {
				tblStr += '</tr>';
			}
		}
		var n = ( selResColNum - ( i % selResColNum ) ) % selResColNum,tr2 = '';
		for ( var i = 0 ; i < n  ; i++  ) {
			tblStr += '<td width=' + perWd + '></td>';tr2 = '</tr>';
		}
		tblStr += tr2;
		tblStr += '</table>';
		$_( selResTdId ).innerHTML = tblStr;
	}
	var btns = document.getElementsByName( btnName );
	var blen = btns.length;
	if ( blen ) {
		var strNames = getSelNames( layerId , selIds ).join( '+' );
		var len1 = GetLength( strNames );
		var unitNum = 'E' == lang ? 13/130 : 12/94;
		pLayer[layerId]['btnTitle'] = pLayer[layerId]['btnTitle'] || [];
		pLayer[layerId]['empWords'] = pLayer[layerId]['empWords'] || [];
		for ( var i = 0 ; i < blen  ; i++  ) {
			pLayer[layerId]['btnTitle'][i] = pLayer[layerId]['btnTitle'][i] || btns[i].title;
			pLayer[layerId]['empWords'][i] = pLayer[layerId]['empWords'][i] || btns[i].value;
			if ( strNames ) {
				var btniLen = btns[i].clientWidth;
				var len2 = Math.floor( btniLen * unitNum );
				var tstr = '';
				var vstr = len1 > len2 ? subStringPro( strNames , len2 ) : strNames;
				if ( strNames != vstr ) {
					tstr = strNames;
					vstr += '...';
				}
			}
			else {
				var tstr = pLayer[layerId]['btnTitle'][i];
				var vstr = pLayer[layerId]['empWords'][i];
			}
			btns[i].title = tstr;
			btns[i].value = vstr;
		}	
	}
}

function selResClk( layerId , objId ) {
	var t1 = objId.substring( 0 , 2 );
	var t2 = objId.substring( 2 , 5 );
	var t3 = objId.substring( 5 );
	var chxObj = $_( t1 + 'chx' + t3 );
	if ( 'spn' == t2 ) {
		chxObj.checked = !chxObj.checked;
	}
	var selResTdId = pLayer[layerId]['selResTdId'];
	var resChxObjs = $_( selResTdId ).getElementsByTagName( 'input' ),len = resChxObjs.length,selIds = [];
	for ( var i = 0 ; i < len  ; i++  ) {
		if ( resChxObjs[i].checked ) {
			selIds.push( resChxObjs[i].value );
		}
	}
	showSelRes( layerId , selIds );
}

function selOneClk( layerId , selIds ) {
	showSelRes( layerId , selIds );
 	closeLayer( 'popupIssuedate' );
}

function allTdMover( obj ) {
	pLayer[obj.getAttribute( 'layerId' )]['isCloseSubLayerTag'][obj.getAttribute( 'pcode' )] = false;
}

function allTdMout( obj ) {
	pLayer[obj.getAttribute( 'layerId' )]['isCloseSubLayerTag'][obj.getAttribute( 'pcode' )] = true;
	setTimeout( isCloseCurSubLayerByTag , 5 );
}

function isCloseCurSubLayerByTag() {
	var tmp;
	if ( tmp = $_( curSubLayerId ) ) {
		if ( pLayer[tmp.getAttribute( 'layerId' )]['isCloseSubLayerTag'][tmp.getAttribute( 'pcode' )] ) {
			closeSubLayer( curSubLayerId );
		}
	}
}
//******************************中间层 end******************************//

function initIssuedate(  layerId ) {
	if ( 'E' == lang ) {
		var psdt = 'Please Select Date';
		var nolimitword = 'No Limit';
		var showemp = 'Select/Modify';
		var closeword = 'Close';
	}
	else {
		var psdt = '请选择日期';
		var nolimitword = '不限';
		var showemp = '选择/修改';
		var closeword = '关闭';
	}

	var str = '';
	str +='<table class="tbl" width="445" bgcolor="#ffffff">';

	//nav
	str +='<tr>';
	str +='<td height="36" valign="top" background="'+IMGPATH+'/images/title_bg.gif"  top="top" left="left">';
	str +='<table width="100%" height="28" border="0" cellpadding="0" cellspacing="0">';
	str +='<tr>';
	str +='<td align="left" valign="middle"  style="color:#fff;">&nbsp;&nbsp;<img src="'+IMGPATH+'/images/01.gif" valign="absmiddle"/>&nbsp;' + psdt + '</td>';
	str +='<td align="right" valign="middle" style="color:#FFFFFF;"><span style="cursor:pointer;" onclick="javascript:closeLayer(\'' + layerId + '\');" title="' + quickCloseWord + '">[' + closeword + ']</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>';
	str +='</tr>';
	str +='</table>';
	str +='</td>';
	str +='</tr>';
	//nav end
	
	str +='<tr><td align="center" valign="top" width="100%"><table class="tbl" valign="top" width="100%">';
	
	var len = pubschedule_value.length,cols = 3,id,ss;
	for ( var i = 0 ; i < len + 1 ; i++  ) {
		str += 0 == ( i % cols ) ? '<tr>' : '';
		if ( i == len ) {
			id = '9';
			ss = nolimitword;
		}
		else {
			id = pubschedule_value[i];
			ss = pubschedule_show[i];
		}
		str += '<td height="25" align="center" style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="selOneClk(\'' + layerId + '\',\'' + id + '\')"><span>' + ss + '</span></td>';
		str += ( cols - 1 ) == ( i % cols ) ? '</tr>' : '';
	}
	var subn = ( cols - ( i % cols ) ) % cols;
	str += subn ? '<td colspan="' + subn + '"></td></tr>' : '';
	str += '</table></td></tr>';
	str+='<tr><td class="td33"></td></tr></table>';
	return str;
}

function initRelSchMore(  layerId ) {
	var ename = document.getElementById( 'relSchMoreEle' ).value;
	var evalue = document.getElementById( 'relSchMoreVal' ).value.split( '|' );
	if ( 'funtype' == ename ) {
		var tname = 'E' == lang ? 'Please Select Function' : '请选择职能';
	}
	else {
		var tname = 'E' == lang ? 'Please Select Keyword' : '请选择关键字';
	}
	var closeword = 'E' == lang ? 'Close' : '关闭';

	var str = '';
	str +='<table class="tbl" width="645" bgcolor="#ffffff">';

	//nav
	str +='<tr>';
	str +='<td height="36" valign="top" background="'+IMGPATH+'/images/title_bg.gif"  top="top" left="left">';
	str +='<table width="100%" height="28" border="0" cellpadding="0" cellspacing="0">';
	str +='<tr>';
	str +='<td align="left" valign="middle"  style="color:#fff;">&nbsp;&nbsp;<img src="'+IMGPATH+'/images/01.gif" valign="absmiddle"/>&nbsp;' + tname + '</td>';
	str +='<td align="right" valign="middle" style="color:#FFFFFF;"><span style="cursor:pointer;" onclick="javascript:closeLayer(\'' + layerId + '\');" title="' + quickCloseWord + '">[' + closeword + ']</span>&nbsp;&nbsp;&nbsp;&nbsp;</td>';
	str +='</tr>';
	str +='</table>';
	str +='</td>';
	str +='</tr>';
	//nav end
	
	str +='<tr><td align="center" valign="top" width="100%"><table class="tbl" valign="top" width="100%">';
	
	var len = evalue.length,cols = 3,vk;
	for ( var i = 0 ; i < len  ; i++  ) {
		str += 0 == ( i % cols ) ? '<tr>' : '';
		vk = evalue[i].split( '~' );
		str += '<td height="25" align="center" style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="relResearch(\'' + ename + '\',\'' + vk[0] + '\')"><span>' + ( 'funtype' == ename ? vk[1] : vk[0] ) + '</span></td>';
		str += ( cols - 1 ) == ( i % cols ) ? '</tr>' : '';
	}
	var subn = ( cols - ( i % cols ) ) % cols;
	str += subn ? '<td colspan="' + subn + '"></td></tr>' : '';
	str += '</table></td></tr>';
	str+='<tr><td class="td33"></td></tr></table>';
	return str;
}

//create by liyao 2008-4-25
//搜索结果主要调用的JS文件
if ( 'E' == lang ) {
	var psj = 'Please select jobs!';
	var rootDir = '/esc';
	var apj = 'eapplyjob';
	var myj = 'emy';
	var pepn = 'Please enter the page number!';
}
else {
	var psj = '请在要选择的职位前打勾!';
	var rootDir = '/jobsearch';
	var apj = 'applyjob';
	var myj = 'my';
	var pepn = '请输入您要跳转的页数!';
}
function trim(str){
	regExp1 = /^ */;
	regExp2 = / *$/;
	str     = str.toString();
	return str.replace(regExp1,'').replace(regExp2,'');
}

function CA(){
    for(var i=0;i<document.freshlist.elements.length;i++){
        var e=document.freshlist.elements[i];
        if((e.name).indexOf('selectedjobid')!=-1) 
            e.checked=document.getElementsByName('allbox')[0].checked;
    }
}

function JDL(){
    var jobuni='(';
    for(var i=0;i<document.freshlist.elements.length;i++){
        var e=document.freshlist.elements[i];
        if((e.name).indexOf('selectedjobid')!=-1)
            if ( e.checked==true )  {
				if (jobuni!='(') {
					jobuni=jobuni+',';
				}
				jobuni=jobuni+e.value;
			}
    }
    jobuni=jobuni+')';
	if (jobuni=='()'){
		window.alert( psj )
	}
	else{
		//iframe 职位点击统计
		acStat( jobuni );
		//写职位操作日志
		doLogAct( jobuni );
    	document.showjobdetail.jobiduni.value=jobuni;
	    document.showjobdetail.action = rootDir + "/show_job_detail.php?id="+jobuni;
	    document.showjobdetail.submit();
	}
}

function OJDL(jobuni){
	acStat( jobuni );//iframe 职位点击统计
	doLogAct( jobuni );//写职位操作日志
}

function selected_id(){
    var jobuni='(';
    for(var i=0;i<document.freshlist.elements.length;i++){
        var e=document.freshlist.elements[i];
        if((e.name).indexOf('selectedjobid')!=-1)
            if ( e.checked==true){
                if (jobuni!='(')
                    jobuni=jobuni+',';
                jobuni=jobuni+e.value;
            }
    }
    jobuni=jobuni+')';
    return jobuni;
}

function ApplyAll() {
	var a = selected_id();
	if (a=='()'){
		window.alert( psj );
	}
	else{
		//iframe 职位点击统计
		acStat( a );
		//写职位操作日志
		writePosOptLog( 'click' , a );
		writePosOptLog( 'post' , a );
		//记录职位点击量
		jobview( a );
		window.open( php_domain_my+"/sc/" + apj + "/applyjob.php?jobiduni="+a );
	}
}

function applyjob( jobid ) {
	//iframe 职位点击统计
	acStat( jobid );
	if ( -1 == location.pathname.indexOf('show_job_detail.php') ) {
		//职位详情页面申请职位时已经打开了页面,不再需要重复记录日志
		jobview( jobid );
		writePosOptLog( 'click' , jobid );
	}
	//写职位操作日志
	writePosOptLog( 'post' , jobid );
	var randNo=parseInt(Math.random()*1000000);
	window.open(php_domain_my+'/sc/' + apj + '/applyjob.php?'+randNo+'&jobiduni=('+jobid+')', '_blank');
}

function putinmyjobfolder(){
	var randNo=parseInt(Math.random()*1000000);
    if( 1 == arguments.length ){
	   	putinmyjobfolder2(arguments[0]);
	   	return;
	}
	var a = selected_id();
	if (a=='()'){
		window.alert( psj );
	}
	else{
		ReadWin=window.open(php_domain_my+"/" + myj + "/folder/Fo_PutIn.php?"+randNo+"&jobiduni=" + a,"jobfolder","width=640,height=360,resizable=yes,scrollbars=yes,toolbar=yes,location=yes,menubar=yes,status=yes");
		ReadWin.focus();
	}
}

function putinmyjobfolder2(jobid){
	var randNo=parseInt(Math.random()*1000000);
    var WinURL1 = php_domain_my+"/" + myj + "/folder/Fo_PutIn.php?"+randNo+"&jobiduni="+jobid;
    ReadWin=window.open(WinURL1,"_blank","width=640,height=360,resizable=yes,scrollbars=yes,toolbar=yes,location=yes,menubar=yes,status=yes");
    ReadWin.opener=self;
    ReadWin.focus();
}

function jump( jpage ){
    if( '' == trim( jpage )){
        alert( pepn );
        return false;
    }
    page_obj       = document.forms.page_form.elements.curr_page;
    if( parseInt(jpage,10) < 1 ){
        page_obj.value = 1;
    }
    else if( parseInt(jpage,10) > parseInt(document.forms.page_form.elements.total_page.value,10) ){
        page_obj.value = document.forms.page_form.elements.total_page.value;
    }
    else{
        page_obj.value = jpage;
    }
	document.forms.page_form.fromType.value = 14;
    document.forms.page_form.target = "_self";
    document.forms.page_form.submit();
}

function selectdate( jdate ){
	var frm = document.forms.page_form;
	frm.curr_page.value = 1;
    frm.issuedate.value = jdate;
    frm.target = "_self";
    frm.submit();
}


function mod_some( val, ename ){
    var form_obj    = document.forms.page_form;
	var obj		= document.getElementsByName(ename)[0];
    obj.value   = val;
    if ( 'ord_field' == ename ) {
		form_obj.curr_page.value = 1;
		form_obj.fromType.value = 1 == val ? 10 : 11;
	}
	else if ( 'list_type' == ename ) {
		form_obj.fromType.value = 1 == val ? 12 : 13;
	}
    document.forms.page_form.target='_self';
    form_obj.submit();
}

function doLogAct( jobid ) {
	if ( typeof isWritePosOptLog == 'undefined' || !isWritePosOptLog || !jobid ) {
		return false;
	}
	if ( Array == jobid.constructor ) {//数组
		var jobidArr = jobid;
	}
	else if ( typeof jobid == 'string' || typeof jobid == 'number' ) {
		var jobidArr = jobid.toString().replace( /\(|\)/g , '' ).split( ',' );
	}
	else {
		return false;
	}
	var posOptLogSpt = 'var posOptLogArr=[];';
	var jLen = jobidArr.length || 0;
	for ( var k = 0 ; k < jLen ; k++ ) {
		if ( typeof posOptLogArr != 'undefined' ) {
			posOptLogSpt += posOptLogArr[jobidArr[k]] ? 'posOptLogArr[\'' + jobidArr[k] + '\']=\'' + posOptLogArr[jobidArr[k]] + '\';' : '';
		}
	}
	bidToForm( document.showjobdetail , 'posOptLogSpt' , posOptLogSpt );
}

function bidToForm( frmObj , eleName , eleValue ) {
	if ( 'FORM' != frmObj.nodeName || typeof eleName != 'string' || ( typeof eleValue != 'string' && typeof eleValue != 'number' ) ) {
		return false;
	}
	if ( !frmObj[eleName] ) {
		var hidInputEle = document.createElement( 'input' );
		hidInputEle.type = 'hidden';
		hidInputEle.name = eleName;
		frmObj.appendChild( hidInputEle );
	}
	hidInputEle.value = eleValue;
}

function jobview ( jobid ) {
	if ( typeof IS_TRACE_JOBVIEW == 'undefined' || !IS_TRACE_JOBVIEW ) {
		return false;
	}
	var oriSrc='/jobsearch/jobview.php?jobiduni='+jobid;
	if ( !document.getElementById( 'jobviewImg' ) ) {
		var jobviewImg=document.createElement('img');
		jobviewImg.id = 'jobviewImg';
		jobviewImg.width = jobviewImg.height = 0;
		jobviewImg.style.display = 'none';
		document.body.appendChild( jobviewImg );
	}
	document.getElementById( 'jobviewImg' ).src=getNewSrc( document.getElementById( 'jobviewImg' ).src, oriSrc );
}

function writePosOptLog( type , jobid ) {
	if ( typeof isWritePosOptLog == 'undefined' || !isWritePosOptLog ||!jobid ) {
		return false;
	}
	if ( Array == jobid.constructor ) {//数组
		var jobidArr = jobid;
	}
	else if ( typeof jobid == 'string' || typeof jobid == 'number' ) {
		var jobidArr = jobid.toString().replace( /\(|\)/g , '' ).split( ',' );
	}
	else {
		return false;
	}
	var jobInfoStr='';
	var len = jobidArr.length || 0;
	var tmp = '';

	for ( var i = 0 ; i < len ; i++ ) {
		tmp = typeof posOptLogArr != 'undefined' && posOptLogArr[jobidArr[i]] ? posOptLogArr[jobidArr[i]] : jobidArr[i] + '|0000|00';
		jobInfoStr += 0 == i ? tmp : ',' + tmp;
	}
	if ( !jobInfoStr ) {
		return false;
	}
	var oriSrc='/jobsearch/writePosOptLog.php?type='+type+'&jobInfoStr='+jobInfoStr;
	if ( !document.getElementById( 'logImg' ) ) {
		var logImg=document.createElement('img');
		logImg.id = 'logImg';
		logImg.width = logImg.height = 0;
		logImg.style.display = 'none';
		document.body.appendChild( logImg );
	}
	document.getElementById( 'logImg' ).src=getNewSrc( document.getElementById( 'logImg' ).src, oriSrc );
}

function getNewSrc( oldSrc, oriSrc ) {
	var newSrc;
	do {
		newSrc = oriSrc + "&" + Math.random();
	}
	while ( oldSrc == newSrc );
	return newSrc;
}

function acStat( jobid ) {//51job框架调用职位点击统计
	if ( typeof isWriteAcStat == 'undefined' || !isWriteAcStat || !jobid || !acStatType ) {
		return false;
	}

	if ( Array == jobid.constructor ) {//数组
		var jobidArr = jobid;
	}
	else if ( typeof jobid == 'string' || typeof jobid == 'number' ) {
		var jobidArr = jobid.toString().replace( /\(|\)/g , '' ).split( ',' );
	}
	else {
		return false;
	}
	var len = jobidArr.length;
	var oriSrc='http://ac.51job.com/phpAD/Pagelog.php?Type=' + acStatType;
	for ( var i = 0 ; i < len ; i++ ) {
		if ( !document.getElementById( 'acStat' + jobidArr[i] ) ) {
			var acStatImg=document.createElement('img');
			acStatImg.id = 'acStat' + jobidArr[i];
			acStatImg.width = acStatImg.height = 0;
			acStatImg.style.display = 'none';
			document.body.appendChild( acStatImg );
		}
		document.getElementById( 'acStat' + jobidArr[i] ).src=getNewSrc( document.getElementById( 'acStat' + jobidArr[i] ).src, oriSrc );
	}
}

function relResearch( e , v ) {
	var frm  = document.page_form;
	frm[e].value = v;
	frm.curr_page.value=1;
	frm.start_page.value=1;
	frm.fromType.value=15;
	frm.submit();
	return false;
}

//create by liyao 2007-8-30
//modify by liyao 2008-4-10
//搜索结果页面提交用到的函数
if ( 'E' == lang ) {
	var pekf = 'Please enter keyword or select ' + ( 'keyword_search.php' == fileName ? '' : 'job function/' ) + 'location!';
	var trimInitKwd = 'Example：Software Engineer Shanghai or Project Manager Internet';
	var enterkwd = 'Enter keyword(s)';
}
else {
	var pekf = '请输入关键字,或者选择' + ( 'keyword_search.php' == fileName ? '' : '职能类别/' ) + '工作地点!';
	var trimInitKwd = '例如：软件工程师 上海 或 项目经理 互联网';
	var enterkwd = '输入排除关键字';
}
function search_result( fromType ) {
	if ( trimInitKwd == Jtrim(form.keyword.value)  ) {
		form.keyword.value = '';
	}

	var keywordBool = !Jtrim( form.keyword.value );
	var funtypeBool = 'keyword_search.php' == fileName ? true : ( !Jtrim(form.funtype.value) || '0000' == Jtrim(form.funtype.value) );
	var jobareaBool = 'map_result.php' == fileName ? false : ( '' == Jtrim(form.jobarea.value) || '0000' == Jtrim(form.jobarea.value) );

	if ( keywordBool && funtypeBool && jobareaBool && 'advance_search.php' != fromType ) {
		alert( pekf );
		var objKey= 16 == fromType ? document.getElementsByName('keyword3')[0] : form.keyword1;
		objKey.focus();
		return false;
	}

	var frm  = document.page_form;
	frm.curr_page.value = 1;
	frm.start_page.value = 1;

	frm.workyear.value = '';
	frm.degreefrom.value = '';
	frm.cotype.value = '';
	frm.providesalary.value = '';
	frm.jobterm.value = '';
	//新增district临时字段记录区的选择，以后可能取消
	if ( frm.district ) {
		frm.district.value = '';
	}

	//start 先全清以下三个字段值，对map_result.php单独去赋值处理，以免干扰其它情况的搜索
	if ( frm.address ) {
		frm.address.value = '';
	}

	if ( frm.radius ) {
		frm.radius.value = '';
	}
	//end

	//重新搜索时，必须清空该值，这样server端会根据address去获取新的lonlat
	if ( frm.lonlat ) {
		frm.lonlat.value = '';
	}

	if ( 'keyword_search.php' == fileName ) {//keyword_search.php
		frm.jobarea.value = form.jobarea.value;
		frm.keywordtype.value = form.keywordtype.value;
		frm.funtype.value = '';
		frm.industrytype.value = '';
		frm.issuedate.value = '';
	}
	else if ( 'search_result.php' == fileName ) {//search_result.php
		frm.jobarea.value = form.jobarea.value;
		//处理radio单选按钮
		var tmp = form.keywordtype,len = tmp.length;
		for ( var i = 0 ; i < len  ; i++  ) {
			if ( tmp[i].checked ) {
				frm.keywordtype.value = tmp[i].value;
				break;
			}
		}
		frm.funtype.value = form.funtype.value;
		frm.industrytype.value = form.industrytype.value;
		frm.issuedate.value = form.issuedate.value;
	}
	else if ( 'map_result.php' == fileName ) {//map_result.php
		var tmp = form.jobarea;
		for ( var i = 0 ; i < tmp.length ; i++ ) {
			if ( tmp[i].checked ) {
				frm.jobarea.value = tmp[i].value;
				break;
			}
		}
		frm.keywordtype.value = form.keywordtype.value;
		frm.funtype.value = form.funtype.value;
		frm.industrytype.value = form.industrytype.value;
		frm.issuedate.value = form.issuedate.value;
		
		frm.address.value = form.address.value;
		frm.radius.value = form.radius.value;
	}

	frm.keyword.value = form.keyword.value;

	//added by yaoyi 2007/06/28 频道页面加上周边，则变成了省份，导致热门职位出不来，所以用postfrom记录下了搜索频道，再次搜索时，需要替换为选择的工作地点，否则热门职位不再随工作地点变化而变化
	if ( frm.postfrom ) {
		frm.postfrom.value = frm.jobarea.value;
	}

	if ( 'advance_search.php' == fromType ) {
		frm.action = 'advance_search.php';
	}
	else {
		frm.action = fileName;
	}

	frm.fromType.value = fromType;
	frm.submit();
	return false;
}

function reSch( fObj , val , fromType ) {
	fObj.value=val;
	document.page_form.fromType.value=fromType;
	document.page_form.curr_page.value=1;
	document.page_form.start_page.value=1;
	document.page_form.submit();
}

function districtClk( districtVal ) {
	var districtVal12 = districtVal.substr( 0 , 2 );
	document.page_form.jobarea.value = '99' == districtVal12 || '0302' == districtVal ? '0302' : districtVal12+'00';
	reSch( document.page_form.district , districtVal , 17 );
}

function chgBdCor(obj,type,sColor){
	if ( 0 == type ) {
		obj.style.color='#ff7300';
		obj.style.borderColor='#FB760A';
		obj.style.background='#FEEFE1';
	}
	else {
		obj.style.color=sColor;
		obj.style.borderColor='#ffffff';
		obj.style.background='#ffffff';	
	}
}

function CSH( id ) {
	if ( 'none' == $_(id+'_2').style.display ) {
		var bImg='url('+IMGPATH+'/images/apt_arrow_b.gif) no-repeat left center';
		var disp='';
	}
	else {
		var bImg='url('+IMGPATH+'/images/apt_arrow_a.gif) no-repeat left center';
		var disp='none';
	}
	$_(id+'_1').style.background=bImg;
	$_(id+'_2').style.display=disp;
}

//关键字再搜索提交处理函数
function reKey( kwdObj , fromType ){
	var frm=document.page_form;
	if ( kwdObj.value == enterkwd ) {
		kwdObj.value='';
	}
	frm.fromType.value = fromType;
	frm.curr_page.value = 1;
	frm.start_page.value = 1;

	var tmp = kwdObj.value;
	frm.keyword.value += ( 'C' == lang && arguments[2] == '-' ) ? ( ( tmp = trim( tmp.replace( /[^\u3040-\u318f\u3100-\u312f\u3040-\u309F\u30A0-\u30FF\u31F0-\u31FF\u3300-\u337f\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\uff65-\uff9fa-zA-Z0-9@#$%&']+/g , ' ' ) ) ) ? ( ' ' + tmp ).replace( / +/g,' -') : '' ) : ( ( tmp = trim( tmp ) ) ? ' ' + tmp : '' );

	frm.submit();
}

function moreCondSearch() {
	form.keyword.value = form.keyword1.value;
	search_result( 'advance_search.php' );
	return false;
}

function showOrHiddenLeftTr(id){
	var obj=document.getElementById(id+'Tr');
	if ( 'none' == obj.style.display ) {
		var type='';
		var className='apt_arrow_b';
	}
	else {
		var type='none';
		var className='apt_arrow_a';
	}
	document.getElementById(id+'Td').className=className;
	obj.style.display=type;
}

function chgCls(obj,tag) {
	if ( 1 == tag ) {
		clsName='m_over';
		color='#ff7300';
	}
	else {
		clsName='m_out';
		color='#8B8B8B';
	}
	var chdObj=obj.firstChild.firstChild.firstChild.firstChild
	if ( '→&nbsp;'== chdObj.innerHTML ) {
		color="#ff7300";
	}
	obj.className=clsName;
	chdObj.style.color=color;
	chdObj.nextSibling.style.color=color;
}
