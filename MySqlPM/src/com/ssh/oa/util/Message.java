package com.ssh.oa.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.concurrent.FutureCallback;
import org.apache.http.impl.nio.client.CloseableHttpAsyncClient;
import org.apache.http.impl.nio.client.HttpAsyncClients;
import org.apache.http.message.BasicNameValuePair;

public class Message {

	static String requestUrl = "http://api.feige.ee/SmsService/Send";

	public static Boolean send(String phoneNumber, String mesg) {
		// 发送短信
		List<NameValuePair> formparams = new ArrayList<NameValuePair>();
		formparams.add(new BasicNameValuePair("Account", "18372562410"));
		formparams.add(new BasicNameValuePair("Pwd", "026655c3f7328e31fdb3f3dbf"));

		// 发送短信内容为
		// String Message = "感谢您关注PM2.5监控系统，我们将为您提供最新的环境信息,您所在城市"
		// +pmData.getCityName()+"的PM2.5浓度为"+mesg;
		formparams.add(new BasicNameValuePair("Content", mesg));

		// 发送短信接收人为phone
		formparams.add(new BasicNameValuePair("Mobile", phoneNumber));
		formparams.add(new BasicNameValuePair("SignId", "32045"));
		try {
			Post(formparams);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
			
		}
         System.out.println("&&&&&&&&&&&&&短信发送成功&&&&&&&&&&&&&&&&&&&");
		return true;
	}

	public static void  Post(List<NameValuePair> formparams) throws Exception {
		CloseableHttpAsyncClient httpClient = HttpAsyncClients.createDefault();

		httpClient.start();

		HttpPost requestPost = new HttpPost(requestUrl);

		requestPost.setEntity(new UrlEncodedFormEntity(formparams, "utf-8"));

		httpClient.execute(requestPost, new FutureCallback<HttpResponse>() {

			public void failed(Exception arg0) {

				System.out.println("Exception: " + arg0.getMessage());
				// httpClient.close();
			}

			public void completed(HttpResponse arg0) {
				System.out.println("Response: " + arg0.getStatusLine());
				try {

					InputStream stram = arg0.getEntity().getContent();
					BufferedReader reader = new BufferedReader(new InputStreamReader(stram));
					System.out.println(reader.readLine());

				} catch (UnsupportedOperationException e) {
					e.printStackTrace();
				} catch (IOException e) {

					e.printStackTrace();
				}

			}

			public void cancelled() {
				// TODO Auto-generated method stub

			}
		});

		System.out.println("Done");
	}
}
