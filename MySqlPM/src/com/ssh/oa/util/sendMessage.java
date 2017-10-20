package com.ssh.oa.util;

import java.net.URLEncoder;

import com.ssh.oa.util.HttpUtil;
import net.sf.json.JSONObject;
 
public class sendMessage {
 
    public static final String APPKEY = "4f8601239073c13c";// 你的appkey
    public static final String URL = "http://api.jisuapi.com/sms/send";
  
    public static Boolean Get(String phone,String mesg) {
    	
    String mobile = phone;// 手机号 超过1024请用POST
    //模板
    String content = mesg;
        String result = null;
       
        try {
        	 String url = URL + "?mobile=" + mobile + "&content=" + URLEncoder.encode(content, "utf-8")+"&appkey=" + APPKEY;
        	
            result = HttpUtil.sendGet(url, "utf-8");
            
            System.out.println("result--------------------------->>>>>>>"+result);
            JSONObject json = JSONObject.fromObject(result);
            if (json.getInt("status") != 0) {
                System.out.println(json.getString("msg"));
                return true;
            } else {
                JSONObject resultarr = json.optJSONObject("result");
                String count = resultarr.getString("count");
                String accountid = resultarr.getString("accountid");
                System.out.println(count + " " + accountid);
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
       return true; 
    }
}