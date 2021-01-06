<% String hURL=request.getParameter("url"); if(hURL!=null){ %>
    <script type="text/javascript">
        window.onunload = function (e) { };
        document.cookie = "currenturl=" + encodeURIComponent("<%=hURL%>") + ";path=/;secure=true;samesite=none;";
    </script>
    <% }else{ %>
        <script type="text/javascript">
            window.onunload = function (e) { };
            window.location = "https://code-archives.appspot.com";
        </script>
        <%}%>