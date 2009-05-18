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
	htmlDiv +='<td height="36" valign="top" background="'+IMGPATH+'/title_bg.gif"  top="top" left="left">';
	htmlDiv +='<table width="100%" height="28" border="0" cellpadding="0" cellspacing="0">';
	htmlDiv +='<tr>';
	htmlDiv +='<td width="4%" align="center" valign="middle"><img src="'+IMGPATH+'/01.gif" /></td>';
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
	htmlDiv +='<td align="left" width="' + w1 + '" style="color:#ff7400; font-size: 14px; font-weight: bold;padding-left:' + pl + 'px;">' + selara + '：</td>';
	for ( i = 0 ; i < rl  ; i++ ) {
		htmlDiv +='<td></td>';
	}
	htmlDiv +='</tr>';
	//已选地点初始化结束
	
	//虚线
	htmlDiv +='<tr><td height="5" colspan="' + ( rl + 1 ) + '" background="' + IMGPATH + '/bgclear_bot.gif"></td></tr>';

	//主要城市开始
	htmlDiv +='<tr height="' + h1 + '">';
	htmlDiv +='<td align="left" colspan="' + ( rl + 1 ) + '" bgcolor="#F7F7F7" style="color:#ff7400; font-size: 14px; font-weight: bold;padding-left:' + pl + 'px;">' + mcity + '：</td>';
	htmlDiv +='</tr>';
	
	plen = maincity.length;
	var lstChxIdPrefix = pLayer[layerId]['lstChxIdPrefix'];
	var lstSpnIdPrefix = pLayer[layerId]['lstSpnIdPrefix'];
	for ( i = 0 ; i < plen ; i++ ) {
		tmp = maincity[i];
		htmlDiv +='<tr height="' + h1 + '">';
		htmlDiv +='<td align="left" style="color:#000000;font-weight: bold;padding-left:' + pl + 'px;">' + tmp[0] + '：</td>';
		slen = tmp[1].length;
		for ( k = 0 ; k < slen ; k++ ) {
			htmlDiv += k && 0 == k % rl ? '<tr><td style="padding-left:' + pl + 'px;"></td>' : '';
			htmlDiv += '<td align="left" width="' + w2 + '" style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="chxOrSpnClkFunc( this.childNodes[1] );"><input style="' + chxValign + '"  type="checkbox" id="' + lstChxIdPrefix + tmp[1][k] + '" value="' + tmp[1][k] + '" onclick="chxClk( this );"><span style="' + spnValign + '" id="' + lstSpnIdPrefix + tmp[1][k] + '">' + ja[tmp[1][k]] + '</span></td>';
			htmlDiv += ( rl - 1 ) == k % rl ? '</tr>' : '';
		}
		n = ( rl - ( k % rl ) ) % rl;
		htmlDiv += n ? '<td colspan="' + n + '"></td></tr>' : '';
	}
	//主要城市结束
	
	//虚线
	htmlDiv +='<tr><td height="5" colspan="' + ( rl + 1 ) + '" background="' + IMGPATH + '/bgclear_bot.gif"></td></tr>';

	//主要省份开始
	htmlDiv +='<tr height="' + h1 + '">';
	htmlDiv +='<td align="left" colspan="' + ( rl + 1 ) + '" bgcolor="#F7F7F7" style="color:#ff7400; font-size: 14px; font-weight: bold;padding-left:' + pl + 'px;">' + aprov + '：</td>';
	htmlDiv +='</tr>';
	
	plen = allprov.length;
	var me;
	var pd1 = '&nbsp;';
	var allChxIdPrefix = pLayer[layerId]['allChxIdPrefix'];
	var allSpnIdPrefix = pLayer[layerId]['allSpnIdPrefix'];
	for ( i = 0 ; i < plen ; i++ ) {
		tmp = allprov[i];
		htmlDiv +='<tr height="' + h1 + '">';
		htmlDiv +='<td align="left" style="color:#000000;font-weight: bold;padding-left:' + pl + 'px;">' + tmp[0] + '：</td>';
		slen = tmp[1].length;

		for ( k = 0 ; k < slen ; k++ ) {
			htmlDiv += k && 0 == k % rl ? '<tr><td style="padding-left:' + pl + 'px;"></td>' : '';
			if ( plen - 1 == i ) {//香港澳门等地区
				htmlDiv += '<td align="left" style="cursor:pointer;" onmouseover="chBgColor( this , 1 )" onmouseout="chBgColor( this , 0 )" onclick="chxOrSpnClkFunc( this.childNodes[1] );"><input style="' + chxValign + '" type="checkbox" id="' + allChxIdPrefix + tmp[1][k] + '" value="' + tmp[1][k] + '" onclick="chxClk( this );"><span style="' + spnValign + '" id="' + allSpnIdPrefix + tmp[1][k] + '">' + ja[tmp[1][k]] + '</span></td>';
			}
			else {
				htmlDiv += '<td align="left" layerId="' + layerId + '" pcode="' + tmp[1][k] + '" style="cursor:pointer;" onmouseover="chBgColor( this , 1 );allTdMover( this );" onmouseout="chBgColor( this , 0 );allTdMout( this );" onclick="openSubLayer( event , \'' + layerId + '\' , \'' + tmp[1][k] + '\' );">' + pd1 + '<span>' + ja[tmp[1][k]] + '</span></td>';
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