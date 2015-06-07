package com.ashish.cdn;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Fetch extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String mimeType=req.getParameter("type");
		String furl=req.getParameter("furl");
		if(mimeType==null || furl==null){
			resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
			PrintWriter pw=resp.getWriter();
			pw.write("404 Not Found <br/> Invalid Request --> Missing \"type\" / \"furl\" parameter");
			pw.close();
			return;
		}
		HttpURLConnection con=(HttpURLConnection)new URL(furl).openConnection();
		ByteArrayInputStream bis=(ByteArrayInputStream)con.getInputStream();
		byte[] b=new byte[bis.available()];
		bis.read(b);
		resp.setContentType(mimeType);
		ServletOutputStream sos=resp.getOutputStream();
		sos.write(b);
		sos.close();
		bis.close();
		
	}
}
