package com.ssh.oa.view.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.ssh.oa.base.BaseAction;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;
import com.ssh.oa.po.Weather;
import com.ssh.oa.util.EMail;
import com.ssh.oa.util.WeatherJson;

@Controller
@Scope("prototype")
public class SavePMData extends BaseAction<PMData>{

	
	 public void save(){
		
		Timer timer = new Timer(); 		
			timer.schedule(new TimerTask() {  
            public void run() {  
	            //	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
	                System.out.println("-------设定要指定任务--------"); 
	      		  String str = SavePMData.getPMDataInfo("北京");
	      		PMData pd = SavePMData.resultPMDataInfo(str);
	    		  String str1 = SavePMData.getPMDataInfo("上海");
	    		  PMData pd1 = SavePMData.resultPMDataInfo(str1);
	    		  String str2 = SavePMData.getPMDataInfo("广州");
	    		  PMData pd2 = SavePMData.resultPMDataInfo(str2);
	    		  String str3 = SavePMData.getPMDataInfo("深圳");
	    		  PMData pd3 = SavePMData.resultPMDataInfo(str3);
	    		  String str4 = SavePMData.getPMDataInfo("杭州");
	    		  PMData pd4 = SavePMData.resultPMDataInfo(str4);
	    		  String str5 = SavePMData.getPMDataInfo("天津");
	    		  PMData pd5 = SavePMData.resultPMDataInfo(str5);
	    		  String str6 = SavePMData.getPMDataInfo("成都");
	    		  PMData pd6 = SavePMData.resultPMDataInfo(str6);
	    		  String str7 = SavePMData.getPMDataInfo("南京");
	    		  PMData pd7 = SavePMData.resultPMDataInfo(str7);
	    		  String str8 = SavePMData.getPMDataInfo("西安");
	    		  PMData pd8 = SavePMData.resultPMDataInfo(str8);
	    		  String str9 = SavePMData.getPMDataInfo("武汉");
	    		  PMData pd9 = SavePMData.resultPMDataInfo(str9);
	    		  		
	    		  PMData pm = PMDataService.findByTime(pd);
	    		  if( pm.getCityName() == null){
	    				PMDataService.save(pd);	 
	    				  //发送邮件
			    		 if("严重污染".equals(pd.getQuality())){
			    				 
			    			String strPar = WeatherJson.getWeatherInfo(pd.getCityName());
					    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
					    			
					    	List<String> recvAddr = new ArrayList<String>();
					    	int type = 0;
					    	String mesg = "您所在城市【" + 
					    	pd.getCityName() + "】空气中的【PM2.5浓度为】：" + pd.getPm25()
					    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
								";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
					    		"℃】 。";			
			    			List<User> allUser = findByCityService.send(pd.getCityName());
			    			if(allUser.size() > 0){
			    					
			    		    for(User u:allUser){
			    					
			    				 recvAddr.add(u.getEmail());
			    		   }
			    		 try {
			    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
			    		 } catch (Exception e) {
			    					// TODO: handle exception
			    		 }
			    	 }
			    	}	
	    		  }
	    		
	    		  PMData pm1 = PMDataService.findByTime(pd1);
	    		  if( pm1.getCityName() == null){
	    				
	    			  PMDataService.save(pd1);	    			  		   
		    			
	    			  //发送邮件
		    		 if("严重污染".equals(pd1.getQuality())){
		    				 
		    			String strPar = WeatherJson.getWeatherInfo(pd1.getCityName());
				    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
				    			
				    	List<String> recvAddr = new ArrayList<String>();
				    	int type = 0;
				    	String mesg = "您所在城市【" + 
				    	pd1.getCityName() + "】空气中的【PM2.5浓度为】：" + pd1.getPm25()
				    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
							";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
				    		"℃】 。";			
		    			List<User> allUser = findByCityService.send(pd1.getCityName());
		    			if(allUser.size() > 0){
		    					
		    		    for(User u:allUser){
		    					
		    				 recvAddr.add(u.getEmail());
		    		   }
		    		 try {
		    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
		    		 } catch (Exception e) {
		    					// TODO: handle exception
		    		 }
		    	 }
		    	}	
	    			  
	    	  }
	    		  PMData pm2 = PMDataService.findByTime(pd2);
	    		  if( pm2.getCityName() == null){
	    				PMDataService.save(pd2);
	    				
	    				  //发送邮件
			    		 if("严重污染".equals(pd2.getQuality())){
			    				 
			    			String strPar = WeatherJson.getWeatherInfo(pd2.getCityName());
					    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
					    			
					    	List<String> recvAddr = new ArrayList<String>();
					    	int type = 0;
					    	String mesg = "您所在城市【" + 
					    	pd2.getCityName() + "】空气中的【PM2.5浓度为】：" + pd2.getPm25()
					    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
								";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
					    		"℃】 。";			
			    			List<User> allUser = findByCityService.send(pd2.getCityName());
			    			if(allUser.size() > 0){
			    					
			    		    for(User u:allUser){
			    					
			    				 recvAddr.add(u.getEmail());
			    		   }
			    		 try {
			    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
			    		 } catch (Exception e) {
			    					// TODO: handle exception
			    		 }
			    	 }
			    	}	
	    		  }
	    		  PMData pm3 = PMDataService.findByTime(pd3);
	    		  if( pm3.getCityName() == null){
	    				PMDataService.save(pd3);
	    				
	    				  //发送邮件
			    		 if("严重污染".equals(pd3.getQuality())){
			    				 
			    			String strPar = WeatherJson.getWeatherInfo(pd3.getCityName());
					    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
					    			
					    	List<String> recvAddr = new ArrayList<String>();
					    	int type = 0;
					    	String mesg = "您所在城市【" + 
					    	pd3.getCityName() + "】空气中的【PM2.5浓度为】：" + pd3.getPm25()
					    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
								";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
					    		"℃】 。";			
			    			List<User> allUser = findByCityService.send(pd3.getCityName());
			    			if(allUser.size() > 0){
			    					
			    		    for(User u:allUser){
			    					
			    				 recvAddr.add(u.getEmail());
			    		   }
			    		 try {
			    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
			    		 } catch (Exception e) {
			    					// TODO: handle exception
			    		 }
			    	 }
			    	}	
	    		  }
	    		  PMData pm4 = PMDataService.findByTime(pd4);
	    		  if( pm4.getCityName() == null){
	    				PMDataService.save(pd4);	
	    				  //发送邮件
			    		 if("严重污染".equals(pd4.getQuality())){
			    				 
			    			String strPar = WeatherJson.getWeatherInfo(pd4.getCityName());
					    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
					    			
					    	List<String> recvAddr = new ArrayList<String>();
					    	int type = 0;
					    	String mesg = "您所在城市【" + 
					    	pd4.getCityName() + "】空气中的【PM2.5浓度为】：" + pd4.getPm25()
					    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
								";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
					    		"℃】 。";			
			    			List<User> allUser = findByCityService.send(pd4.getCityName());
			    			if(allUser.size() > 0){
			    					
			    		    for(User u:allUser){
			    					
			    				 recvAddr.add(u.getEmail());
			    		   }
			    		 try {
			    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
			    		 } catch (Exception e) {
			    					// TODO: handle exception
			    		 }
			    	 }
			    	}	
	    		 
	    		  }
	    		  
	    		  PMData pm5 = PMDataService.findByTime(pd5);
	    		  if( pm5.getCityName() == null){
	    				PMDataService.save(pd5);	
	    				
	    				  //发送邮件
			    		 if("严重污染".equals(pd5.getQuality())){
			    				 
			    			String strPar = WeatherJson.getWeatherInfo(pd5.getCityName());
					    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
					    			
					    	List<String> recvAddr = new ArrayList<String>();
					    	int type = 0;
					    	String mesg = "您所在城市【" + 
					    	pd5.getCityName() + "】空气中的【PM2.5浓度为】：" + pd5.getPm25()
					    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
								";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
					    		"℃】 。";			
			    			List<User> allUser = findByCityService.send(pd5.getCityName());
			    			if(allUser.size() > 0){
			    					
			    		    for(User u:allUser){
			    					
			    				 recvAddr.add(u.getEmail());
			    		   }
			    		 try {
			    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
			    		 } catch (Exception e) {
			    					// TODO: handle exception
			    		 }
			    	 }
			    	}	
	    				
	    		  }
	    		  PMData pm6 = PMDataService.findByTime(pd6);
	    		  if( pm6.getCityName() == null){
	    				PMDataService.save(pd6);	
	    				
	    				  //发送邮件
			    		 if("严重污染".equals(pd6.getQuality())){
			    				 
			    			String strPar = WeatherJson.getWeatherInfo(pd6.getCityName());
					    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
					    			
					    	List<String> recvAddr = new ArrayList<String>();
					    	int type = 0;
					    	String mesg = "您所在城市【" + 
					    	pd6.getCityName() + "】空气中的【PM2.5浓度为】：" + pd6.getPm25()
					    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
								";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
					    		"℃】 。";			
			    			List<User> allUser = findByCityService.send(pd6.getCityName());
			    			if(allUser.size() > 0){
			    					
			    		    for(User u:allUser){
			    					
			    				 recvAddr.add(u.getEmail());
			    		   }
			    		 try {
			    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
			    		 } catch (Exception e) {
			    					// TODO: handle exception
			    		 }
			    	 }
			    	}	
	    		  }
	    		  PMData pm7 = PMDataService.findByTime(pd7);
	    		  if( pm7.getCityName() == null){
	    				PMDataService.save(pd7);	
	    				
	    				  //发送邮件
			    		 if("严重污染".equals(pd7.getQuality())){
			    				 
			    			String strPar = WeatherJson.getWeatherInfo(pd7.getCityName());
					    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
					    			
					    	List<String> recvAddr = new ArrayList<String>();
					    	int type = 0;
					    	String mesg = "您所在城市【" + 
					    	pd7.getCityName() + "】空气中的【PM2.5浓度为】：" + pd7.getPm25()
					    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
								";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
					    		"℃】 。";			
			    			List<User> allUser = findByCityService.send(pd7.getCityName());
			    			if(allUser.size() > 0){
			    					
			    		    for(User u:allUser){
			    					
			    				 recvAddr.add(u.getEmail());
			    		   }
			    		 try {
			    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
			    		 } catch (Exception e) {
			    					// TODO: handle exception
			    		 }
			    	 }
			    	}	
	    		  } 
	    		  PMData pm8 = PMDataService.findByTime(pd8);
	    		  if( pm8.getCityName() == null){
	    				PMDataService.save(pd8);	
	    				
	    				  //发送邮件
			    		 if("严重污染".equals(pd8.getQuality())){
			    				 
			    			String strPar = WeatherJson.getWeatherInfo(pd8.getCityName());
					    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
					    			
					    	List<String> recvAddr = new ArrayList<String>();
					    	int type = 0;
					    	String mesg = "您所在城市【" + 
					    	pd8.getCityName() + "】空气中的【PM2.5浓度为】：" + pd8.getPm25()
					    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
								";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
					    		"℃】 。";			
			    			List<User> allUser = findByCityService.send(pd8.getCityName());
			    			if(allUser.size() > 0){
			    					
			    		    for(User u:allUser){
			    					
			    				 recvAddr.add(u.getEmail());
			    		   }
			    		 try {
			    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
			    		 } catch (Exception e) {
			    					// TODO: handle exception
			    		 }
			    	 }
			    	}	
	    		  } 
	    		  PMData pm9 = PMDataService.findByTime(pd9);
	    		  if( pm9.getCityName() == null){
	    				PMDataService.save(pd9);	
	    				
	    				  //发送邮件
			    		 if("严重污染".equals(pd9.getQuality())){
			    				 
			    			String strPar = WeatherJson.getWeatherInfo(pd9.getCityName());
					    	Weather weather = WeatherJson.resultWeatherInfo(strPar);
					    			
					    	List<String> recvAddr = new ArrayList<String>();
					    	int type = 0;
					    	String mesg = "您所在城市【" + 
					    	pd9.getCityName() + "】空气中的【PM2.5浓度为】：" + pd9.getPm25()
					    		+" g/m3，污染严重，请注意防范。 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
								";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
					    		"℃】 。";			
			    			List<User> allUser = findByCityService.send(pd9.getCityName());
			    			if(allUser.size() > 0){
			    					
			    		    for(User u:allUser){
			    					
			    				 recvAddr.add(u.getEmail());
			    		   }
			    		 try {
			    			Boolean b = EMail.sendEMail(recvAddr,mesg,type);
			    		 } catch (Exception e) {
			    					// TODO: handle exception
			    		 }
			    	 }
			    	}	
	    		  }
	               // System.out.println("当前时间："+sdf.format(new Data()));
	           }  
	        }, 500,1000*60*60);// 设定指定的时间time,此处为2000毫秒  
		
		
			//北京  上海 西安 杭州  广州 深圳 天津 成都 南京	

	//	return SUCCESS;
	}
	//获取json数据
	static String getPMDataInfo(String cityName){  
	      
	      //空气pm2.5 API   
	      String pm25api = "";  
	      StringBuffer strBuf;  

	      try {  
	    	  //4471fa7893db49c783231db9102755eb
	      //通过浏览器直接访问http://apis.haoservice.com/air/cityair?city=enshi&key=6ec1cc31110a4375a185f5e834586cf1  
	      //6ec1cc31110a4375a185f5e834586cf1 是我自己申请的一个AK(许可码)，如果访问不了，可以自己去申请一个新的ak   
	      //要访问的地址URL，通过URLEncoder.encode()函数对于中文进行转码                              
	     	 pm25api = "http://web.juhe.cn:8080/environment/air/pm?city="+URLEncoder.encode(cityName, "utf-8")+"&key=2be5f07f46681776c64e086cc2fc96fe";                    
	      } catch (UnsupportedEncodingException e1) {               
	          e1.printStackTrace();                     
	      }  

	      strBuf = new StringBuffer();  
	            
	      try{  
	          URL url = new URL(pm25api);  
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

		static PMData resultPMDataInfo(String strPar){  
			
			 
		     
			JSONObject dataOfJson = JSONObject.fromObject(strPar);  
	    
	      //保存全部的信息。  
	      //PMData pmData = new PMData();  
	      
	      String error_code = dataOfJson.getString("error_code");
	      String reason = dataOfJson.getString("reason");
	     // String result = dataOfJson.getString("result");
	      //从json数据中取得result 
	     // JSONObject result0 = JSONObject.fromObject(result);
	     
	      JSONArray result = dataOfJson.getJSONArray("result");
         
	      JSONObject result0 = result.getJSONObject(0);
	     
	      // Result res =  (Result) JsonUtil.getInstance().json2obj(result, Result.class);
	      PMData res = new PMData();
	      
	      res.setCityName(result0.getString("city"));
	      res.setPmTen(result0.getString("PM10"));
	      res.setPm25(result0.getString("PM2.5"));
	      res.setAqi(result0.getString("AQI"));
	      res.setCo(result0.getString("CO"));
	      res.setNo2(result0.getString("NO2"));
	      res.setO3(result0.getString("O3"));
	      res.setSo2(result0.getString("SO2"));
	      res.setUpdateTime(result0.getString("time").replaceAll("-", "/").substring(0,16).replace("/0","/" ));
	      res.setQuality(result0.getString("quality"));
	      res.setError_code(error_code);
	      res.setReason(reason);
            System.out.println("save-------------------------------->"+res.toString());
	      
       
         
	      return res;
		}
		
		
	
	 
}
