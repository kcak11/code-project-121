package com.ashish;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;

public class QueryClient {

	public static void main(String[] args) throws Exception {

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Please enter the datafilename: ");
		String fn = br.readLine();
		BufferedReader fr = new BufferedReader(new InputStreamReader(new FileInputStream(fn)));
		String s = fr.readLine();
		fr.close();
		System.out.println("Please enter filename:");
		String f = br.readLine();
		System.out.println("Please enter chunk_size:");
		String chunkSize = br.readLine();
		System.out.println("Please enter Proxy server (if no, enter NO):");
		String proxyServer = br.readLine();
		boolean proxyExists = false;
		Proxy proxy = null;
		if (!"NO".equals(proxyServer)) {
			proxyExists = true;
			System.out.println("Please enter Proxy server port: ");
			String proxyPort = br.readLine();
			int proxyServerPort = Integer.parseInt(proxyPort, 10);
			System.out.println("Please enter proxy username: ");
			final String proxyUser = br.readLine();
			System.out.println("Please enter proxy password: ");
			final String proxyPW = br.readLine();
			Authenticator authenticator = new Authenticator() {
				public PasswordAuthentication getPasswordAuthentication() {
					return (new PasswordAuthentication(proxyUser,
							proxyPW.toCharArray()));
				}
			};
			Authenticator.setDefault(authenticator);
			proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(
					proxyServer, proxyServerPort));

		}

		int chunk_size = Integer.parseInt(chunkSize, 10);
		String tmpStr;
		int start = 0;
		int origLength = s.length();
		System.out.println("Original Length: " + origLength + "\n\n");
		int endpos;
		int partNum = 11000;
		while (start < s.length()) {
			endpos = start + chunk_size;
			if (endpos > s.length()) {
				endpos = s.length();
			}
			tmpStr = s.substring(start, endpos);
			start += chunk_size;
			HttpURLConnection conn;
			if (proxyExists) {
				conn = (HttpURLConnection) new URL(
						"http://mykcak11cdn.ashishkumarkc.com/query")
						.openConnection(proxy);
			} else {
				conn = (HttpURLConnection) new URL(
						"http://mykcak11cdn.ashishkumarkc.com/query")
						.openConnection();
			}
			conn.setReadTimeout(10000);
			conn.setConnectTimeout(15000);
			conn.setRequestMethod("POST");
			conn.setDoInput(true);
			conn.setDoOutput(true);

			OutputStream os = conn.getOutputStream();
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(
					os, "UTF-8"));
			writer.write("query=yes&q=" + URLEncoder.encode(tmpStr, "UTF-8")
					+ "&f=" + f + "&p=part" + partNum);
			writer.flush();
			writer.close();
			os.close();

			conn.connect();
			InputStream is = conn.getInputStream();
			is.close();
			System.out.println("Completed Part: " + partNum);
			partNum++;
			Thread.sleep(242);
		}
		br.close();

		System.out.println("Task Completed -> filename: " + f);

	}

}
