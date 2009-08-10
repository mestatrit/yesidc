(function() {
	/*
	 *Author Liyao
	 *Date 2009-4-8
	 *Function FuntypeLayer class extends JobLayer class
	 */
	
	//check the class name , it will be replaced when existed
	if ( window.FuntypeLayer ) {
		alert( 'variable FuntypeLayer has been used,it will be replaced with _FuntypeLayer!' );
		window._FuntypeLayer = window.FuntypeLayer;
	}

	//constructor
	window.FuntypeLayer = function( param ) {
		param = param instanceof Object ? param : {};
		param.colNum = param.colNum || 4;
		param.data = ft;
		param.headTitle = param.cfg.langs.znlb;
		param.selectedTitle = param.cfg.langs.zhineng;
		param.initTblFunc = this.initFuntypeLayer;
		param.getSubColNum = this.getFuntypeSubColNum;
		JobLayer.apply( this , [param] );
	}.$extends( JobLayer );

	//share property & method
	var pt = FuntypeLayer.prototype;
	
	//ְ�ܷ��������ֵ�
	pt.funtypePare = [
		{ Chinese : '�����/������/ͨ��/����' , English : 'Computer, Internet, Telecom, Electronics' , subIds : [ '2400' , '0100' , '2500' , '2600' , '2700' , '2800' , '2900' ] } ,
		{ Chinese : '����/�ͷ�/����֧��' , English : 'Sales, Customer Service, Technical Support' , subIds : [ '0200' , '3000' , '3100' , '3200' ] } ,
		{ Chinese : '���/����/����/����' , English : 'Accounting, Finance, Banking, Insurance' , subIds : [ '0400' , '3300' , '2200' , '3400' ] } ,
		{ Chinese : '����/Ӫ��/�ɹ�/����' , English : 'Manufacturing, Operation, Purchasing, Logistics' , subIds : [ '3500' , '3600' , '0500' , '5400' , '3700' , '3800' , '3900' , '4000' , '0800' ] } ,
		{ Chinese : '����/��ҩ/ҽ��/����' , English : 'Biotechnology, Pharmaceuticals, Healthcare' , subIds : [ '4100' , '5500' , '1300' ] } ,
		{ Chinese : '���/�г�/ý��/����' , English : 'Advertising, Marketing, Media, Design' , subIds : [ '4200' , '4300' , '0300' , '4400' , '4500' , '0900' ] } ,
		{ Chinese : '����/���ز�' , English : 'Construction, Real Estate' , subIds : [ '2100' , '4600' , '4700' ] } ,
		{ Chinese : '����/����/�߼�����' , English : 'HR, Admin., Senior Management' , subIds : [ '0600' , '0700' , '2300' ] } ,
		{ Chinese : '��ѯ/����/����/����' , English : 'Consultant, Legal, Education' , subIds : [ '1400' , '1100' , '1200' , '1000' ] } ,
		{ Chinese : '����ҵ' , English : 'Service' , subIds : [ '4800' , '4900' , '5000' , '5100' , '1800' , '5200' ] } ,
		{ Chinese : '����Ա/����/����' , English : 'Official, Translator, Others' , subIds : [ '1500' , '2000' , '1600' , '1700' , '5300' , '1900' , '5600' ] }
	];

	pt.getFuntypeSubColNum = function( len ) { return len > 16 ? 2 : 1; }

	pt.initFuntypeLayer = function() {

		//table
		this.createTbl();
		
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

		//select trs
		for ( var i = 0 ; i < this.funtypePare.length ; i++ ) {
			this.funtypePare[i]['pareName'] = this.funtypePare[i][this.cfg.fullLang] + '��';
			this.funtypePare[i]['pareClassName'] = 'bigOrange';
			if ( 0 == i % 2 ) {
				this.funtypePare[i]['trClassName'] = 'bgGray';
			}
			this.createSelectTr( this.funtypePare[i] );
		}

		//bottom line
		this.createBottomLine();
	}

})();
