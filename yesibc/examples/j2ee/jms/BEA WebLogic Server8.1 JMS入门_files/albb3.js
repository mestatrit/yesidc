
var url = window.location.toString();
var Target1="/content/";
var Index1=url.indexOf(Target1);
var Target2="lib.360doc.com";
var Index2=url.indexOf(Target2);

if(Index1<0&&Index2<0)
{
    document.getElementById("ad01").innerHTML="<div id=\"Layer2\"><object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0\" width=\"468\" height=\"60\"><param name=\"movie\" value=\"http://www.360doc.com/ad/59rich.swf\" /><param name=\"quality\" value=\"high\" /><param name=\"wmode\" value=\"transparent\" /><embed src=\"http://www.360doc.com/ad/59rich.swf\" width=\"468\" height=\"60\" quality=\"high\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" wmode=\"transparent\"></embed></object></div><div id=\"Layer1\"><a target=\"_blank\" href=\"http://www.59rich.com\" onclick=\"hitad();\"><img src=\"http://pubimage.360doc.com/ico_jiantou_white.gif\" width=\"468\" height=\"60\" border=\"0\" style=\"filter:alpha(opacity=0);-moz-opacity:0;\"></a></div>";
}

function hitad()
{    
     $.getJSON("http://webservice.360doc.com/hitad.ashx?jsoncallback=?",function(responseText)
             {
               if(responseText!=null)
                {
                }
                else
                {
                    
                }
              }
         ); 
    
}
