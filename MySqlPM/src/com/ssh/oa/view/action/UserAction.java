package com.ssh.oa.view.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ssh.oa.base.BaseAction;

import com.ssh.oa.po.PMData;
import com.ssh.oa.po.User;
import com.ssh.oa.po.Weather;

import com.ssh.oa.service.UserService;
import com.ssh.oa.util.WeatherJson;
import com.ssh.oa.util.sendMessage;
import com.ssh.oa.util.EMail;


@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>implements 
ServletRequestAware,ServletResponseAware{
	
	HttpServletRequest request;
	HttpServletResponse response;
	
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		}

		public void setServletResponse(HttpServletResponse response) {
		this.response=response;
		}
	
	public String addUser() throws Exception {

	// 此时中的值形如：{phone=44444444, 44444444, 
	//            email=4444444444@qq.com, 4444444444@qq.com, 
	//			  cityName=北京, 北京}
	//	model.setNICKNAME((model.getNICKNAME().split(","))[0]);
	
	//	System.out.println("&&&&&&&&&&"+model.getCITYNAME().split(",")[0]);
	//	System.out.println("&&&&&&&&&&"+model.getEMAIL().split(",")[0]);
	//	System.out.println("&&&&&&&&&&"+model.getPHONE().split(",")[0]);
		
		//String cityName = this.request.getParameter("cityName");
		
		// 0 接受   1 不接受
		String isNotify =  this.request.getParameter("notify");
		

		
		User model = new User();
		
		model.setNickName((this.request.getParameter("nickName").split(","))[0]);
		model.setCityName((this.request.getParameter("cityName").split(","))[0]);
		model.setEmail((this.request.getParameter("email").split(","))[0]);
		model.setPhone((this.request.getParameter("phone").split(","))[0]);
		
		String cityName = model.getCityName();
		String phone = model.getPhone();
		String email = model.getEmail();
		List<String> recvAddr = new ArrayList<String>();
		recvAddr.add(model.getEmail());
	
		
		int type = 1;
		PMData pmData = findByCityService.find(cityName).get(0);

		//调用天气api
		String strPar = WeatherJson.getWeatherInfo(pmData.getCityName());
		Weather weather = WeatherJson.resultWeatherInfo(strPar);
		
		String wd = weather.getWeather1_day();
		String wn = weather.getWeather1_night();

		String mesg = "感谢您关注PM2.5监控系统，我们将为您提供最新的环境信息,您所在城市〖"
					+pmData.getCityName()+"〗空气中的PM2.5浓度为："+pmData.getPm25()
					+"g/m3 ；未来一小时空气中的PM2.5浓度预测值为："+pmData.getPm25Predict()+"g/m3；白天天气："+
					wd+"，夜晚天气："+wn+"【PM2.5监控】";
		
		
		
		
		if("0".equals(isNotify)){
			
			// 发送短信
			Boolean MesgB = sendMessage.Get(phone,mesg);
			if(MesgB){
				String mg = "FF";
				ActionContext.getContext().put("mg", mg);
				return SUCCESS;
			}
			//发送邮件	
			try{
				Boolean b = EMail.sendEMail(recvAddr,mesg,type);
				
			}catch (Exception e) {
				String flag = "FF";
				ActionContext.getContext().put("flag", flag);
			
				return SUCCESS;
			}			
				
		}
		
		// Message.send(phone, m);
		
	
		
		// 保存用户
	     userService.save(model);
		String t = "success";
		ActionContext.getContext().put("cityName", cityName);
		ActionContext.getContext().put("t", t);
		return SUCCESS;
	}
}
