function isemail (s)
{
        // Writen by david, we can delete the before code
        if (s.length > 100)
        {
                window.alert("email��ַ���Ȳ��ܳ���100λ!");
                return false;
        }
				s = s.toLowerCase()
				var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|NET|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT|name|NAME)$";
				var re = new RegExp(regu);
         if (s.search(re) != -1) {
               return true;
         } else {
               window.alert ("��������Ч�Ϸ���E-mail��ַ ��");
               return false;
         }
}

function isemail_E (s)
{
        if (s.length > 100)
        {
                window.alert("The Email adress should be less than 100 characters!");
                return false;
        }
			 var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|NET|com|COM|gov|GOV|mil|MIL|org|ORG|edu|EDU|int|INT|name|NAME)$";
			 var re = new RegExp(regu);
         if (s.search(re) != -1) {
               return true;
         } else {
               window.alert ("Please enter a valid email address!")
               return false;
         }
}

function Jtrim(str)
{

        var i = 0;
        var len = str.length;
        if ( str == "" ) return( str );
        j = len -1;
        flagbegin = true;
        flagend = true;
        while (( flagbegin == true) && (i< len))
        {
           if ( str.charAt(i) == " " )
                {
                  i=i+1;
                  flagbegin=true;
                }
                else
                {
                        flagbegin=false;
                }
        }

        while  ((flagend== true) && (j>=0))
        {
            if (str.charAt(j)==" ")
                {
                        j=j-1;
                        flagend=true;
                }
                else
                {
                        flagend=false;
                }
        }

        if ( i > j ) return ("");

        trimstr = str.substring(i,j+1);
        return trimstr;
}


function isValidDate( year, month, day )
{
   year  = parseInt(year,10);
   month = parseInt(month,10);
   day   = parseInt(day,10);

   if (( month==4) || (month==6) || (month==9) || (month==11) )
   { if (( day < 1) || (day > 30) )
     { alert( "������1 - 30֮��" );
       return (false);
     }
   }
   else
   { if ( month!=2 )
     { if ( (day < 1) || (day > 31 ))
       {  alert( "������1 - 31֮��" );
          return (false);
       }
     }
     else
     { // month == 2
       if ( ( year % 100 ) != 0 && (year % 4 == 0) || ( year % 100 ) == 0 && ( year % 400) == 0 )
       { if ( day > 29 )
         {  alert( "������1 - 29֮��" );
            return (false);
         }
       }
       else
       { if ( day > 28 )
         { alert( "������1 - 28֮��" );
           return (false);
         }
       }
     }
   }
 return (true);
}

function isValidDate_e( year, month, day )
{
   year  = parseInt(year,10);
   month = parseInt(month,10);
   day   = parseInt(day,10);

   if (( month==4) || (month==6) || (month==9) || (month==11) )
   { if (( day < 1) || (day > 30) )
     { alert( "Day must between 1 - 30" );
       return (false);
     }
   }
   else
   { if ( month!=2 )
     { if ( (day < 1) || (day > 31 ))
       {  alert( "Day must between 1 - 31" );
          return (false);
       }
     }
     else
     { // month == 2
       if ( ( year % 100 ) != 0 && (year % 4 == 0) || ( year % 100 ) == 0 && ( year % 400) == 0 )
       { if ( day > 29 )
         {  alert( "Day must between 1 - 29" );
            return (false);
         }
       }
       else
       { if ( day > 28 )
         { alert( "Day must between 1 - 28" );
           return (false);
         }
       }
     }
   }
 return (true);
}

function DateCompare(YearFrom, MonthFrom, YearTo, MonthTo)
{  YearFrom  = parseInt(YearFrom,10);
   MonthFrom = parseInt(MonthFrom,10);
   YearTo    = parseInt(YearTo,10);
   MonthTo   = parseInt(MonthTo,10);

   if (YearFrom > YearTo)
     { return false;}
   else
   {  if (YearFrom == YearTo)
      {  if (MonthFrom > MonthTo)
            return false;
      }
   }
   return true;
}

function intOnly(){
	if(event.keyCode != 13){
	    if((event.keyCode >= 48 && event.keyCode <=57)) 
	    {
	        event.returnValue = true;
	    }
	    else
	    {
	        alert("����������!");
	        event.returnValue = false;
	    }
	}
}

function eintOnly(){
	if(event.keyCode != 13){
	    if((event.keyCode >= 48 && event.keyCode <=57)) 
	    {
	        event.returnValue = true;
	    }
	    else
	    {
	        alert("Please input integer!");
	        event.returnValue = false;
	    }
	}
}


function isInt(obj){
	if (obj==""){
		return false;
	}
	slen=obj.length;
	for (i=0; i<slen; i++)
	{
		cc = obj.charAt(i);
		if (cc <"0" || cc >"9")
		{
			return false;
		}
	}
	return true;
}


function strlength(str){
	return str.replace(/[^\x00-\xff]/gi,'xx').length;
}