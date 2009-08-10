(function() {
	/*
	 *Author Liyao
	 *Date 2009-4-8
	 *Function IndtypeLayer class extends JobLayer class
	 */
	
	//check the class name , it will be replaced when existed
	if ( window.IndtypeLayer ) {
		alert( 'variable IndtypeLayer has been used,it will be replaced with _IndtypeLayer!' );
		window._IndtypeLayer = window.IndtypeLayer;
	}

	//constructor
	window.IndtypeLayer = function( param ) {
		param = param instanceof Object ? param : {};
		param.colNum = param.colNum || 4;
		param.data = it;
		param.headTitle = param.cfg.langs.hylb;
		param.selectedTitle = param.cfg.langs.hangye;
		param.initTblFunc = this.initIndtypeLayer;
		JobLayer.apply( this , [param] );
	}.$extends( JobLayer );

	//share property & method
	var pt = IndtypeLayer.prototype;
	
	//��ҵ���������ֵ�
	pt.indtypePare = [
		{ Chinese : '�����/������/ͨ��/����' , English : 'Computer, Internet, Telecom, Electronics' , subIds : [ '01' , '37' , '38' , '31' , '39' , '32' , '40' , '02' , '35' ] } ,
		{ Chinese : '���/����/����/����' , English : 'Accounting, Finance, Banking, Insurance' , subIds : [ '41' , '03' , '42' , '43' ] } ,
		{ Chinese : 'ó��/����/����/Ӫ��' , English : 'Trade, Sales, Manufacturing, Operations' , subIds : [ '04' , '22' , '05' , '06' , '44' , '45' , '14' , '33' ] } ,
		{ Chinese : '��ҩ/ҽ��' , English : 'Pharmaceuticals, Healthcare' , subIds : [ '08' , '46' , '47' ] } ,
		{ Chinese : '���/ý��' , English : 'Advertising, Media Related' , subIds : [ '12' , '48' , '49' , '13' , '15' ] } ,
		{ Chinese : '���ز�/����' , English : 'Real Estates Related' , subIds : [ '26' , '09' , '50' , '51' ] } ,
		{ Chinese : 'רҵ����/����/��ѵ' , English : 'Professional Services, Education, Training' , subIds : [ '34' , '07' , '52' , '18' , '23' , '24' ] } ,
		{ Chinese : '����ҵ' , English : 'Customer Services' , subIds : [ '11' , '53' , '17' , '54' , '27' ] } ,
		{ Chinese : '����/����' , English : 'Logistics, Transportation' , subIds : [ '21' , '55' ] } ,
		{ Chinese : '��Դ/ԭ����' , English : 'Utilities and Raw Materials Related' , subIds : [ '19' , '16' , '36' , '56' ] } ,
		{ Chinese : '����/��Ӯ������/����' , English : 'Government, Non Profit, Others' , subIds : [ '28' , '57' , '20' , '29' , '58' , '30' ] }
	];

	pt.initIndtypeLayer = function() {

		//table
		this.createTbl();
		
		//title tr
		var param = { titleWords : this.cfg.langs.qxjhylb + '��' + this.cfg.langs.nzdnxj  + this.maxSelectNum + this.cfg.langs.xiang + '��' };
		this.createTitleTr( param );

		
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
		for ( var i = 0 ; i < this.indtypePare.length ; i++ ) {
			this.indtypePare[i]['pareName'] = this.indtypePare[i][this.cfg.fullLang] + '��';
			this.indtypePare[i]['pareClassName'] = 'bigOrange';
			if ( 0 == i % 2 ) {
				this.indtypePare[i]['trClassName'] = 'bgGray';
			}
			this.createSelectTr( this.indtypePare[i] );
		}

		//bottom line
		this.createBottomLine();
	
	}

})();
