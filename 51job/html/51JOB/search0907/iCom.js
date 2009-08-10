/*
 *Function: �ؼ����Զ����
 *Author:	Liyao
 *Date:		2008-3-12
 *Modify:	Liyao 2008-5-27
 *Modify:	Liyao 2008-8-20 �������ƴ��ƥ�䷽ʽ��ȥ����ǰ׺�����жϻ���
 */
(function(){
	var ca = navigator.userAgent.toLowerCase();
	iBrowser = {
		I: ca.indexOf("msie")!=-1,
		M: ca.indexOf("mozilla") != -1,
		O: ca.indexOf("opera")!=-1,
		S: ca.indexOf("webkit") != -1
	}
	
	//�����ṩ����
	window.DataProvide = function () {
		this.ajaxUrl = arguments[0] || '?';
		this.lang = arguments[1] || 'c';
		this.resWord = 'c' == this.lang ? '���' : 'results';
		this.abuWord = 'c' == this.lang ? 'Լ' : 'about';
		this.maxGetNum = 10;//�����ṩ�ӿ�ÿ���ṩ������¼��
		this.dataArr = [];
		this.rDataArr = function ( key , kwd , onFunc ) {
			kwd = trim( kwd , 'left' );//ȥ����ߵĿո�
			var _kwd = '_' + kwd;
			var uKwd = window.encodeURIComponent ? encodeURIComponent( kwd ) : escape( kwd );
			if ( this.dataArr[_kwd] ) {//�ѻ����,ֱ�ӵ��û����¼,�������·���http����
				onFunc( key , kwd , this.dataArr[_kwd] );
			}
			else {
				//2008-8-20 liyao �������ƴ��ƥ�䷽ʽ��ȥ����ǰ׺�����жϻ���
				document.domain = '51job.com';
				if ( !window.ajaxIfr || !ajaxIfr.contentWindow || !ajaxIfr.contentWindow.$ ) {//�쳣�ж�
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
			if ( a[0] && 'text' == a[0].type && a[1] && 'function' == typeof a[2] && a[1] instanceof DataProvide && iCheck( a[0] ) ) {//������֤
				if ( !document.getElementById( iTag + 'ui' ) ) {
					iCreateStyle();
				}
				iCom[key] = {};
				iCom[key]['iInput'] = a[0];
				iCom[key]['iDp'] = a[1];
				iCom[key]['iOnEvt'] = a[2];
				iCom[key]['iOnSetVal'] = a[3];
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

		u.setAttribute( 'key' , key );//�����Զ�������
		u.setAttribute( 'vIndex' , -1 );//�����Զ������� value in table row index
		u.setAttribute( 'preVal' , u.value );//�����Զ������� value in table row index

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

	window.iAttEvt = function( a , b , c ) {//���¼�
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

	//�ж��Ƿ��ϼ�
	function isUp( a ) { return a == 38 || a == 63232; }

	//�ж��Ƿ��¼�
	function isDown( a ){ return a == 40 || a == 63233; }

	//�ж��Ƿ��Ҽ�
	function isRight( a ){ return a == 39; }

	//�ж��Ƿ����·����
	function isUD( a ) { return isUp(a) || isDown(a); }

	//��¼ǰ���ֵ
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
		
		if ( 27 == a || !trim( u.value ) ){//��esc�����߿�ֵ
			iClose( key );//�ص���
			return false;
		}

		if ( rKwd != u.value || ( isRight( a ) && -1 != vIndex ) || preVal != u.value ) {
			//������ݲ�һ��|�����Ҽ�����ֵ������Ϊ-1|ֵ�����˸ı�,���������ṩ����
			iCom[key]['iDp'].rDataArr( key , u.value , exec );
			return false;
		}

		if ( isUD( a ) ) {//ֻ���������¼������
			//ֱ�Ӵ�����ʾ���������ƶ�tableѡ��
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
		//����
		iFillTbl( key , kwd , data );
		//������ʾ��
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
		//u.value = this.completeString;
		iSetInputVal( u , this.completeString );
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

		//�رհ�ť����ʱȡ��
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
		iInsert( D , '�ر�' );
		D.onclick = iClose;
		*/

		iResize( key );
	}

	function iUpDown() {//���µ���������
		var key = arguments[0];
		var a = arguments[1] || 0;
		if ( !isUD( a ) ) {//�����¼�
			return false;
		}

		var u = iCom[key]['iInput'];
		var vIndex = u.getAttribute( 'vIndex' );

		var t = iCom[key]['iTbl'];
		var hIndex = t.getAttribute( 'hIndex' );
		var kwd = t.getAttribute( 'kwd' );
		var rLen = t.rows.length;

		if ( !( rLen - 1 ) ) {//���table��û������,��ر� table,����
			iClose( key );
			return false;
		}
		
		if ( 'hidden' == t.style.visibility ) {//����ǹص�,���
			ChHigh( t , vIndex );
			iOpen( key );
			return false;
		}

		hIndex1 = isDown( a ) ? hIndex - 0 + 1 : hIndex - 1;
		hIndex1 = hIndex1 < -1 ? rLen - 2 : ( hIndex1 > rLen - 2 ? -1 : hIndex1 );
		ChHigh( t , hIndex1 );
		//u.value =  -1 == hIndex1 ? kwd : t.rows[hIndex1].completeString;
		iSetInputVal( u , -1 == hIndex1 ? kwd : t.rows[hIndex1].completeString );
		u.setAttribute( 'vIndex' , hIndex1 );
	}

	function iSetInputVal( u , val ) {
		u.value = val;
		var iOnSetVal = iCom[u.getAttribute( 'key' )]['iOnSetVal'];
		if ( typeof iOnSetVal == 'function' ) {
			iOnSetVal();
		}
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
		if ( iBrowser.I ) {//����iframe
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
		if ( !iCom[key]['pospara'] ) {//�����쳣δ����ö�λ�������
			return ;
		}

		var iow = iCom[key]['pospara']['iow'];
		var ioh = iCom[key]['pospara']['ioh'];

		var iex = iCom[key]['pospara']['iex'];
		var iey = iCom[key]['pospara']['iey'];

		var bsw = iCom[key]['pospara']['bsw'];
		var bsh = iCom[key]['pospara']['bsh'];

		var bch = iCom[key]['pospara']['bch'];
		
		//��������Ҫʵʱͳ��
		var bst = document.body.scrollTop || document.documentElement.scrollTop;
		
		//�Զ����table����Ҫʵʱͳ��
		var tow = t.offsetWidth;
		var toh = t.offsetHeight;
		
		/*******************��������ͣ��λ��**********************/
		var tsl = iex + tow > bsw ? iex + iow - tow : iex;
		/*****************************************/
		
		/*******************��������ͣ��λ��**********************/
		var tst;
		var up = iey - ioh + 2 - toh;
		if ( iey + 220 <= bst + bch ) {//����δ�����������±߽� ͣ����������·�
			tst = iey;
		}
		else {//���޳�������������
			if ( iey + 220 > bsh ) {//���޳���body�±߽� �򲻹��Ƿ�ᱻ���ض�����ͣ��
				tst = up;
			}
			else {//����δ��������body�±߽�
				if ( iey - ioh + 2 - 220 >= bst ) {//��������ʱû�г����������ϱ߽�,��ͣ����������Ϸ�
					tst = up;
				}
				else {//����ͣ����������·�
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
		if ( b ) {//ie����ס
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

	function iCreateStyle() {//������ʽ
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
