<!DOCTYPE html>
<html>
<head>
<title>Ashish's Web</title>
<meta content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0' name='viewport' />
<meta charset="UTF-8">
<script type="text/javascript">
var locUrl=""+window.top.location.href;
if(locUrl.indexOf("/e-web/index.jsp")!==-1){
	window.top.location.replace("/web");
}
window.esTime=1149186600532;
document.oncontextmenu=function(){return false;};
</script>
<base href="/e-web/"/>
<style type="text/css">
body{
	font-family:Verdana;
}
#site-bg{
	position:absolute;
	top:0px;
	left:0px;
	z-index:-11;
	opacity:0.89;
	filter:alpha(opacity=89);
}
#container-wrapper{
	width:1000px;
	position:absolute;
	top:0px;
	bottom:0px;
	left:50%;
	margin-left:-500px;
	z-index:11;
	padding:11px;
}
#header-image{
	position:absolute;
	top:0px;
	left:0px;
	z-index:33;
}
#logo-image{
	position:absolute;
	top:15px;
	left:10px;
	z-index:44;
}
#header-wrapper{
	background-image:url('assets/i/headerbg.png');
	background-repeat:repeat-x;
	position:absolute;
	top:0px;
	right:0px;
	left:0px;
	z-index:22;
	height:155px;
}
#header-buttons-container{
	position:absolute;
	right:20px;
	top:55px;
	color:#fff;
}
#header-buttons-container a{
	color:#fff;
	text-decoration:none;
}
#header-buttons-container a:hover{
	border-bottom:2px solid #fff;
}
#pageBody{
	margin:33px;
	margin-top:0px;
	margin-bottom:0px;
	padding:11px;
	position:absolute;
	top:150px;
	left:0px;
	right:0px;
	bottom:50px;
	overflow:auto;
	color:#fff;
	font-size:16px;
	line-height:24px;
}
#footer-wrapper{
	background-color:rgb(73,140,218);
	color:#fff;
	position:absolute;
	bottom:0px;
	left:0px;
	right:0px;
	z-index:22;
	padding:11px;
	height:30px;
}
#footer-wrapper #cpInfo{
	position:absolute;
	left:20px;
	bottom:18px;
}
#footer-wrapper #social-bar-ak{
	position:absolute;
	right:20px;
	bottom:0px;
}
#footer-wrapper #social-bar-ak img{
	height:40px;
}
</style>
</head>
<body>
<div id="magicDiv" style="visibility:hidden;z-index:-11000;position:absolute;top:0px;right:0px;bottom:0px;left:0px;"></div>
<img id="site-bg" src="assets/i/background.jpg"/>
<div id="header-wrapper">
	<div id="header-buttons-container">
		<a href="/web/#" onclick="Akweb.modules.nav('home');return false;">Home</a> | 
		<a href="/web/#" onclick="Akweb.modules.nav('about-me');return false;">About Me</a> | 
		<a href="/web/#" onclick="Akweb.modules.nav('what-i-do');return false;">What I do</a> | 
		<a href="/web/#" onclick="Akweb.modules.nav('projects');return false;">Projects</a> | 
		<a href="/web/#" onclick="Akweb.modules.nav('my-cv');return false;">CV</a>
	</div>
</div>
<img id="header-image" src="assets/i/header.png"/>
<img id="logo-image" src="assets/i/aklogo_site.png" />
<div id="container-wrapper">
	<div id="pageBody">
<!-- body start -->
				<div style="text-align:justify;margin-left:20px;">
					<span class="sheading">Who Am I</span>
					<br>
					<span class="sbody">I am a technologist, programmer and an artist, with around <span id="expYear"></span> years of professional experience in Java, J2EE Technologies, UI Development & UX Design, in addition to 7 years of experience working as a Freelancer in Java &amp; J2EE. Currently I am focusing on research and design of a secure &amp; robust ecommerce platform. I hold a Master's degree in Computer Applications. You can reach me via kcak11@gmail.com / kcashish11@gmail.com</span>
					<br><div style="height:10px;">&nbsp;</div>
					<span class="sheading">More about me</span>
					<br>
					<span class="sbody">I am challenging myself to work on Java Technologies every day and learn a minimum of 2 new things each week. My intention is to explore ideas and techniques and push myself beyond my comfort zone. My interests at this time are designing a Java based secure transaction handler (STH) which can be integrated in a framework.</span>
				</div>
<!-- body end -->
	</div>
</div>
<div id="footer-wrapper">
	<div id="cpInfo">Copyright &copy; <span id="cpYear"></span></div>
	<div id="social-bar-ak">
		<a href="http://www.linkedin.com/in/kcak11" target="ak_ext_in"><img src="assets/i/social/linkedin.png"/></a>
		<a href="http://www.facebook.com/kcak11" target="ak_ext_fb"><img src="assets/i/social/fb.png"/></a>
		<a href="http://www.twitter.com/kcak11" target="ak_ext_tw"><img src="assets/i/social/twitter.png"/></a>
		<a href="https://plus.google.com/+KCAshishKumar" target="ak_ext_gp"><img src="assets/i/social/gplus.png"/></a>
		<a href="http://www.youtube.com/c/KCAshishKumar" target="ak_ext_yt"><img src="assets/i/social/youtube.png"/></a>
	</div>
</div>
<script type="text/javascript">
window.Akweb=window.Akweb||{};
Akweb.modules={};
Akweb.modules.nav=function(navType){
	window.top.location.hash="/"+navType;
};
Akweb.modules.updateExperience=function(){
	var esTime=this.esTime;
	var now=(new Date()).getTime();
	var exp=(now-esTime)/(1000*60*60*24*365)
	exp=exp.toFixed(0);
	document.getElementById("expYear").innerHTML=exp;
};
Akweb.modules.updateExperience.call(window);
(function(){
	var mDiv=document.getElementById("magicDiv");
	var cDiv=document.getElementById("container-wrapper");
	var sBgDiv=document.getElementById("site-bg");
	var adjustContainer=function(){
		var w=mDiv.offsetWidth;
		if(w<=cDiv.offsetWidth){
			cDiv.style.left="0px";
			cDiv.style.marginLeft="0px";
		}else{
			cDiv.style.left="50%";
			cDiv.style.marginLeft=(-1*(cDiv.offsetWidth/2))+"px";
		}
		sBgDiv.style.minWidth=cDiv.offsetWidth+"px";
		window.bgAdjuster=setInterval(function(){
			sBgDiv.style.width=mDiv.offsetWidth+"px";	
			sBgDiv.style.height=mDiv.offsetHeight+"px";
		},121);
		setTimeout(function(){clearInterval(window.bgAdjuster);},2000);
	};
	adjustContainer();
	window.onresize=function(){
		adjustContainer();
	};
	document.getElementById("cpYear").innerHTML=(new Date()).getFullYear();
	document.documentElement.style.overflowX="hidden";
	document.getElementsByTagName("body")[0].style.overflowX="hidden";
}());
</script>
</body>
</html>