<jsp:include page="contentHeader.jsp">
<jsp:param name="docTitle" value="CodeArchives - Online Tutorials" />
</jsp:include>


<!-- start content here -->
<%
 String baseURL=(String)session.getAttribute("staticBaseURL");
%>

<script type="k-lazy-javascript" lazyname="tutorialLoader">
    function loadTutorial(tutorialID) {
        (function () { window.open(window.siteRequestor === 'KCAK11.COM' ? 'https://www.kcak11.com/codearchives/view?link=TUTORIAL&tutorialID=' + tutorialID : '<%=baseURL%>archive/Action/viewTutorial/?tutorialID=' + tutorialID, 'viewTutorWin', 'left=11,top=11,width=600,height=650,resizable=no'); })();
    }
</script>

<div style="text-align:center;"><img src="archive/resources/images/catutor.png" style="width:443px;height:114px;"/></div>
<br/><br/>
<a href="archive/Action/catos/" id="kbaseTOS_link" style="display:none;">TOS</a>
<span onclick="(function(){window.open(window.siteRequestor==='KCAK11.COM'?'https://www.kcak11.com/codearchives/view?link=TOS':('<%=baseURL%>archive/Action/catos/'+(Math.random()*11).toString(36).split('.').join('')),'catos','left=11,top=11,width=600,height=550,resizable=no');})();" style="cursor:pointer;font-weight:bold;border-bottom:3px solid #ff0000;">Please Read "Code Archives Online Tutorials - Terms of Service" (Important !!!)</span>
<br/><br/><br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('y91YILd8DGo');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('y91YILd8DGo');">Struts 2 Framework Tutorial</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('v8xI8Q2OPlU');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('v8xI8Q2OPlU');">Struts 2 MVC Framework</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('d9kMhAEJTLE');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('d9kMhAEJTLE');">Spring Framework Tutorial</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('DGL5Vy55m9I');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('DGL5Vy55m9I');">JSF Framework Tutorial</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('7wvXw75vvxM');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('7wvXw75vvxM');">Working with JSF 2.0</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('P_nhBKs25DQ');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('P_nhBKs25DQ');">Database Design Tutorial on SQL</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('GINvxAaXDbY');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('GINvxAaXDbY');">Java Hibernate Tutorial</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('JR7-EdxDSf0');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('JR7-EdxDSf0');">Hibernate Tutorial</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('a2_rd2wZaY4');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('a2_rd2wZaY4');">WebServices Tutorial</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('zyRTrccuVAE');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('zyRTrccuVAE');">Creating WebServices with NetBeans</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<div class="dpHeading" style="height:60px;">
<table>
<tr>
<td><img src="archive/resources/images/vicon.png" style="cursor:pointer;" onclick="loadTutorial('cDdfVMro99s');" /></td>
<td><span style="font-weight:bold;cursor:pointer;" onclick="loadTutorial('cDdfVMro99s');">NetBeans Building & Deploying REST Services</span><span style="font-size:4px;"><br/><br/>&nbsp;</span></td>
</tr>
</table>
</div>
<br/>
<br/>

<!-- end content here -->

<jsp:include page="contentFooter.jsp"/>