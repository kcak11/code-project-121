<% String hURL=request.getParameter("url"); if(hURL!=null){ %>
    <script type="text/javascript">
        window.onunload = function (e) { };
        window.location.hash = "<%=hURL%>";
    </script>
    <% }else{ %>
        <script type="text/javascript">
            window.onunload = function (e) { };
            window.location = "https://code-archives.appspot.com";
        </script>
        <%}%>