<%!
private static java.util.HashMap dataMap=new java.util.HashMap();
%><%
String clearAll=request.getParameter("clearall");
String query=request.getParameter("query");
String q=request.getParameter("q");
String f=request.getParameter("f");
String p=request.getParameter("p");
String render=request.getParameter("render");
if("yes".equals(clearAll)){
    dataMap=new java.util.HashMap();
}else if("yes".equals(query) && q!=null && f!=null && p!=null){
    if(dataMap.get(f)==null){
        dataMap.put(f,new java.util.TreeMap());
    }
    java.util.TreeMap dataparts=(java.util.TreeMap)dataMap.get(f);
    dataparts.put(p,q);
}else if("yes".equals(render) && f!=null){
    if(dataMap.get(f)!=null){
        java.util.TreeMap dataparts=(java.util.TreeMap)dataMap.get(f);
		java.util.Set keys=(java.util.Set)dataparts.keySet();
		java.util.Iterator itr=keys.iterator();
		StringBuilder sb=new StringBuilder();
		while(itr.hasNext()){
			sb.append(dataparts.get(itr.next()));
		}
		out.print(sb.toString());
    }else{%>
        No Matching Information Found !!
    <%}
	}else{%>
Missing Required Parameters !!
<%}%>