package com.ssh.oa.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.ssh.oa.po.Weather;

public class WeatherJson {
	final static String WeathURL = "https://free-api.heweather.com/v5/forecast?city=北京&key=955d744763a54d51a549276c3e0698f2";
	final static String APPKEY = "955d744763a54d51a549276c3e0698f2";
	
	public static String getWeatherInfo(String cityName){
		 String wt = "";
		 StringBuffer strBuf;
	      //要访问的地址URL，通过URLEncoder.encode()函数对于中文进行转码                              
			// wt = "https://free-api.heweather.com/v5/forecast?city="+URLEncoder.encode(cityName, "utf-8")+"&key="+APPKEY;                    
	     try {
			wt = "https://free-api.heweather.com/v5/forecast?city="+URLEncoder.encode(cityName, "utf-8")+"&key=955d744763a54d51a549276c3e0698f2";
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
	
	      strBuf = new StringBuffer();  
	            
	      try{  
	          URL url = new URL(wt);  
	          URLConnection conn = url.openConnection();  
	          BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(),"utf-8"));//转码。  
	          String line = null;  
	          while ((line = reader.readLine()) != null)  
	              strBuf.append(line + " ");  
	              reader.close();  
	      }catch(MalformedURLException e) {  
	          e.printStackTrace();   
	      }catch(IOException e){  
	          e.printStackTrace();   
	      } 
	      return strBuf.toString();  	
	}
	
	public static Weather resultWeatherInfo(String strPar){  
		 
		Weather res = new Weather();
		 
		JSONObject dataOfJson = JSONObject.fromObject(strPar);  
    
     // String result = dataOfJson.getString("result");
      //从json数据中取得result 
     // JSONObject result0 = JSONObject.fromObject(result);
     
      JSONArray result = dataOfJson.getJSONArray("HeWeather5");    
      JSONObject result0 = result.getJSONObject(0);
     
      JSONObject basic = result0.getJSONObject("basic");
      JSONObject basic1 = basic.getJSONObject("update");      
      res.setUpdateTime(basic1.getString("loc"));
      res.setUtcTime(basic1.getString("utc"));
      //第一天的相关信息  getJSONObject(0);
      JSONArray daily_forecast = result0.getJSONArray("daily_forecast");
      JSONObject cond0 = daily_forecast.getJSONObject(0);
      
      //天气状况
      JSONObject c1 = cond0.getJSONObject("cond");
      res.setDaycode1(c1.getInt("code_d"));
    //  res.setDaycode1(c1.getString("code_d"));
      res.setWeather1_day(c1.getString("txt_d"));
      res.setWeather1_night(c1.getString("txt_n"));
   
      //相对湿度
     // JSONObject hum1 = cond0.getJSONObject("hum");
      res.setHum1(cond0.getString("hum"));
      res.setDate1(cond0.getString("date"));
    //气温
      JSONObject tmp1 = cond0.getJSONObject("tmp");
      res.setMin1(tmp1.getString("min"));
      res.setMax1(tmp1.getString("max"));
      
      //风力
      JSONObject wind1 = cond0.getJSONObject("wind");
      res.setWind1(wind1.getString("sc"));
      
      //第二天的相关信息  getJSONObject(0);
      JSONObject cond2 = daily_forecast.getJSONObject(1);
     
      JSONObject c2 = cond2.getJSONObject("cond");
      res.setDaycode2(c2.getInt("code_d"));
      res.setWeather2_day(c2.getString("txt_d"));
      res.setWeather2_night(c2.getString("txt_n"));
      
      res.setHum2(cond2.getString("hum"));
      res.setDate2(cond2.getString("date"));
      
      JSONObject tmp2 = cond2.getJSONObject("tmp");
      res.setMin2(tmp2.getString("min"));
      res.setMax2(tmp2.getString("max"));

      JSONObject wind2 = cond2.getJSONObject("wind");
      res.setWind2(wind2.getString("sc"));

      //第三天的相关信息  getJSONObject(2);
      JSONObject cond3 = daily_forecast.getJSONObject(2);
     
      JSONObject c3 = cond3.getJSONObject("cond");
      res.setDaycode3(c3.getInt("code_d"));
      res.setWeather3_day(c3.getString("txt_d"));
      res.setWeather3_night(c3.getString("txt_n"));
      
      res.setHum3(cond3.getString("hum"));
      res.setDate3(cond3.getString("date"));
      
      JSONObject tmp3 = cond3.getJSONObject("tmp");
      res.setMin3(tmp3.getString("min"));
      res.setMax3(tmp3.getString("max"));

      JSONObject wind3 = cond3.getJSONObject("wind");
      res.setWind3(wind3.getString("sc"));
      
    
      return res;
	}
}

