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
			var bsw = document.documentElement.scrollWidth || document.documentElement.scrollWidth;
			if ( leftPo > bsw - objWidth ) {
				leftPo = bsw-objWidth;
			}

			var topPo=event.clientY-objY;
			if ( topPo < 0 ) {
				topPo=0;
			}

			var bsh = document.documentElement.scrollHeight || document.documentElement.scrollHeight;
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
	window.bdscrollHeight = document.documentElement.scrollHeight || document.documentElement.scrollHeight;
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
	window.bdscrollHeight = document.documentElement.scrollHeight || document.documentElement.scrollHeight;
	var bw = ( document.documentElement.scrollWidth || document.documentElement.scrollWidth ) + 'px';
	var bh = ( document.documentElement.scrollHeight || document.documentElement.scrollHeight ) + 'px';
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
	var bsl = document.documentElement.scrollLeft || document.documentElement.scrollLeft;
	var bst = document.documentElement.scrollTop || document.documentElement.scrollTop;
	var bcw = document.documentElement.clientWidth || document.documentElement.clientWidth;
	var bch = document.documentElement.clientHeight || document.documentElement.clientHeight;
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
var bdMouseMove = document.documentElement.onmousemove;
var bdMouseUp = document.documentElement.onmouseup;
var docKeyDown = document.onkeydown;
//记录事件
function recordDocEvent() {
	bdMouseMove = document.documentElement.onmousemove;
	bdMouseUp = document.documentElement.onmouseup;
	docKeyDown = document.onkeydown;
}
//恢复事件
function recoverDocEvent() {
	document.documentElement.onmousemove = bdMouseMove;
	document.documentElement.onmouseup = bdMouseUp;
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
		document.documentElement.onmousemove = function( event ) { drag( event , obj );};
		document.documentElement.onmouseup = function() { objX = 0; objY=0;};
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
	var bl = document.documentElement.scrollLeft || document.documentElement.scrollLeft;
	var bt = document.documentElement.scrollTop || document.documentElement.scrollTop;
	var bw = document.documentElement.clientWidth || document.documentElement.clientWidth;
	var bh = document.documentElement.clientHeight || document.documentElement.clientHeight;
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