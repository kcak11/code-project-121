<html>
<head>
<title>Ashish's Code Archive</title>
<style type="text/css">
body{
font-family:Verdana;
background-image:url('archive/resources/images/topborder.png');
background-repeat:repeat-x;
overflow:auto;
}
</style>
</head>
<body>
<br/><br/><br/>
<div align="right">Powered by <a href="https://www.ashishkumarkc.com" target="akwebwin_ca" style="text-decoration:none;"><span style="border-bottom:2px solid #ff0000;color:#000000;font-weight:bold;">Ashish's Web</span></a>&nbsp;&nbsp;</div>
<br/>
<div align="center">
<img src="archive/resources/images/undercons.png"/>
</div>
<br/>
<div align="center"><span style="cursor:pointer;border-bottom:2px solid #ff0000;font-weight:bold;" onclick="showContactDialog();">Contact Us</span></div>
<div id="pageOverlay" align="center" style="display:none;background-color:#ffffff;position:absolute;top:0px;left:0px;width:1px;height:1px;">
<img src="archive/resources/images/blankimage.gif" style="display:none;" id="blankimage"/>
</div>
<div id="contactDialog" style="display:none;position:absolute;width:620px;height:167px;">
<div align="right"><span align="center" style="position:relative;right:44px;top:66px;font-weight:bold;font-size:12px;cursor:pointer;" onclick="closeContactDialog();" title="Close Dialog">X</span><br/>&nbsp;</div>
<img src="archive/resources/images/contactme.png" id="cdialog"/>
</div>
<script type="text/javascript">
function getToken(){
var token=[];
for(i=0;i<5;i++){token.push((Math.pow(2,11)*Math.random()).toString(36).split(".").join(""));}
return token.join("");
}
if((""+window.location+"").indexOf("file:///")===-1 && document.cookie.indexOf("JSecurityCheck")===-1){
document.cookie="_Auth="+getToken()+";path=/;secure=true;samesite=none;";
document.cookie="_SessionId="+getToken()+";path=/;secure=true;samesite=none;";
document.cookie="app_sysID="+getToken()+";path=/;secure=true;samesite=none;";
document.cookie="JSecurityCheck="+getToken()+";path=/;secure=true;samesite=none;";
document.cookie="MODE="+getToken()+";path=/;secure=true;samesite=none;";
document.cookie=getToken().substring(0,11)+"="+getToken()+";path=/;secure=true;samesite=none;";
document.cookie=getToken().substring(0,11)+"="+getToken()+";path=/;secure=true;samesite=none;";
document.cookie=getToken().substring(0,11)+"="+getToken()+";path=/;secure=true;samesite=none;";
}

