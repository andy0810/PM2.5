package com.ssh.oa.view.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.ssh.oa.base.BaseAction;
import com.ssh.oa.po.PMData;
import com.ssh.oa.po.Weather;
import com.ssh.oa.util.EMail;
import com.ssh.oa.util.JsonUtil;
import com.ssh.oa.util.WeatherJson;
import com.ssh.oa.util.perason.Perason;

@Controller
@Scope("prototype")
public class FindAction extends BaseAction<PMData>implements 
ServletRequestAware,ServletResponseAware{
	
	HttpServletRequest request;
	HttpServletResponse response;
	public String webRequest;
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		}

		public void setServletResponse(HttpServletResponse response) {
		this.response=response;
		}
			

	public String findByCity()throws Exception{
		try{
		String cityName = this.request.getParameter("cityName");
		
		PMData pmInfo = new PMData();		
		pmInfo.setCityName(cityName);
		
		List<PMData> allByCity = findByCityService.findByCity(pmInfo);
		
		PMData p = new PMData();
		p = allByCity.get(0);
			
		//调用天气api
		String strPar = WeatherJson.getWeatherInfo(p.getCityName());
		Weather weather = WeatherJson.resultWeatherInfo(strPar);
		
		List<String> recvAddr = new ArrayList<String>();
		int type = 0;
		String mesg = "您所在城市【" + 
					p.getCityName() + "】空气中的【PM2.5浓度为】：" + p.getPm25()
					+" g/m3 【天气】：白天{"+weather.getWeather1_day()+"};  夜晚{"+weather.getWeather1_night()+"} " +
							";气温为【"+weather.getMin1()+"℃~"+weather.getMax1()+
							"℃】  未来一小时空气中的【PM2.5浓度为】：56g/m3 。";
		
		
		// allByCity.get(0).setPM25PREDICT("100");
		 ActionContext.getContext().put("allByCity", allByCity.get(0));
	//System.out.println("-------->总数"+allByCity.size());
		 
		 ActionContext.getContext().put("weather", weather);
		 
		} catch (Exception e) { 
			e.printStackTrace();
			}
		return SUCCESS;		
	}
	
	public String showAll()throws Exception{
		
		String cityName = this.request.getParameter("cityName");
		PMData pmInfo = new PMData();		
		pmInfo.setCityName(cityName);
		
		List<PMData> allCity = findByCityService.findByCity(pmInfo);
		
		ActionContext.getContext().put("allCity", allCity);
		
		return SUCCESS;
		
	}
	
	public String showWeather()throws Exception{	
		try{
			String cityName = this.request.getParameter("cityName");
			ActionContext.getContext().put("cityName", cityName);
			 
		} catch (Exception e) { 
			e.printStackTrace();
			}
		return SUCCESS;		
	}
	
	
public String showBySeek()throws Exception{
		
		String cityName = this.request.getParameter("cityName");
		String beginTime = this.request.getParameter("beginTime").replaceAll("-", "/").replaceAll("/0", "/").substring(0,9);
		String endTime = this.request.getParameter("endTime").replaceAll("-", "/").replaceAll("/0", "/").substring(0,9);
		
		List<PMData> allCity = findByCityService.findBySeek(cityName,beginTime,endTime);
		if(allCity.size()==0){
			ActionContext.getContext().put("flag", "222");
		}else{
		//pm25的记录值
		List<String> ListPM25 = new ArrayList<String>();
		//SO2的记录值
		List<String> ListSO2 = new ArrayList<String>();
		//O3的记录值
		List<String> ListO3 = new ArrayList<String>();
		//pm10的记录值
		List<String> ListPMTEN = new ArrayList<String>();
		//co的记录值
		List<String> ListCO = new ArrayList<String>();
		//NO2的记录值
		List<String> ListNO2 = new ArrayList<String>();
	
		for(PMData pm:allCity){
			ListPM25.add(pm.getPm25());
			ListCO.add(pm.getCo());
			ListNO2.add(pm.getNo2());
			ListPMTEN.add(pm.getPmTen());
			ListO3.add(pm.getO3());
			ListSO2.add(pm.getSo2());
		}	
		ActionContext.getContext().put("SO2", Perason.Cal(ListPM25, ListSO2));
		ActionContext.getContext().put("NO2", Perason.Cal(ListPM25, ListNO2));
		ActionContext.getContext().put("O3", Perason.Cal(ListPM25, ListO3));
		ActionContext.getContext().put("CO", Perason.Cal(ListPM25, ListCO));
		ActionContext.getContext().put("PMTEN", Perason.Cal(ListPM25, ListPMTEN));
		ActionContext.getContext().put("flag", "111");
		 }
		return SUCCESS;
		
	}
}
