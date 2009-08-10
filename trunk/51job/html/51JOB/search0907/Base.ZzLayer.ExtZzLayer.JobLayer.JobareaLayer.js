(function() {
	/*
	 *Author Liyao
	 *Date 2009-4-8
	 *Function JobareaLayer class extends JobLayer class
	 */
	
	//check the class name , it will be replaced when existed
	if ( window.JobareaLayer ) {
		alert( 'variable JobareaLayer has been used,it will be replaced with _JobareaLayer!' );
		window._JobareaLayer = window.JobareaLayer;
	}

	//constructor
	window.JobareaLayer = function( param ) {
		param = param instanceof Object ? param : {};
		
		param.colNum = param.colNum || 7;
		if ( param.extData ) {//处理居住地的情况
			param.data = ja.clone();
			for ( var p in param.extData ) {
				if ( /^[\d]{4}$/.test( p ) ) {
					param.data[p] = param.extData[p];
				}
			}
			this.mainCity[2].subIds[0] = '9900';
			param.headTitle = param.cfg.langs.juzd;
		}
		else {
			this.mainCity[2].subIds[0] = '0302';
			param.data = ja;
			param.headTitle = param.cfg.langs.gzdd;
		}
		
		param.selectedTitle = param.cfg.langs.didian;
		param.initTblFunc = this.initJobareaLayer;
		param.getSubValues = this.getJobareaIds;
		param.getSubColNum = function( len ) { return Math.ceil( Math.sqrt( len ) ); };
		var tdWidth = 'e' == param.cfg.lang ? 'auto' : '75px';
		param.tdProps = { style : { width: tdWidth , paddingLeft: '3px' } };
		if ( param.cityChoose ) {
			param.tdProps.style.width = '84px';
			param.subTdProps = { style : {} };
			param.subTdProps.style.width = '75px';
			if ( 'e' == param.cfg.lang ) {
				param.colNum = 6;
			}
		}

		param.emptyWords = param.cfg.langs.xzdq;

		JobLayer.apply( this , [param] );

	}.$extends( JobLayer );

	//share property & method
	var pt = JobareaLayer.prototype;

	//主要城市数据字典
	pt.mainCity = [
		{ Chinese : '华北-东北' , English: 'Northern &amp; North-Eastern China' , subIds : ['0100','0500','2303','2302','2402','2202'] } ,
		{ Chinese : '华东地区' , English: 'Eastern China' , subIds : ['0200','0702','0703','0802','0803','1502','1102','1202','1203'] } ,
		{ Chinese : '华南-华中' , English: 'Southern &amp; Central China' , subIds : ['0302','0400','0308','1802','1902','1702'] } ,
		{ Chinese : '西北-西南' , English: 'North-Western &amp; South-Western China' , subIds : ['2002','0902','0600','2502'] }
	];

	//所有省份数据字典
	pt.allProvince = [
		{ Chinese : '华北-东北' , English: 'Northern &amp; North-Eastern China' , subIds : ['1600','2100','2800','2300','2400','2200'] } ,
		{ Chinese : '华东地区' , English: 'Eastern China' , subIds : ['0700','0800','1500','1100','1300','1200'] } ,
		{ Chinese : '华南-华中' , English: 'Southern &amp; Central China' , subIds : ['0300','1400','1000','1700','1800','1900'] } ,
		{ Chinese : '西北-西南' , English: 'North-Western &amp; South-Western China' , subIds : ['2000','2700','3200','2900','3100','0900','2600','2500','3000'] } ,
		{ Chinese : '其它' , English: 'Others' , subIds : ['3300','3400','3500','3600'] }
	];

	pt.getJobareaIds = function( _value , isClearShenZhen ){//处理广东省深圳市特殊情况
		var _values = this.constructor.prototype.getSubValues.apply( this , [_value] );
		if ( '0300' == _value ) {
			if ( _values[1] != '0400' ) {
				_values.splice( 1 , 0 , '0400' );
			}
			if ( isClearShenZhen ) {
				_values.splice( 1 , 1 );
			}
		}
		return _values;
	}

	pt.initJobareaLayer = function() {

		//table
		this.createTbl();
		
		if ( !this.cityChoose ) {
			//title tr
			this.createTitleTr();

			//selected tr
			if ( this.isMulty ) {
				this.createSelectedTr();

				//seprator line
				var tr = this.tbl.insertRow( -1  );
				var td = document.createElement( 'td' );
				td.colSpan =  this.colNum;
				td.className = 'jlSeprator';
				tr.appendChild( td );
			}

			//main city title
			var tr = this.tbl.insertRow( -1  );
			var td = document.createElement( 'td' );
			td.colSpan =  this.colNum;
			td.innerHTML = this.cfg.langs.zycs + '：';
			td.className = 'bigOrange gray';
			tr.appendChild( td );
		}
		
		var pareClsAdd = this.cityChoose && 'e' == this.cfg.lang ? ' quName' : '';
		//main city trs
		for ( var i = 0 ; i < this.mainCity.length ; i++ ) {
			this.mainCity[i]['pareName'] = this.mainCity[i][this.cfg.fullLang] + '：';
			this.mainCity[i]['pareClassName'] = 'blackBold' + pareClsAdd;
			this.createSelectTr( this.mainCity[i] );
		}

		//all province title
		var tr = this.tbl.insertRow( -1  );
		var td = document.createElement( 'td' );
		td.colSpan =  this.colNum;
		td.innerHTML = this.cfg.langs.sysf + '：';
		td.className = 'bigOrange gray';
		tr.appendChild( td );
		
		//all province trs
		for ( var i = 0 ; i < this.allProvince.length ; i++ ) {
			this.allProvince[i]['pareName'] = this.allProvince[i][this.cfg.fullLang] + '：';
			this.allProvince[i]['pareClassName'] = 'blackBold' + pareClsAdd;
			this.createSelectTr( this.allProvince[i] );
		}
		
		if ( !this.cityChoose ) {
			//bottom line
			this.createBottomLine();
		}
	}

})();
