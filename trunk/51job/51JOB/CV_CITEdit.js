
function ToDelete(ITID)
{
  if (window.confirm("确实要删除此IT技能吗?"))
  {
	  document.Form1.NextAction.value  ="del"; 
	  document.Form1.ITID.value= ITID;
	  document.Form1.SkillCode.value= "";
	  document.Form1.submit();
  }
}

function ToNew(ITID)
{
  document.Form1.NextAction.value  ="new"; 
  document.Form1.ITID.value= ITID;
  document.Form1.SkillCode.value= "";
  document.Form1.submit();
}

function ToEdit(ITID)
{
  document.Form1.action="/cv/CResume/CV_CITEdit.php#mark"; 
  document.Form1.NextAction.value  ="read"; 
  document.Form1.ITID.value=ITID;
  document.Form1.SkillCode.value= "";
	document.Form1.submit();
}

function ToSave()
{
	if (CheckOK()){
		document.Form1.SkillCode.value= "";
		 	document.Form1.submit();
	}
}


function CheckOK()
{ if (document.Form1.SubSkill.value == "")
  { window.alert("请选择技能名称");
    document.Form1.SkillName.focus();
    return false;
  }

  if (Jtrim(document.Form1.UseTime.value) == "")
  { window.alert("请填写使用时间");
    document.Form1.UseTime.focus();
    return false;
  }
  
  
  if(!isInt(document.Form1.UseTime.value)){
  	window.alert("使用时间请输入整数");
    document.Form1.UseTime.focus();
    return false;
  }

  if (document.Form1.Ability.value == "")
  { window.alert("请选择掌握程度");
    document.Form1.Ability.focus();
    return false;
  }
  return true;
}

function GetObjID(ObjName)
{ for (var ObjID=0; ObjID < document.Form1.elements.length; ObjID++)
    if ( document.Form1.elements[ObjID].name == ObjName )
    {  return(ObjID);
       break;
    }
  return(-1);
}

function ChangeOption(ObjName, DesName)
{
  //GET OBJECT VALUE, ID OF DESTINATION OBJECT
  ObjID    = GetObjID(ObjName);
  DesObjID = GetObjID(DesName);
  if ( ObjID != -1 && DesObjID != -1 )
  {
    CatValue = document.Form1.elements[ObjID].value.substring(0, 2);
    if ( CatValue == "0" )
      document.Form1.elements[DesObjID].length=0;
    else
    { //PARSING
      document.Form1.elements[DesObjID].length=0;
      var tt = document.Form1.SkillCode.value;
      var SubCategory = tt.split(";");
      //GENERATE OPTIONS
      j=0;
      for (var i=0; i< SubCategory.length; i++ )
      {
        pp = SubCategory[i].split(",");
        if ( pp[0].substring(0,2) == CatValue && pp[0].substring(2,4) != "00" )
        {
          document.Form1.elements[DesObjID].options[j]= new Option( pp[1], pp[0]);
          j++;
        }//if
      }//for
    }//if
  }//if
}