var alg2="76,61,72,20,62,6f,64,79,45,6c,65,6d,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,73,42,79,54,61,67,4e,61,6d,65,28,22,62,6f,64,79,22,29,5b,30,5d,3b,0d,0a,76,61,72,20,63,77,3d,62,6f,64,79,45,6c,65,6d,2e,63,6c,69,65,6e,74,57,69,64,74,68,3b,0d,0a,76,61,72,20,63,68,3d,62,6f,64,79,45,6c,65,6d,2e,63,6c,69,65,6e,74,48,65,69,67,68,74,3b,0d,0a,76,61,72,20,70,6f,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,70,61,67,65,4f,76,65,72,6c,61,79,22,29,3b,0d,0a,76,61,72,20,63,64,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,63,6f,6e,74,61,63,74,44,69,61,6c,6f,67,22,29,3b,0d,0a,76,61,72,20,74,72,61,6e,73,70,65,72,63,3d,36,36,3b,0d,0a,76,61,72,20,63,6f,6e,74,61,63,74,44,69,61,6c,6f,67,56,69,73,69,62,6c,65,3d,66,61,6c,73,65,3b,0d,0a,76,61,72,20,61,64,6a,75,73,74,53,63,72,6f,6c,6c,49,3b,0d,0a,66,75,6e,63,74,69,6f,6e,20,73,68,6f,77,4f,76,65,72,6c,61,79,28,29,7b,0d,0a,63,77,3d,62,6f,64,79,45,6c,65,6d,2e,63,6c,69,65,6e,74,57,69,64,74,68,3b,0d,0a,63,68,3d,62,6f,64,79,45,6c,65,6d,2e,63,6c,69,65,6e,74,48,65,69,67,68,74,3b,0d,0a,62,6f,64,79,45,6c,65,6d,2e,73,74,79,6c,65,2e,6f,76,65,72,66,6c,6f,77,3d,22,68,69,64,64,65,6e,22,3b,0d,0a,70,6f,2e,73,74,79,6c,65,2e,77,69,64,74,68,3d,63,77,2b,22,70,78,22,3b,0d,0a,70,6f,2e,73,74,79,6c,65,2e,68,65,69,67,68,74,3d,63,68,2b,22,70,78,22,3b,0d,0a,70,6f,2e,73,74,79,6c,65,2e,64,69,73,70,6c,61,79,3d,22,62,6c,6f,63,6b,22,3b,0d,0a,70,6f,2e,73,74,79,6c,65,2e,66,69,6c,74,65,72,3d,22,61,6c,70,68,61,28,6f,70,61,63,69,74,79,3d,22,2b,74,72,61,6e,73,70,65,72,63,2b,22,29,22,3b,0d,0a,70,6f,2e,73,74,79,6c,65,2e,6f,70,61,63,69,74,79,3d,74,72,61,6e,73,70,65,72,63,2f,31,30,30,3b,0d,0a,70,6f,2e,73,74,79,6c,65,2e,7a,49,6e,64,65,78,3d,28,4d,61,74,68,2e,70,6f,77,28,32,2c,33,31,29,2d,31,31,29,3b,0d,0a,63,6c,65,61,72,49,6e,74,65,72,76,61,6c,28,61,64,6a,75,73,74,53,63,72,6f,6c,6c,49,29,3b,0d,0a,61,64,6a,75,73,74,53,63,72,6f,6c,6c,49,3d,73,65,74,49,6e,74,65,72,76,61,6c,28,66,75,6e,63,74,69,6f,6e,28,29,7b,61,64,6a,75,73,74,53,63,72,6f,6c,6c,28,29,3b,7d,2c,31,30,30,29,3b,0d,0a,7d,0d,0a,66,75,6e,63,74,69,6f,6e,20,68,69,64,65,4f,76,65,72,6c,61,79,28,29,7b,0d,0a,70,6f,2e,73,74,79,6c,65,2e,64,69,73,70,6c,61,79,3d,22,6e,6f,6e,65,22,3b,0d,0a,62,6f,64,79,45,6c,65,6d,2e,73,74,79,6c,65,2e,6f,76,65,72,66,6c,6f,77,3d,22,61,75,74,6f,22,3b,0d,0a,63,6c,65,61,72,49,6e,74,65,72,76,61,6c,28,61,64,6a,75,73,74,53,63,72,6f,6c,6c,49,29,3b,0d,0a,7d,0d,0a,66,75,6e,63,74,69,6f,6e,20,61,64,6a,75,73,74,53,63,72,6f,6c,6c,28,29,7b,0d,0a,62,6f,64,79,45,6c,65,6d,2e,73,63,72,6f,6c,6c,54,6f,70,3d,30,3b,0d,0a,62,6f,64,79,45,6c,65,6d,2e,73,63,72,6f,6c,6c,4c,65,66,74,3d,30,3b,0d,0a,7d,0d,0a,77,69,6e,64,6f,77,2e,6f,6e,72,65,73,69,7a,65,3d,66,75,6e,63,74,69,6f,6e,28,29,7b,0d,0a,69,66,28,63,6f,6e,74,61,63,74,44,69,61,6c,6f,67,56,69,73,69,62,6c,65,29,7b,0d,0a,73,68,6f,77,43,6f,6e,74,61,63,74,44,69,61,6c,6f,67,28,29,3b,0d,0a,7d,0d,0a,7d,3b,0d,0a,0d,0a,66,75,6e,63,74,69,6f,6e,20,73,68,6f,77,43,6f,6e,74,61,63,74,44,69,61,6c,6f,67,28,29,7b,0d,0a,73,68,6f,77,4f,76,65,72,6c,61,79,28,29,3b,0d,0a,63,64,2e,73,74,79,6c,65,2e,7a,49,6e,64,65,78,3d,28,4d,61,74,68,2e,70,6f,77,28,32,2c,33,31,29,2d,39,29,3b,0d,0a,63,64,2e,73,74,79,6c,65,2e,6c,65,66,74,3d,28,28,63,77,2d,36,32,30,29,2f,32,29,2b,22,70,78,22,3b,0d,0a,63,64,2e,73,74,79,6c,65,2e,74,6f,70,3d,28,28,63,68,2d,31,36,37,29,2f,32,29,2b,22,70,78,22,3b,0d,0a,63,64,2e,73,74,79,6c,65,2e,64,69,73,70,6c,61,79,3d,22,62,6c,6f,63,6b,22,3b,0d,0a,63,6f,6e,74,61,63,74,44,69,61,6c,6f,67,56,69,73,69,62,6c,65,3d,74,72,75,65,3b,0d,0a,7d,0d,0a,66,75,6e,63,74,69,6f,6e,20,63,6c,6f,73,65,43,6f,6e,74,61,63,74,44,69,61,6c,6f,67,28,29,7b,0d,0a,63,64,2e,73,74,79,6c,65,2e,64,69,73,70,6c,61,79,3d,22,6e,6f,6e,65,22,3b,0d,0a,68,69,64,65,4f,76,65,72,6c,61,79,28,29,3b,0d,0a,63,6f,6e,74,61,63,74,44,69,61,6c,6f,67,56,69,73,69,62,6c,65,3d,66,61,6c,73,65,3b,0d,0a,7d,0d,0a,0d,0a,69,66,28,6e,61,76,69,67,61,74,6f,72,2e,61,70,70,4e,61,6d,65,2e,69,6e,64,65,78,4f,66,28,22,4d,69,63,72,6f,73,6f,66,74,22,29,21,3d,2d,31,20,26,26,20,28,6e,61,76,69,67,61,74,6f,72,2e,75,73,65,72,41,67,65,6e,74,2e,69,6e,64,65,78,4f,66,28,22,4d,53,49,45,20,36,2e,30,22,29,21,3d,2d,31,20,7c,7c,20,6e,61,76,69,67,61,74,6f,72,2e,75,73,65,72,41,67,65,6e,74,2e,69,6e,64,65,78,4f,66,28,22,4d,53,49,45,20,35,2e,35,22,29,21,3d,2d,31,29,29,7b,0d,0a,76,61,72,20,62,69,6d,61,67,65,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,62,6c,61,6e,6b,69,6d,61,67,65,22,29,3b,0d,0a,76,61,72,20,63,64,69,61,6c,6f,67,3d,64,6f,63,75,6d,65,6e,74,2e,67,65,74,45,6c,65,6d,65,6e,74,42,79,49,64,28,22,63,64,69,61,6c,6f,67,22,29,3b,0d,0a,63,64,69,61,6c,6f,67,2e,73,74,79,6c,65,2e,66,69,6c,74,65,72,3d,22,70,72,6f,67,69,64,3a,44,58,49,6d,61,67,65,54,72,61,6e,73,66,6f,72,6d,2e,4d,69,63,72,6f,73,6f,66,74,2e,41,6c,70,68,61,49,6d,61,67,65,4c,6f,61,64,65,72,28,73,72,63,3d,27,22,2b,63,64,69,61,6c,6f,67,2e,73,72,63,2b,22,27,2c,20,73,69,7a,69,6e,67,4d,65,74,68,6f,64,3d,27,73,63,61,6c,65,27,29,22,3b,0d,0a,63,64,69,61,6c,6f,67,2e,73,72,63,3d,62,69,6d,61,67,65,2e,73,72,63,3b,0d,0a,7d";
var calg2="\\x"+alg2.split(",").join("\\x");
eval(eval("\""+calg2+"\""));

document.oncontextmenu=function(){
showContactDialog();
return false;
};
</script>
</body>
</html>