<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <title>CodeArchives - Old Browser Notification</title>
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <script type="text/javascript">
    if (window.location.protocol === "http:") {
      window.location.replace(window.location.href.replace("http:", "https:"));
    }
  </script>
  <script type="text/javascript">
    window.top.postMessage("GET_URL_INFO", "*");
    window.addEventListener("message", function (e) {
      if (e.data && e.data.urlInfo && e.data.urlInfo.indexOf("kcak11.com") > -1) {
        window.siteRequestor = "KCAK11.COM";
      }
    }, false);
  </script>
  <% String baseURL=(String)session.getAttribute("staticBaseURL"); %>
    <base href="<%=baseURL%>">
    <script type="text/javascript" src="archive/resources/scripts/jq.js"></script>
    <script type="text/javascript">
      try { window.focus(); } catch (e) {/*nocode*/ }
    </script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-12203959-2"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag() { dataLayer.push(arguments); }
      gtag('js', new Date());

      gtag('config', 'UA-12203959-2');
    </script>
    <style type="text/css">
      a:link,
      a:visited,
      a:hover,
      a:active {
        color: #ff0000;
        text-decoration: none;
        font-weight: bold;
        position: absolute;
        right: 10px;
      }

      a:hover {
        text-decoration: underline;
      }
    </style>
</head>

<body>
  <div style="text-align:center;">
    <img id="notify_bug" src="archive/resources/images/bug.png" style="width:428px;height:337px;" border="0" />
    <br />
    <div id="webLinks_bug" style="position:absolute;display:none;text-align:left;font-family:Verdana;font-size:12px;width:411px;">
      <br />Microsoft Internet Explorer (Latest Version) <a href="https://www.microsoft.com/windows/ie/" target="_blank">Get it here !</a>
      <br />Mozilla Firefox (Latest Version) <a href="https://www.firefox.com/" target="_blank">Get it here !</a>
      <br />Google Chrome (Latest Version) <a href="https://www.google.com/chrome/" target="_blank">Get it here !</a>
      <br />Safari (Latest Version) <a href="https://www.apple.com/safari/" target="_blank">Get it here !</a>
      <br />Opera (Latest Version) <a href="https://www.opera.com/" target="_blank">Get it here !</a>
      <div style="text-align:center;margin-top:10px;"><img src="archive/resources/images/cbtn.png" style="width:465px;height:61px;cursor:hand;" border="0" onclick="continueBrowsingCA();" /></div>
    </div>
  </div>
  <script type="text/javascript">
    function continueBrowsingCA() {
      var dt = new Date();
      dt.setTime(dt.getTime() + (1 * 24 * 60 * 60 * 1000));
      document.cookie = "cbca_hf37yt94g8f730=OLD;expires=" + dt.toGMTString() + ";path=/;secure=true;samesite=none;";
      window.location = "<%=baseURL%>index.html?continueBrowsing=true&NID=" + ((Math.random() * 11).toString(36).split(".").join("/"));
    }

    var notificationElem = document.getElementById("notify_bug");
    var weblinks_bug = document.getElementById("webLinks_bug");
    var t = 0;
    window.clearInterval(t);
    t = window.setInterval(function () { if (notificationElem.complete) { weblinks_bug.style.display = "block"; window.clearInterval(t); } }, 200);
  </script>
  <script type="text/javascript">
    function adjustPosition() {
      weblinks_bug.style.position = "absolute";
      weblinks_bug.style.left = ($(window).width() - 411) / 2 + "px";
    }
    adjustPosition();
    if (navigator.userAgent.indexOf("MSIE") == -1) {
      window.addEventListener("resize", adjustPosition, false);
    } else {
      window.attachEvent("onresize", adjustPosition);
    }
  </script>
</body>

</html>