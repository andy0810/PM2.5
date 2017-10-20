<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN" xml:lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PM2.5数据监测系统</title>
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<link href="http://www.pm25.com/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/index.css" rel="stylesheet" type="text/css" />
<script src="http://www.pm25.com/sea-modules/seajs/seajs/2.2.1/sea.js"></script>
<script src="http://www.pm25.com/sea-modules/conf/common.js"></script>
</head>
<body>
<!--顶部功能条-->
<div class="topnav_width">
       <div class="topnav">
                 <div class="topnav_left">
                        <a class="topnav_sitemap" href="#" style="padding-bottom:8px;">网站简介</a>
                        <b>|</b>
                        <a class="topnav_phone" href="index11.jsp" style="padding-bottom:8px;">关注我们</a>
                        
                 </div>
                 <div class="topnav_right">
                        <div class="topnav_search">
                               <div class="topnav_search_input">
                                           <input type="text" value="" placeholder="信息查询" class="topnav_search_city_text" >
                                           <input type="button" class="topnav_search_btn topnav_search_btn_active">
                                           <div class="clear"></div>
                               </div>
                               <!--即时显示搜索结果-->
                               
                       </div>
                        <a class="topnav_map" href="#">查看用户信息</a>
                </div>
       </div>

</div>

<!--导航-->
<div class="menu_width">
         <div class="menu">
              <div class="menu_logo" ><img src="${pageContext.request.contextPath }/images/logo.png"/></div>
              <ul class="menu_list"> 
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                  <s:if test="#allByCity.cityName=='北京'">
                    <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=北京"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=北京"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=北京"><span>历史天气</span></a></li>     
                  </s:if>
                  <s:if test="#allByCity.cityName=='上海'">
                    <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=上海"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=上海"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=上海"><span>历史天气</span></a></li>
                  </s:if>
                  <s:if test="#allByCity.cityName=='深圳'">
                    <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=深圳"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=深圳"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=深圳"><span>历史天气</span></a></li>
                  </s:if>
                    <s:if test="#allByCity.cityName=='杭州'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=杭州"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=杭州"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=杭州"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allByCity.cityName=='天津'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=天津"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=天津"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=天津"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allByCity.cityName=='西安'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=西安"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=西安"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=西安"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allByCity.cityName=='成都'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=成都"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=成都"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=成都"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allByCity.cityName=='武汉'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=武汉"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=武汉"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=武汉"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allByCity.cityName=='广州'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=广州"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=广州"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=广州"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allByCity.cityName=='南京'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=南京"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=南京"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=南京"><span>历史天气</span></a></li>
                    </s:if>
                    <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                    <div class="clear"></div>
              </ul>
         </div>   
</div>
<!--banner上的阴影-->
<div class="banner_shadow"></div>
<!--始终固定在最上边的内容显示-->
<div class="banner_index_width">
        <div class="banner_index">
               <!--切换城市-->
               <div class="bi_location">
                        <a class="bi_location_add minicity_clk" href="javascript:void(0)"></a>
                        <h2 class="bi_loaction_city"><s:property value="#allByCity.cityName"/></h2>
                        <!--鼠标划上来后，在这里加“bi_location_content_hover”-->
                                                <div class="bi_location_content">
                                 <a class="bi_location_content_dropdown" href="javascript:void(0)"><span class="mon_span">切换城市</span><i></i></a>
<div class="bi_location_content_active hide">
                                         <ul>
                                              <li><a class="dontSelect current" href="javascript:void(0)" mon="选择监测点" aqi="86" pm25="63" qua="微克" lv="2" url="#"><i>•</i>十大热门城市</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=上海" mon="上海"  pm25="57" qua="微克" lv="2"><i>•</i>上海</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=武汉" mon="武汉"  pm25="48" qua="微克" lv="2" url="#"><i>•</i>武汉</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=深圳" mon="深圳"  pm25="57" qua="微克" lv="2"><i>•</i>深圳</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=北京" mon="北京"  pm25="56" qua="微克" lv="2" url="#"><i>•</i>北京</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=天津" mon="天津"  pm25="70" qua="微克" lv="2" url="#"><i>•</i>天津</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=南京" mon="南京" pm25="67" qua="微克" lv="2" url="#"><i>•</i>南京</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=广州" mon="广州"  pm25="75" qua="微克" lv="2" url="#"><i>•</i>广州</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=西安" mon="西安" pm25="66" qua="微克" lv="2" url="#"><i>•</i>西安</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=成都" mon="成都"  pm25="79" qua="微克" lv="3" url="#"><i>•</i>成都</a></li>
                                              <li><a href="${pageContext.request.contextPath }/findByCity.action?cityName=杭州" mon="杭州"  pm25="52" qua="微克" lv="2" url="#"><i>•</i>杭州</a></li>
                                                                                                                                                       </ul>
                                  </div>
                          </div> 
                                       </div>                
               <!--出行建议-->
<div class="bi_news">
<ul class="bi_news_closed">
<li style="margin-top:0px;"><a class="bi_news_closed_dangdi" href="#" target="_blank"><b><img src="${pageContext.request.contextPath }/images/guangbo.png"/></b><span>PM2.5日常小知识普及</span></a></li>
<li style="margin-top:0px;"><a class="bi_news_closed_dangdi" href="#" target="_blank"><b><img src="${pageContext.request.contextPath }/images/guangbo.png"/></b><span>今日天气状况详细报告</span></a></li>
<li style="margin-top:0px;"><a class="bi_news_closed_dangdi" href="#" target="_blank"><b><img src="${pageContext.request.contextPath }/images/guangbo.png"/></b><span>最新时段的PM2.5数据已经更新</span></a></li>
<li style="margin-top:0px;"><a class="bi_news_closed_dangdi" href="#" target="_blank"><b><img src="${pageContext.request.contextPath }/images/guangbo.png"/></b><span>日常清肺食谱消息</span></a></li>
                                                                          </ul>   
               </div>
               
               <!--PM2.5数据展示-->
               <div class="bi_aqiarea">
                   <div class="bi_aqiarea_top">
                        
                         <span class="bi_aqiarea_tips" style="font-size:16px;width:300px;">
                                                                                          更新时间:<s:property value="#allByCity.updateTime"/></span>
                        
                        <a class="bi_aqiarea_num" style="font-size:80px;" href="#"><s:property value="#allByCity.pm25"/></a>
                        <!--划上去可以摊开页面底部的曲线图-->
                        <p class="bi_aqiarea_right">
                          <span class="bi_aqiarea_wuran wuranlevel_2"><s:property value="#allByCity.quality"/></span>
                          <span class="bi_aqiarea_tips">微克/立方米</span>
                          
                              
                        </p>
                         
                        <div class="clear">
                      
                        </div>
                    </div>
                    <div class="bi_aqiarea_bottom">
                        <s:if test="#allByCity.cityName=='北京'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>
                         <s:if test="#allByCity.cityName=='上海'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>  
                         <s:if test="#allByCity.cityName=='天津'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>
                         <s:if test="#allByCity.cityName=='西安'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>              
                         <s:if test="#allByCity.cityName=='南京'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>
                         <s:if test="#allByCity.cityName=='杭州'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>              
                         <s:if test="#allByCity.cityName=='深圳'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>
                         <s:if test="#allByCity.cityName=='武汉'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>  
                         <s:if test="#allByCity.cityName=='广州'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>
                         <s:if test="#allByCity.cityName=='成都'">
                            <p>下一时段PM2.5预测值：<span style="font-size:24px;color:#f47920;"><s:property value="#allByCity.pm25Predict"/></span>微克/立方米</p>
                        </s:if>                                      
                         <p>健康生活，从关注PM2.5开始</p>
                                        </div>
               </div>
      
               
			 <div class="b-p"><button style="width:200px; height:40px; border-radius:5px; margin-top:400px;"><a href="index11.jsp">点击关注，惊喜多多</a></button></div>
			 <div class=""></div>
               
               <!--天气位置-->
             <div class="bi_infoarea">
                     <div class="bi_info">
                            <!--鼠标划到分享按钮上的时候，先增加个“bi_info_hover”，再把下边的“bi_info_active”变为"display:block"-->
							<div class="" style="font-size:24px; float:left; margin:-140px 0px 0px 24px;">近三天天气情况</div>
							<div class="clear"></div>
                            <table style="border:none; color:#FFFFFF; font-size:14px; cellspacing:1px; width:500px; height:200px; margin:-88px -20px 48px 20px;">
							<tr>
							<td><s:property value="#weather.date1"/></td>
							<td><s:property value="#weather.date2"/></td>
							<td><s:property value="#weather.date3"/></td>
							</tr>
				
							<tr>
							<td><img src="${pageContext.request.contextPath }/images/<s:property value="#weather.daycode1"/>.png"></td>
							<td><img src="${pageContext.request.contextPath }/images/<s:property value="#weather.daycode2"/>.png"></td>
							<td><img src="${pageContext.request.contextPath }/images/<s:property value="#weather.daycode3"/>.png"></td>
							</tr>
							
							<tr>
							<td>白天: &nbsp<s:property value="#weather.weather1_day"/> &nbsp&nbsp夜晚: &nbsp<s:property value="#weather.weather1_night"/></td>
							<td>白天: &nbsp<s:property value="#weather.weather2_day"/> &nbsp&nbsp夜晚: &nbsp<s:property value="#weather.weather1_night"/></td>
							<td>白天: &nbsp<s:property value="#weather.weather2_day"/> &nbsp&nbsp夜晚: &nbsp<s:property value="#weather.weather1_night"/></td>
					
							</tr>
							
							<tr>
							<td><s:property value="#weather.min1"/>℃~<s:property value="#weather.max3"/>℃</td>
							<td><s:property value="#weather.min2"/>℃~<s:property value="#weather.max3"/>℃</td>
							<td><s:property value="#weather.min3"/>℃~<s:property value="#weather.max3"/>℃</td>
							</tr>
							
							<tr>
							<td><s:property value="#weather.wind1"/></td>
							<td><s:property value="#weather.wind2"/></td>
							<td><s:property value="#weather.wind3"/></td>
							</tr>
							
							<tr>
							<td>相对湿度:&nbsp&nbsp<s:property value="#weather.hum1"/></td>
							<td>相对湿度:&nbsp&nbsp<s:property value="#weather.hum2"/></td>
							<td>相对湿度:&nbsp&nbsp<s:property value="#weather.hum3"/></td>
					
							</tr>
							</table>
                     <p class="bi_info_tips">数据来源：PM2.5项目组&nbsp;&nbsp;&nbsp;&nbsp;更新时间：&nbsp&nbsp<s:property value="#weather.updateTime"/>
                     &nbsp;&nbsp;&nbsp;&nbsp;世界标准时间（UTC）：&nbsp&nbsp<s:property value="#weather.utcTime"/></p>
               </div>
        </div>
</div>
<!--主体内容-->
<div class="index_main_width">
    <div class="index_main">
        <div class="im_shenghuo">
              <p id="shzn" class="im_shenghuo_title">出行防雾霾，今日好建议</p>
              <ul class="im_shenghuo_details">
                    <li class="im_shenghuo_kouzhao"> 
                        <!--鼠标划到对应的li上的时候，显示这个div-->
                        <div class="im_shenghuo_item_hover im_shenghuo_item_color_neight" style="display:none;">
                             <p class="im_shenghuo_item_hover_title"><i></i><span>佩戴指南</span></p>
                             
                          
                              <s:if test="(#allByCity.pm25)*1.0>=('75')*1.0">
                                  <p class="im_shenghuo_item_hover_info"><s:property value="#allByCity.pm25"/>此时空气中PM2.5浓度较高，请佩戴口罩</p>
                              </s:if>  
                              <s:if test="(#allByCity.pm25)*1.0<('75')*1.0">
                                  <p class="im_shenghuo_item_hover_info">此时空气状况良好，不用佩戴口罩</p>
                              </s:if>  
                        </div>
                        <dl>
                             <dt><i><img src="${pageContext.request.contextPath }/images/11.png"></i></dt>
                             <dd>口罩建议</dd>
                        </dl>
                    </li>
                     <li class="im_shenghuo_yundong"> 
                        <!--鼠标划到对应的li上的时候，显示这个div-->
                        <div class="im_shenghuo_item_hover im_shenghuo_item_color_neight" style="display:none;">
                             <p class="im_shenghuo_item_hover_title"><span>运动建议</span></p>
                              <s:if test="(#allByCity.pm25)*1.0>=('75')*1.0">
                                  <p class="im_shenghuo_item_hover_info">此时空气中PM2.5浓度较高，请减少室外运动</p>
                              </s:if>  
                              <s:if test="(#allByCity.pm25)*1.0<('75')*1.0">
                                  <p class="im_shenghuo_item_hover_info">此时空气状况良好，可进行室外运动</p>
                              </s:if>  
                        </div>
                        <dl>
                             <dt><i><img src="${pageContext.request.contextPath }/images/12.png"></i></dt>
                             <dd>运动建议</dd>
                        </dl>
                    </li>
                     <li class="im_shenghuo_kaichuang"> 
                        <!--鼠标划到对应的li上的时候，显示这个div-->
                        <div class="im_shenghuo_item_hover im_shenghuo_item_color_neight" style="display:none;">
                             <p class="im_shenghuo_item_hover_title"><span>开窗通风</span></p>
                             <s:if test="(#allByCity.pm25)*1.0>=('75')*1.0">
                                  <p class="im_shenghuo_item_hover_info">此时空气中PM2.5浓度较高，请减少开窗时间</p>
                              </s:if>  
                              <s:if test="(#allByCity.pm25)*1.0<('75')*1.0">
                                  <p class="im_shenghuo_item_hover_info">此时空气状况良好，建议开窗通风</p>
                              </s:if>  
                        </div>
                        <dl>
                             <dt><i><img src="${pageContext.request.contextPath }/images/13.png"></i></dt>
                             <dd>开窗建议</dd>
                        </dl>
                    </li>
                     <li class="im_shenghuo_guomin"> 
                        <!--鼠标划到对应的li上的时候，显示这个div-->
                        <div class="im_shenghuo_item_hover im_shenghuo_item_color_neight" style="display:none;"> 
                             <s:if test="(#allByCity.pm25)*1.0>=('75')*1.0">
                                <p class="im_shenghuo_item_hover_title"><span>污染严重</span></p>
                                <p class="im_shenghuo_item_hover_info">此时空气中PM2.5浓度较高，尽量减少体力消耗大的户外运动</p>
                              </s:if>  
                              <s:if test="(#allByCity.pm25)*1.0<('75')*1.0">
                                <p class="im_shenghuo_item_hover_title"><span>正常</span></p>
                                <p class="im_shenghuo_item_hover_info">此时空气状况良好，可进行各项户外运动</p>
                              </s:if>  
                        </div>
                        <dl>
                             <dt><i><img src="${pageContext.request.contextPath }/images/14.png"></i></dt>
                             <dd>敏感预防</dd>
                        </dl>
                    </li>
                     <li class="im_shenghuo_jinghua"> 
                        <!--鼠标划到对应的li上的时候，显示这个div-->
                        <div class="im_shenghuo_item_hover im_shenghuo_item_color_neight" style="display:none;">
                              <s:if test="(#allByCity.pm25)*1.0>=('75')*1.0">
                                <p class="im_shenghuo_item_hover_title"><span>打开净化器</span></p>
                                <p class="im_shenghuo_item_hover_info">此时空气中PM2.5浓度较高，敏感人群请开启空气净化器</p>
                              </s:if>  
                              <s:if test="(#allByCity.pm25)*1.0<('75')*1.0">
                                <p class="im_shenghuo_item_hover_title"><span>关闭净化器</span></p>
                                <p class="im_shenghuo_item_hover_info">此时空气状况良好，建议关闭空气净化器</p>
                              </s:if>  
                        </div>
                        <dl>
                             <dt><i><img src="${pageContext.request.contextPath }/images/15.png"></i></dt>
                             <dd>空气净化</dd>
                        </dl>
                    </li>
                     <li class="im_shenghuo_chuxing" style="border-right:none;"> 
                        <!--鼠标划到对应的li上的时候，显示这个div-->
                        <div class="im_shenghuo_item_hover im_shenghuo_item_color_neight" style="display:none;">
                           
                            <s:if test="(#allByCity.pm25)*1.0>=('75')*1.0">
                                <p class="im_shenghuo_item_hover_title"><span>污染严重</span></p>
                                <p class="im_shenghuo_item_hover_info">此时空气中PM2.5浓度较高，建议乘坐有空气净化器的车辆，并关闭车窗</p>
                              </s:if>  
                              <s:if test="(#allByCity.pm25)*1.0<('75')*1.0">
                                <p class="im_shenghuo_item_hover_title"><span>空气质量正常</span></p>
                                <p class="im_shenghuo_item_hover_info">此时空气状况良好，对车辆出行无影响</p>
                              </s:if>  
                        </div>
                        <dl>
                             <dt><i><img src="${pageContext.request.contextPath }/images/16.png"></i></dt>
                             <dd>坐车建议</dd>
                        </dl>
                    </li>
              </ul>
        </div>
        
        <!--左侧内容-->
        <div class="index_main_left">
                <!--着装建议-->
                <div class="iml_people">
                     <p class="im_people_title">着装与饮食建议</p>
                     <ul>
                          <!--鼠标状态又来了-li里增加“im_people_yunfu_hover”-->
                          <li class="im_people_yunfu">
                            
                               <span><i><img src="${pageContext.request.contextPath }/images/34.png"></i></span>
                               <p class="btn_yunfu">普通人群</p>
                             
                               <p>普通人群是指在日常生活中对雾霾产生的影响没有对其造成影响，
                                                                                                                                                                                                                            或者轻微影响但是不影响正常生活的人群</p>                                                                                                                                                                                                           
                            
                          </li>
                          <!--鼠标状态又来了-li里增加“im_people_laoren_hover”-->
                          <li class="im_people_laoren ">
                             
                               <span><i><img src="${pageContext.request.contextPath }/images/33.png"></i></span>
                               <p class="btn_laoren">特殊人群</p>
                             	<p> 特殊人群是指在日常生活中对雾霾产生的影响对其造成影响，或者严重影响正常生活的人群</p>
                             
                          </li>
                          <!--鼠标状态又来了-li里增加“im_people_mingan_hover”-->
                          <li class="im_people_mingan ">
                             
                               <span><i><img src="${pageContext.request.contextPath }/images/36.png"></i></span>
                               <p class="btn_mingan">穿衣建议</p>
                              <s:if test="(#weather.max1)*1.0<('15')*1.0">
                                  <p>天气寒冷，请注意添加衣物，防止感冒</p>
                              </s:if>  
                              <s:elseif test="(#weather.min1)*1.0>('20')*1.0 || (#weather.max1)*1.0>('28')*1.0">
                                  <p>天气炎热，请注意减少衣物，避免中暑</p>
                              </s:elseif>  
                              <s:else>
                                 <p>天气凉爽，适合穿各种舒适，漂亮的衣物</p>
                              </s:else>
                             
                          </li>
                          <!--鼠标状态又来了-li里增加“im_people_jibing_hover”-->
                          <li class="im_people_jibing " style="margin-right:0px;">
                              
                               <span><i><img src="${pageContext.request.contextPath }/images/39.png"></i></span>
                               <p class="btn_jibing">护肤建议</p>
                                <s:if test="(#weather.hum1)*1.0<('40')*1.0">
                                  <p>空气比较干燥，注意补充水分，避免皮肤干燥</p>
                              </s:if>  
                              <s:elseif test="(#weather.hum1)*1.0>('70')*1.0">
                                  <p>空气中湿度比较高，水分流失不严重</p>
                              </s:elseif>  
                             <s:else>
                                 <p>空气湿度适宜，可以化一个美美的妆，不用担心水分流失，皮肤干燥</p>
                              </s:else>
                          </li>
						    <li class="im_people_yunfu " style="margin-right:0px;">
                            
                               <span><i><img src="${pageContext.request.contextPath }/images/67.jpg"></i></span>
                               <p class="btn_yunfu">饮食建议</p>
                             <s:if test="(#weather.max1)*1.0<('15')*1.0">
                                  <p>天气寒冷，多吃肉类、豆类等食物，补充热量，多喝热饮，抗拒寒冷</p>
                              </s:if>  
                               <s:elseif test="(#weather.min1)*1.0>('20')*1.0 || (#weather.max1)*1.0>('28')*1.0">
                             
                                  <p>天气炎热，多吃  清淡少油、易消化的食物。多吃蔬菜、水果。
                                                                                                                            清淡食品不能少，既营养又消暑补充水分，适量的冷饮</p>
                              </s:elseif>  
                              <s:else>
                                 <p>天气凉爽，胃口好，做一些自己喜欢吃的食物，但忌暴饮暴食</p>
                              </s:else>
                          </li>
					
                     </ul>
                </div>                     
</body>
</html>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_30089631'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30089631' type='text/javascript'%3E%3C/script%3E"));</script>
<div style="display:none">
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fb3de58f8471ab2214a3e7d885a987266' type='text/javascript'%3E%3C/script%3E"));
</script></div><style>
.autocomplete-suggestions{position:absolute; z-index:50; background-color:#fff; width:200px;box-shadow:0 1px 5px rgba(0,0,0,.2);-moz-box-shadow:0 1px 5px rgba(0,0,0,.2);-webkit-box-shadow:0 1px 5px rgba(0,0,0,.2);-moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius:5px; overflow-x:hidden;margin-top:5px;}
.autocomplete-suggestion{}
.autocomplete-suggestion a{display:block;line-height:30px; text-indent:5px; border-bottom:#ececec solid 1px; margin:0px 10px;}
.autocomplete-suggestion a:hover{color:#4a9828; background-color:#ececec;}
.minicity {right: -900px;}
</style>

                        
<script>
seajs.use(['$', 'tabs', 'cookie', 'tinyscrollbar', 'autocomplete'], function($, Tabs, Cookie){

  $(document).ready(function(){
    new Tabs({
        element: '.minicity',
        triggers: '.city_control_tab a',
        triggerType: 'click',
        activeTriggerClass: 'city_control_current',
        panels: '.city_province',
        activeIndex: 0
    });

    $('.tab_pc').click(function(){
      $('.pc_a_z').show();
      $('.fc_a_z').hide();
    });

    $('.tab_fc').click(function(){
      $('.pc_a_z').hide();
      $('.fc_a_z').show();
    });

    $('.minicity_clk').click(function(){
      $('.minicity').animate({right:0}, 'slow');
    });
    $('.mt_close').click(function(){
      $('.minicity').animate({right:'-900px'}, 'slow');
    });

    var h = $(window).height()-132;if(h<0)h=0;
    $(".viewport").css('height',h);
    $('#scrollbar1').tinyscrollbar();

    window.onresize = function(){
      var h = $(window).height()-132;if(h<0)h=0;
      $(".viewport").css('height',h);
      $(".scrollbar").css('height',h);
      $(".track").css('height',h);
      $('#scrollbar1').tinyscrollbar();
    }

    $('.city_citys').addClass('hide');

    var cities = [{"value":"\u4e09\u4e9a","data":"sanya","fl":"SY"},{"value":"\u4e09\u95e8\u5ce1","data":"sanmenxia","fl":"SMX"},{"value":"\u4e0a\u6d77","data":"shanghai","fl":"SH"},{"value":"\u4e1c\u839e","data":"dongguan","fl":"dg"},{"value":"\u4e1c\u8425","data":"dongying","fl":"DY"},{"value":"\u4e2d\u5c71","data":"zhongshan","fl":"ZS"},{"value":"\u4e34\u5b89","data":"linan","fl":"LA"},{"value":"\u4e34\u6c7e","data":"linfen","fl":"LF"},{"value":"\u4e34\u6c82","data":"linyi","fl":"LY"},{"value":"\u4e39\u4e1c","data":"dandong","fl":"DD"},{"value":"\u4e3d\u6c34","data":"lishui","fl":"LS"},{"value":"\u4e49\u4e4c","data":"yiwu","fl":"YW"},{"value":"\u4e4c\u9c81\u6728\u9f50","data":"wulumuqi","fl":"WLMQ"},{"value":"\u4e5d\u6c5f","data":"jiujiang","fl":"JJ"},{"value":"\u4e73\u5c71","data":"rushan","fl":"RS"},{"value":"\u4e91\u6d6e","data":"yunfu","fl":"YF"},{"value":"\u4f5b\u5c71","data":"foshan","fl":"FS"},{"value":"\u4fdd\u5b9a","data":"baoding","fl":"BD"},{"value":"\u514b\u62c9\u739b\u4f9d","data":"kelamayi","fl":"KLMY"},{"value":"\u5170\u5dde","data":"lanzhou","fl":"LZ"},{"value":"\u5305\u5934","data":"baotou","fl":"BT"},{"value":"\u5317\u4eac","data":"beijing","fl":"BJ"},{"value":"\u5317\u6d77","data":"beihai","fl":"BH"},{"value":"\u5357\u4eac","data":"nanjing","fl":"NJ"},{"value":"\u5357\u5145","data":"nanchong","fl":"NC"},{"value":"\u5357\u5b81","data":"nanning","fl":"NN"},{"value":"\u5357\u660c","data":"nanchang","fl":"NC"},{"value":"\u5357\u901a","data":"nantong","fl":"NT"},{"value":"\u5373\u58a8","data":"jimo","fl":"JM"},{"value":"\u53a6\u95e8","data":"xiamen","fl":"XM"},{"value":"\u53e5\u5bb9","data":"jurong","fl":"JR"},{"value":"\u53f0\u5dde","data":"taizhou","fl":"TZ"},{"value":"\u5408\u80a5","data":"hefei","fl":"HF"},{"value":"\u5409\u6797","data":"jilin","fl":"JL"},{"value":"\u5434\u6c5f","data":"wujiang","fl":"WJ"},{"value":"\u547c\u548c\u6d69\u7279","data":"huhehaote","fl":"HHHT"},{"value":"\u54b8\u9633","data":"xianyang","fl":"XY"},{"value":"\u54c8\u5c14\u6ee8","data":"haerbin","fl":"HEB"},{"value":"\u5510\u5c71","data":"tangshan","fl":"TS"},{"value":"\u5609\u5174","data":"jiaxing","fl":"JX"},{"value":"\u5609\u5cea\u5173","data":"jiayuguan","fl":"JYG"},{"value":"\u5927\u540c","data":"datong","fl":"DT"},{"value":"\u5927\u5e86","data":"daqing","fl":"DQ"},{"value":"\u5927\u8fde","data":"dalian","fl":"DL"},{"value":"\u5929\u6d25","data":"tianjin","fl":"TJ"},{"value":"\u592a\u4ed3","data":"taicang","fl":"TC"},{"value":"\u592a\u539f","data":"taiyuan","fl":"TY"},{"value":"\u5a01\u6d77","data":"weihai","fl":"WH"},{"value":"\u5b81\u6ce2","data":"ningbo","fl":"NB"},{"value":"\u5b89\u9633","data":"anyang","fl":"AY"},{"value":"\u5b9c\u5174","data":"yixing","fl":"YX"},{"value":"\u5b9c\u5bbe","data":"yibin","fl":"YB"},{"value":"\u5b9c\u660c","data":"yichang","fl":"YC"},{"value":"\u5b9d\u9e21","data":"baoji","fl":"BJ"},{"value":"\u5bbf\u8fc1","data":"suqian","fl":"SQ"},{"value":"\u5bcc\u9633","data":"fuyang","fl":"FY"},{"value":"\u5bff\u5149","data":"shouguang","fl":"SG"},{"value":"\u5cb3\u9633","data":"yueyang","fl":"YY"},{"value":"\u5e38\u5dde","data":"changzhou","fl":"CZ"},{"value":"\u5e38\u5fb7","data":"changde","fl":"CD"},{"value":"\u5e38\u719f","data":"changshu","fl":"CS"},{"value":"\u5e73\u5ea6","data":"pingdu","fl":"PD"},{"value":"\u5e73\u9876\u5c71","data":"pingdingshan","fl":"PDS"},{"value":"\u5e7f\u5dde","data":"guangzhou","fl":"GZ"},{"value":"\u5e93\u5c14\u52d2","data":"kuerle","fl":"KEL"},{"value":"\u5eca\u574a","data":"langfang","fl":"LF"},{"value":"\u5ef6\u5b89","data":"yanan","fl":"YA"},{"value":"\u5f00\u5c01","data":"kaifeng","fl":"KF"},{"value":"\u5f20\u5bb6\u53e3","data":"zhangjiakou","fl":"ZJK"},{"value":"\u5f20\u5bb6\u6e2f","data":"zhangjiagang","fl":"ZJG"},{"value":"\u5f20\u5bb6\u754c","data":"zhangjiajie","fl":"ZJJ"},{"value":"\u5f90\u5dde","data":"xuzhou","fl":"XZ"},{"value":"\u5fb7\u5dde","data":"dezhou","fl":"DZ"},{"value":"\u5fb7\u9633","data":"deyang","fl":"DY"},{"value":"\u60e0\u5dde","data":"huizhou","fl":"HZ"},{"value":"\u6210\u90fd","data":"chengdu","fl":"CD"},{"value":"\u626c\u5dde","data":"yangzhou","fl":"YZ"},{"value":"\u627f\u5fb7","data":"chengde","fl":"CD"},{"value":"\u629a\u987a","data":"fushun","fl":"FS"},{"value":"\u62c9\u8428","data":"lasa","fl":"LS"},{"value":"\u62db\u8fdc","data":"zhaoyuan","fl":"ZY"},{"value":"\u63ed\u9633","data":"jieyang","fl":"JY"},{"value":"\u6500\u679d\u82b1","data":"panzhihua","fl":"PZH"},{"value":"\u6587\u767b","data":"wendeng","fl":"WD"},{"value":"\u65e0\u9521","data":"wuxi","fl":"WX"},{"value":"\u65e5\u7167","data":"rizhao","fl":"RZ"},{"value":"\u6606\u5c71","data":"kunshan","fl":"KS"},{"value":"\u6606\u660e","data":"kunming","fl":"KM"},{"value":"\u66f2\u9756","data":"qujing","fl":"QJ"},{"value":"\u672c\u6eaa","data":"benxi","fl":"BX"},{"value":"\u676d\u5dde","data":"hangzhou","fl":"HZ"},{"value":"\u67a3\u5e84","data":"zaozhuang","fl":"ZZ"},{"value":"\u67f3\u5dde","data":"liuzhou","fl":"LZ"},{"value":"\u682a\u6d32","data":"zhuzhou","fl":"ZZ"},{"value":"\u6842\u6797","data":"guilin","fl":"GL"},{"value":"\u6885\u5dde","data":"meizhou","fl":"MZ"},{"value":"\u6b66\u6c49","data":"wuhan","fl":"WH"},{"value":"\u6c55\u5934","data":"shantou","fl":"ST"},{"value":"\u6c55\u5c3e","data":"shanwei","fl":"SW"},{"value":"\u6c5f\u95e8","data":"jiangmen","fl":"JM"},{"value":"\u6c5f\u9634","data":"jiangyin","fl":"JY"},{"value":"\u6c88\u9633","data":"shenyang","fl":"SY"},{"value":"\u6ca7\u5dde","data":"cangzhou","fl":"CZ"},{"value":"\u6cb3\u6e90","data":"heyuan","fl":"HY"},{"value":"\u6cc9\u5dde","data":"quanzhou","fl":"QZ"},{"value":"\u6cf0\u5b89","data":"taian","fl":"TA"},{"value":"\u6cf0\u5dde","data":"taizhoushi","fl":"tz"},{"value":"\u6cf8\u5dde","data":"luzhou","fl":"LZ"},{"value":"\u6d1b\u9633","data":"luoyang","fl":"LY"},{"value":"\u6d4e\u5357","data":"jinan","fl":"JN"},{"value":"\u6d4e\u5b81","data":"jining","fl":"JN"},{"value":"\u6d77\u53e3","data":"haikou","fl":"HK"},{"value":"\u6d77\u95e8","data":"haimen","fl":"HM"},{"value":"\u6dc4\u535a","data":"zibo","fl":"ZB"},{"value":"\u6dee\u5b89","data":"huaian","fl":"HA"},{"value":"\u6df1\u5733","data":"shenzhen","fl":"SZ"},{"value":"\u6e05\u8fdc","data":"qingyuan","fl":"QY"},{"value":"\u6e29\u5dde","data":"wenzhou","fl":"WZ"},{"value":"\u6e2d\u5357","data":"weinan","fl":"WN"},{"value":"\u6e56\u5dde","data":"huzhou","fl":"HZ"},{"value":"\u6e58\u6f6d","data":"xiangtan","fl":"XT"},{"value":"\u6e5b\u6c5f","data":"zhanjiang","fl":"ZJ"},{"value":"\u6ea7\u9633","data":"liyang","fl":"LY"},{"value":"\u6ee8\u5dde","data":"binzhou","fl":"BZ"},{"value":"\u6f4d\u574a","data":"weifang","fl":"WF"},{"value":"\u6f6e\u5dde","data":"chaozhou","fl":"CZ"},{"value":"\u70df\u53f0","data":"yantai","fl":"YT"},{"value":"\u7126\u4f5c","data":"jiaozuo","fl":"JZ"},{"value":"\u7261\u4e39\u6c5f","data":"mudanjiang","fl":"MDJ"},{"value":"\u7389\u6eaa","data":"yuxi","fl":"YX"},{"value":"\u73e0\u6d77","data":"zhuhai","fl":"ZH"},{"value":"\u74e6\u623f\u5e97","data":"wafangdian","fl":"WFD"},{"value":"\u76d0\u57ce","data":"yancheng","fl":"YC"},{"value":"\u76d8\u9526","data":"panjin","fl":"PJ"},{"value":"\u77f3\u5634\u5c71","data":"shizuishan","fl":"SZS"},{"value":"\u77f3\u5bb6\u5e84","data":"shijiazhuang","fl":"SJZ"},{"value":"\u798f\u5dde","data":"fuzhou","fl":"FZ"},{"value":"\u79e6\u7687\u5c9b","data":"qinhuangdao","fl":"QHD"},{"value":"\u7ae0\u4e18","data":"zhangqiu","fl":"ZQ"},{"value":"\u7ecd\u5174","data":"shaoxing","fl":"SX"},{"value":"\u7ef5\u9633","data":"mianyang","fl":"MY"},{"value":"\u804a\u57ce","data":"liaocheng","fl":"LC"},{"value":"\u8087\u5e86","data":"zhaoqing","fl":"ZQ"},{"value":"\u80f6\u5357","data":"jiaonan","fl":"JN"},{"value":"\u80f6\u5dde","data":"jiaozhou","fl":"JZ"},{"value":"\u81ea\u8d21","data":"zigong","fl":"ZG"},{"value":"\u821f\u5c71","data":"zhoushan","fl":"ZS"},{"value":"\u829c\u6e56","data":"wuhu","fl":"WH"},{"value":"\u82cf\u5dde","data":"suzhou","fl":"SZ"},{"value":"\u8302\u540d","data":"maoming","fl":"MM"},{"value":"\u8346\u5dde","data":"jingzhou","fl":"JZ"},{"value":"\u8363\u6210","data":"rongcheng","fl":"RC"},{"value":"\u83b1\u5dde","data":"laizhou","fl":"LZ"},{"value":"\u83b1\u829c","data":"laiwu","fl":"LW"},{"value":"\u83b1\u897f","data":"laixi","fl":"LX"},{"value":"\u83cf\u6cfd","data":"heze","fl":"HZ"},{"value":"\u8425\u53e3","data":"yingkou","fl":"YK"},{"value":"\u846b\u82a6\u5c9b","data":"huludao","fl":"HLD"},{"value":"\u84ec\u83b1","data":"penglai","fl":"PL"},{"value":"\u8861\u6c34","data":"hengshui","fl":"HS"},{"value":"\u8862\u5dde","data":"quzhou","fl":"QZ"},{"value":"\u897f\u5b81","data":"xining","fl":"XN"},{"value":"\u897f\u5b89","data":"xian","fl":"XA"},{"value":"\u8bf8\u66a8","data":"zhuji","fl":"ZJ"},{"value":"\u8d35\u9633","data":"guiyang","fl":"GY"},{"value":"\u8d64\u5cf0","data":"chifeng","fl":"CF"},{"value":"\u8fde\u4e91\u6e2f","data":"lianyungang","fl":"LYG"},{"value":"\u9075\u4e49","data":"zunyi","fl":"ZY"},{"value":"\u90a2\u53f0","data":"xingtai","fl":"XT"},{"value":"\u90af\u90f8","data":"handan","fl":"HD"},{"value":"\u90d1\u5dde","data":"zhengzhou","fl":"ZZ"},{"value":"\u9102\u5c14\u591a\u65af","data":"eerduosi","fl":"EEDS"},{"value":"\u91cd\u5e86","data":"chongqing","fl":"CQ"},{"value":"\u91d1\u534e","data":"jinhua","fl":"JH"},{"value":"\u91d1\u575b","data":"jintan","fl":"JT"},{"value":"\u91d1\u660c","data":"jinchang","fl":"JC"},{"value":"\u94dc\u5ddd","data":"tongchuan","fl":"TC"},{"value":"\u94f6\u5ddd","data":"yinchuan","fl":"YC"},{"value":"\u9526\u5dde","data":"jinzhou","fl":"JZ"},{"value":"\u9547\u6c5f","data":"zhenjiang","fl":"ZJ"},{"value":"\u957f\u6625","data":"changchun","fl":"CC"},{"value":"\u957f\u6c99","data":"changsha","fl":"CS"},{"value":"\u957f\u6cbb","data":"changzhi","fl":"CZ"},{"value":"\u9633\u6c5f","data":"yangjiang","fl":"YJ"},{"value":"\u9633\u6cc9","data":"yangquan","fl":"YQ"},{"value":"\u9752\u5c9b","data":"qingdao","fl":"QD"},{"value":"\u978d\u5c71","data":"anshan","fl":"AS"},{"value":"\u97f6\u5173","data":"shaoguan","fl":"SG"},{"value":"\u9a6c\u978d\u5c71","data":"maanshan","fl":"MAS"},{"value":"\u9f50\u9f50\u54c8\u5c14","data":"qiqihaer","fl":"QQHE"},{"value":"\u5b89\u5e86","data":"anqing","fl":"aq"},{"value":"\u6d77\u5357\u5dde","data":"hainanzhou","fl":"hnz"},{"value":"\u4eb3\u5dde","data":"bozhou","fl":"bz"},{"value":"\u868c\u57e0","data":"bengbu","fl":"bb"},{"value":"\u5df4\u4e2d","data":"bazhong","fl":"bz"},{"value":"\u4fdd\u5c71","data":"baoshan","fl":"BS"},{"value":"\u5df4\u5f66\u6dd6\u5c14","data":"bayannaoer","fl":"byne"},{"value":"\u671d\u9633","data":"chaoyang","fl":"cy"},{"value":"\u6ec1\u5dde","data":"chuzhou","fl":"cz"},{"value":"\u6c60\u5dde","data":"chizhou","fl":"cz"},{"value":"\u695a\u96c4\u5dde","data":"chuxiongzhou","fl":"cxz"},{"value":"\u660c\u90fd","data":"changdu","fl":"cd"},{"value":"\u8fbe\u5dde","data":"dazhou","fl":"dz"},{"value":"\u5927\u7406\u5dde","data":"dalizhou","fl":"dlz"},{"value":"\u961c\u65b0","data":"fuxin","fl":"fx"},{"value":"\u9f99\u5ca9","data":"longyan","fl":"ly"},{"value":"\u629a\u5dde","data":"fuzhoushi","fl":"FS"},{"value":"\u5e7f\u5b89","data":"guangan","fl":"ga"},{"value":"\u5e7f\u5143","data":"guangyuan","fl":"gy"},{"value":"\u8d63\u5dde","data":"ganzhou","fl":"GZ"},{"value":"\u6dee\u5317","data":"huaibei","fl":"hb"},{"value":"\u6dee\u5357","data":"huainan","fl":"hn"},{"value":"\u9ec4\u5c71","data":"huangshan","fl":"hs"},{"value":"\u9e64\u58c1","data":"hebi","fl":"hb"},{"value":"\u9ec4\u5188","data":"huanggang","fl":"hg"},{"value":"\u547c\u4f26\u8d1d\u5c14","data":"hulunbeier","fl":"HLBE"},{"value":"\u664b\u57ce","data":"jincheng","fl":"JC"},{"value":"\u664b\u4e2d","data":"jinzhong","fl":"JZ"},{"value":"\u5409\u5b89","data":"jian","fl":"JA"},{"value":"\u666f\u5fb7\u9547","data":"jingdezhen","fl":"JDZ"},{"value":"\u5415\u6881","data":"lvliang","fl":"LL"},{"value":"\u8fbd\u9633","data":"liaoyang","fl":"ly"},{"value":"\u5185\u6c5f","data":"neijiang","fl":"nj"},{"value":"\u94dc\u9675","data":"tongling","fl":"tl"},{"value":"\u6f2f\u6cb3","data":"luohe","fl":"LH"},{"value":"\u4e3d\u6c5f","data":"lijiang","fl":"LJ"},{"value":"\u4e34\u6ca7","data":"lincang","fl":"LC"},{"value":"\u961c\u9633","data":"fuyangshi","fl":"fys"},{"value":"\u5357\u9633","data":"nanyang","fl":"ny"},{"value":"\u90a3\u66f2","data":"naqu","fl":"nq"},{"value":"\u5357\u5e73","data":"nanping","fl":"np"},{"value":"\u840d\u4e61","data":"pingxiang","fl":"PX"},{"value":"\u6fee\u9633","data":"puyang","fl":"py"},{"value":"\u8386\u7530","data":"putian","fl":"PT"},{"value":"\u6714\u5dde","data":"shuozhou","fl":"sz"},{"value":"\u5bbf\u5dde","data":"suzhoushi","fl":"szs"},{"value":"\u9042\u5b81","data":"suining","fl":"sn"},{"value":"\u4e0a\u9976","data":"shangrao","fl":"SR"},{"value":"\u5546\u4e18","data":"shangqiu","fl":"sq"},{"value":"\u968f\u5dde","data":"suizhou","fl":"sz"},{"value":"\u662d\u901a","data":"zhaotong","fl":"ZT"},{"value":"\u4e09\u660e","data":"sanming","fl":"SM"},{"value":"\u94c1\u5cad","data":"tieling","fl":"tl"},{"value":"\u4e50\u5c71","data":"leshan","fl":"ls"},{"value":"\u901a\u8fbd","data":"tongliao","fl":"TL"},{"value":"\u6587\u5c71\u5dde","data":"wenshanzhou","fl":"wsz"},{"value":"\u4e4c\u6d77","data":"wuhai","fl":"wh"},{"value":"\u5ba3\u57ce","data":"xuancheng","fl":"xc"},{"value":"\u5ffb\u5dde","data":"xinzhou","fl":"XZ"},{"value":"\u65b0\u4f59","data":"xinyu","fl":"XY"},{"value":"\u65b0\u4e61","data":"xinxiang","fl":"xx"},{"value":"\u8bb8\u660c","data":"xuchang","fl":"xc"},{"value":"\u4fe1\u9633","data":"xinyang","fl":"xy"},{"value":"\u8fd0\u57ce","data":"yuncheng","fl":"yc"},{"value":"\u96c5\u5b89","data":"yaan","fl":"ya"},{"value":"\u5b9c\u6625","data":"yichun","fl":"YC"},{"value":"\u9e70\u6f6d","data":"yingtan","fl":"YT"},{"value":"\u8d44\u9633","data":"ziyang","fl":"zy"},{"value":"\u5468\u53e3","data":"zhoukou","fl":"zk"},{"value":"\u9a7b\u9a6c\u5e97","data":"zhumadian","fl":"zmd"},{"value":"\u9999\u6e2f","data":"xianggang","fl":"XG"},{"value":"\u65b0\u5317","data":"xinbei","fl":"XB"},{"value":"\u53f0\u5317","data":"taibei","fl":"TB"},{"value":"\u6843\u56ed","data":"taoyuan","fl":"TY"},{"value":"\u65b0\u7af9","data":"xinzhu","fl":"XZ"},{"value":"\u82d7\u6817","data":"miaoli","fl":"ML"},{"value":"\u53f0\u4e2d","data":"taizhong","fl":"TZ"},{"value":"\u5f70\u5316","data":"zhanghua","fl":"ZH"},{"value":"\u5357\u6295","data":"nantou","fl":"NT"},{"value":"\u4e91\u6797","data":"yunlin","fl":"YL"},{"value":"\u5609\u4e49","data":"jiayixian","fl":"JYX"},{"value":"\u5609\u7fa9","data":"jiayi","fl":"JY"},{"value":"\u53f0\u5357","data":"tainan","fl":"TN"},{"value":"\u9ad8\u96c4","data":"gaoxiong","fl":"GX"},{"value":"\u5c4f\u4e1c","data":"pingdong","fl":"PD"},{"value":"\u53f0\u4e1c","data":"taidong","fl":"TD"},{"value":"\u82b1\u83b2","data":"hualian","fl":"HL"},{"value":"\u5b9c\u5170","data":"yilan","fl":"YL"},{"value":"\u91d1\u95e8","data":"jinmen","fl":"JM"},{"value":"\u6f8e\u6e56","data":"penghu","fl":"PH"},{"value":"\u57fa\u9686","data":"jilong","fl":"JL"},{"value":"\u767d\u94f6","data":"baiyin","fl":"BY"},{"value":"\u5929\u6c34","data":"tianshui","fl":"TS"},{"value":"\u5e86\u9633","data":"qingyang","fl":"QY"},{"value":"\u5e73\u51c9","data":"pingliang","fl":"pl"},{"value":"\u9647\u5357","data":"longnan","fl":"ln"},{"value":"\u5b9a\u897f","data":"dingxi","fl":"dx"},{"value":"\u6b66\u5a01","data":"wuwei","fl":"ww"},{"value":"\u5f20\u6396","data":"zhangye","fl":"zy"},{"value":"\u9152\u6cc9","data":"jiuquan","fl":"jq"},{"value":"\u4e34\u590f\u5dde","data":"linxiazhou","fl":"lxz"},{"value":"\u7518\u5357\u5dde","data":"gannanzhou","fl":"GN"},{"value":"\u548c\u7530","data":"hetian","fl":"ht"},{"value":"\u9ec4\u5357\u5dde","data":"huangnanzhou","fl":"hnz"},{"value":"\u9e21\u897f","data":"jixi","fl":"jx"},{"value":"\u5410\u9c81\u756a","data":"tulufan","fl":"tlf"},{"value":"\u677e\u539f","data":"songyuan","fl":"sy"},{"value":"\u77f3\u6cb3\u5b50","data":"shihezi","fl":"shz"},{"value":"\u6d77\u5317\u5dde","data":"haibeizhou","fl":"hbz"},{"value":"\u54c8\u5bc6","data":"hami","fl":"hm"},{"value":"\u4e94\u5bb6\u6e20","data":"wujiaqu","fl":"wjq"},{"value":"\u535a\u5dde","data":"bozhoushi","fl":"bzs"},{"value":"\u8fbd\u6e90","data":"liaoyuan","fl":"ly"},{"value":"\u4e4c\u5170\u5bdf\u5e03","data":"wulanchabu","fl":"ulcb"},{"value":"\u516d\u5b89","data":"liuan","fl":"la"},{"value":"\u7709\u5c71","data":"meishan","fl":"ms"},{"value":"\u6f33\u5dde","data":"zhangzhou","fl":"ZZ"},{"value":"\u5b81\u5fb7","data":"ningde","fl":"ND"},{"value":"\u5c71\u5357","data":"shannan","fl":"sn"},{"value":"\u8346\u95e8","data":"jingmen","fl":"jm"},{"value":"\u9ec4\u77f3","data":"huangshi","fl":"hs"},{"value":"\u5341\u5830","data":"shiyan","fl":"sy"},{"value":"\u9102\u5dde","data":"ezhou","fl":"ez"},{"value":"\u5b5d\u611f","data":"xiaogan","fl":"xg"},{"value":"\u54b8\u5b81","data":"xianning","fl":"xn"},{"value":"\u6797\u829d","data":"linzhi","fl":"lz"},{"value":"\u4e2d\u536b","data":"zhongwei","fl":"zw"},{"value":"\u963f\u52d2\u6cf0","data":"aletai","fl":"alt"},{"value":"\u56db\u5e73","data":"siping","fl":"sp"},{"value":"\u963f\u62c9\u5584\u76df","data":"alashanmeng","fl":"alsm"},{"value":"\u767d\u5c71","data":"baishan","fl":"bs"},{"value":"\u5854\u57ce","data":"tacheng","fl":"tc"},{"value":"\u767d\u57ce","data":"baicheng","fl":"bc"},{"value":"\u5ef6\u8fb9\u5dde","data":"yanbianzhou","fl":"ybz"},{"value":"\u4f0a\u7281\u54c8\u8428\u514b\u5dde","data":"yilihasakezhou","fl":"ylhskz"},{"value":"\u5580\u4ec0","data":"kashi","fl":"ks"},{"value":"\u9e64\u5c97","data":"hegang","fl":"hg"},{"value":"\u53cc\u9e2d\u5c71","data":"shuangyashan","fl":"sys"},{"value":"\u514b\u5b5c\u52d2\u82cf\u5dde","data":"kezilesuzhou","fl":"kzlsz"},{"value":"\u963f\u514b\u82cf","data":"akesu","fl":"aks"},{"value":"\u4f73\u6728\u65af","data":"jiamusi","fl":"jms"},{"value":"\u6d77\u4e1c","data":"haidong","fl":"hd"},{"value":"\u4e03\u53f0\u6cb3","data":"qitaihe","fl":"qth"},{"value":"\u9ed1\u6cb3","data":"heihe","fl":"hh"},{"value":"\u7ee5\u5316","data":"suihua","fl":"sh"},{"value":"\u5927\u5174\u5b89\u5cad","data":"daxinganling","fl":"dxal"},{"value":"\u8944\u6a0a","data":"xiangfan","fl":"xf"},{"value":"\u6c49\u4e2d","data":"hanzhong","fl":"hz"},{"value":"\u6986\u6797","data":"yulin","fl":"yl"},{"value":"\u5b89\u5eb7","data":"ankang","fl":"ak"},{"value":"\u5546\u6d1b","data":"shangluo","fl":"sl"},{"value":"\u963f\u91cc","data":"ali","fl":"al"},{"value":"\u65e5\u5580\u5219","data":"rikaze","fl":"rkz"},{"value":"\u679c\u6d1b\u5dde","data":"guoluozhou","fl":"glz"},{"value":"\u7389\u6811\u5dde","data":"yushuzhou","fl":"ysz"},{"value":"\u6d77\u897f\u5dde","data":"haixizhou","fl":"hxz"},{"value":"\u5434\u5fe0","data":"wuzhong","fl":"wz"},{"value":"\u901a\u5316","data":"tonghua","fl":"th"},{"value":"\u56fa\u539f","data":"guyuan","fl":"gy"},{"value":"\u660c\u5409\u5dde","data":"changjizhou","fl":"cjz"},{"value":"\u9ed4\u4e1c\u5357\u5dde","data":"qiandongnanzhou","fl":"qdnz"},{"value":"\u8fea\u5e86\u5dde","data":"diqingzhou","fl":"dqz"},{"value":"\u6012\u6c5f\u5dde","data":"nujiangzhou","fl":"njz"},{"value":"\u5fb7\u5b8f\u5dde","data":"dehongzhou","fl":"dhz"},{"value":"\u897f\u53cc\u7248\u7eb3\u5dde","data":"xishuangbannazhou","fl":"xsbnz"},{"value":"\u7ea2\u6cb3\u5dde","data":"honghezhou","fl":"hhz"},{"value":"\u601d\u8305","data":"simao","fl":"sm"},{"value":"\u9ed4\u5357\u5dde","data":"qiannanzhou","fl":"qnz"},{"value":"\u9ed4\u897f\u5357\u5dde","data":"qianxinanzhou","fl":"qxnz"},{"value":"\u6bd5\u8282","data":"bijie","fl":"bj"},{"value":"\u94dc\u4ec1","data":"tongren","fl":"tr"},{"value":"\u5b89\u987a","data":"anshun","fl":"as"},{"value":"\u6069\u65bd\u5dde","data":"enshizhou","fl":"esz"},{"value":"\u516d\u76d8\u6c34","data":"liupanshui","fl":"lps"},{"value":"\u51c9\u5c71\u5dde","data":"liangshanzhou","fl":"lsz"},{"value":"\u7518\u5b5c\u5dde","data":"ganzizhou","fl":"gzz"},{"value":"\u963f\u575d\u5dde","data":"abazhou","fl":"abz"},{"value":"\u5d07\u5de6","data":"chongzuo","fl":"cz"},{"value":"\u6765\u5bbe","data":"laibin","fl":"lb"},{"value":"\u6cb3\u6c60","data":"hechi","fl":"hc"},{"value":"\u8d3a\u5dde","data":"hezhou","fl":"hz"},{"value":"\u767e\u8272","data":"baise","fl":"bs"},{"value":"\u94a6\u5dde","data":"qinzhou","fl":"qz"},{"value":"\u8d35\u6e2f","data":"guigang","fl":"gg"},{"value":"\u9632\u57ce\u6e2f","data":"fangchenggang","fl":"fcg"},{"value":"\u68a7\u5dde","data":"wuzhou","fl":"wz"},{"value":"\u6e58\u897f\u5dde","data":"xiangxizhou","fl":"xxz"},{"value":"\u5a04\u5e95","data":"loudi","fl":"ld"},{"value":"\u6000\u5316","data":"huaihua","fl":"hh"},{"value":"\u6c38\u5dde","data":"yongzhou","fl":"yz"},{"value":"\u90f4\u5dde","data":"chenzhou","fl":"cz"},{"value":"\u76ca\u9633","data":"yiyang","fl":"yy"},{"value":"\u90b5\u9633","data":"shaoyang","fl":"sy"},{"value":"\u8861\u9633","data":"hengyang","fl":"hy"},{"value":"\u5174\u5b89\u76df","data":"xinganmeng","fl":"xam"},{"value":"\u9521\u6797\u90ed\u52d2\u76df","data":"xilinguolemeng","fl":"xlglm"},{"value":"\u7389\u6797","data":"yulinshi","fl":"yls"},{"value":"\u4f0a\u6625","data":"yichunshi","fl":"yc"}];

    $('#autocomplete').autocomplete({
        lookup: cities,
        lookupLimit: 15,
        width: '200px',
        lookupFilter: function(suggestion, originalQuery, queryLowerCase){
          var pattern = '^'+queryLowerCase;
          return suggestion.data.match(pattern) || suggestion.fl.toLowerCase().match(pattern);
        },
        formatResult: function (suggestion, currentValue) {
          return '<a href="/'+suggestion.data+'.html">'+suggestion.value+'</a>';
        },
        onSelect: function (suggestion) {
        }
    });

    var checkCity = function(){
      $.ajax({
        type: "post",
        dataType: 'json',
        url: 'http://www.pm25.com/city/cityCheck',
        data: {cityname: $('#autocomplete').val()},
        success:function(res){
          if(res.err == 0) {
            window.location.href = '/'+res.areapy+'.html';
          } else {
            alert('对不起，该城市不存在!')
          }
        }
      });
    }

    $('.search_btn').click(function(){
      checkCity();
    });

    $('.search_city_text').keypress(function(e){
      if(e.which == 13) {
        checkCity();
      }  
    }); 

    $('.city_default_shezhi').click(function(){
      var currentCity = $('.city_default_shezhi').attr('city');
      Cookie.set('default_city', currentCity, {
        path: '/',
        expires: 18000
      });
      $('.city_default_two').show();
      $('.default_city').text(currentCity);
      $('.city_default_shezhi').hide();
    });

    $('.city_default_shanchu').click(function(){
      Cookie.remove('default_city', {
        path: '/'
      });
      $('.city_default_two').hide();
      $('.city_default_shezhi').show();
    });

  });

});
</script>
<script>
seajs.use(['$', 'switchable', 'dadadan', 'danmu', 'danmuxml'], function($){
$(document).ready(function(){

  $('.bi_location_content_dropdown').click(function(e){
    e.stopPropagation();
    if($('.bi_location_content_active').hasClass("hide")){
      $('.bi_location_content_active').removeClass('hide');
      $('.bi_location_content ').addClass('bi_location_content_hover');
    } else {
      $('.bi_location_content_active').addClass("hide");
      $('.bi_location_content ').removeClass('bi_location_content_hover');
    }
  });

  // 点击其他地方层消失
  $(document).click(function(){
    if(!$('.bi_location_content_active').hasClass("hide")){
      $('.bi_location_content_active').addClass("hide");
      $('.bi_location_content ').removeClass('bi_location_content_hover');
    }
  });

  $('.dontSelect').click(function(){
    $('.bi_location_content_active').addClass("hide");
    $('.bi_location_content ').removeClass('bi_location_content_hover');
  });

  $('.bi_location_content_active li a').click(function(e){
    var e = $(e.target);
    var lv = e.attr('lv');
    $('.mon_span').text(e.attr('mon'));
    $('.bi_aqiarea_num').text(e.attr('aqi')).attr('href', e.attr('url'));
    $('.pm25_span').text(e.attr('pm25'));
    $('.bi_aqiarea_wuran').text(e.attr('qua')).removeClass('wuranlevel_1 wuranlevel_2 wuranlevel_3 wuranlevel_4 wuranlevel_5 wuranlevel_6').addClass('wuranlevel_' + lv);
  });

  $('.lzi_pic').switchable({
    triggers: $('.lzi_num .tr-point'),
    triggerType: 'click',
    currentTriggerCls: 'current',
    autoplay: true,
    interval: 5,
    panels: 'li',
    effect: 'fade',
    /* fade effect only supports steps == 1 */
    // steps: 4,
    easing: 'ease-in-out',
    prev: $('.lzi_numbtn_pre'),
    next: $('.lzi_numbtn_next'),
    onSwitch: function(event, currentIndex) {
      var api = this;
      api.prevBtn.toggleClass('disabled', currentIndex === 0);
      api.nextBtn.toggleClass('disabled', currentIndex === api.length - 1);
    }
  });


  var guideShow = function(){
    guideShowFunc = setInterval(function(){
      var qty = Math.floor(Math.random() * ( 5 + 1));
      var hoverDom = $('.im_shenghuo_item_hover');
      hoverDom.fadeOut();
      hoverDom.eq(qty).fadeIn();
    }, 3000)
  };

  guideShow();

  $('.im_shenghuo_details li').each(function(){
    var hoverDom = $(this).find('.im_shenghuo_item_hover');
    $(this).hover(function(){
      $('.im_shenghuo_item_hover').hide();
      clearInterval(guideShowFunc);
      hoverDom.show(); 
    },function(){
      guideShow();
      hoverDom.hide(); 
    });
  });

  $('.jiance_close_btn').click(function(){
    $('.fixed_jiance').hide();
    $('.jiance_zhao').hide();
  });

  $('.jiance_btn').click(function(){
    $('.jiance_tanchu_width').show();
    $('.jiance_zhao').show();
  })

  $('.jiance_tanchu_close').click(function(){
    $('.jiance_tanchu_width').hide();
    $('.jiance_zhao').hide();
  });

  if ($(".bi_news_closed li").length > 0) { 
    setInterval(function(){
    $('.bi_news_closed').find("li:first").animate({
        marginTop: "-25px"
      }, 2000, function(){
        $(this).css({
          marginTop: "0px"
        }).appendTo(".bi_news_closed");
      });
    }, 5000);
  } else { 
    $(".bi_news_closed").hide() 
  }

  var title = encodeURIComponent('绿色呼吸PM2.5');
  var city = $('.cml_city').text();
  var desc = encodeURIComponent('【北京2017-06-21 22:00：良，PM2.5当前浓度26微克/立方米】#PM2.5#指数为52，预计24小时内吸入375.5微克，沉淀进肺泡无法排出250.3微克，心肺疾病死亡风险升高6.6%，癌症死亡风险升高9.1%，更多http://www.pm25.com/');
  var url = location.href;
  var pic = '';
  if(pic != ''){
    pic = 'http://www.pm25.com/' + pic;
  }
  $('.bi_info_share_active_sina, .jtb_share_sina').click(function(){window.open('http://v.t.sina.com.cn/share/share.php?appkey=57458049&url='+url+'&title='+desc+'&content=gb2312&pic='+pic+'&ralateUid=5108207785', '绿色呼吸PM25', 'height=816, width=768,top=0,left=500,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no');});
  $('.bi_info_share_active_qzone, .jtb_share_qzone').click(function(){window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+url+'&desc='+desc+'&title='+title, '绿色呼吸PM25', 'height=816, width=768,top=,left=500,toolbar=no,menubar=no,scrollbars=no,resizable=no,location=no,status=no');});

 
  // duoshuo
  var duoshuo_uid = '';
  var duoshuo_uname;
  var thread_key = 'city_beijing';

  $.ajax({
    type: 'get',
    dataType: 'json',
    url: '/duoshuo/uinfo',
    success:function(r){
      if(r.code == 0) {
        duoshuo_uname = r.response.name;
        $('.duoshuo_avatar').attr('src', r.response.avatar_url).attr('title', r.response.avatar_url);
        $('.duoshuo_uname').text(r.response.name);
      }
    }
  });

  $('.alert_login').click(function(){
    $('.tan_login_width, .tanmu_max_zhezhao').show();
  });

  $('.mmi_btn').click(function(){
    var message = $('.mmi_ipt').val();
    if(message == '') {alert('评论内容不能为空');return false;}
    if(duoshuo_uid == '') {
      $.ajax({
        type: 'post',
        dataType: 'json',
        url: '/duoshuo/loacladd',
        data: {thread_key: thread_key, message: message, author_name: '游客'},
        success:function(r){
          if(r.code == 200) {
            $('.mmi_ipt').val('');
            dmAdd(r.response.message);
          } else if(r.code == 400) {
            alert(r.response);
          }
        }
      });
    } else {
      $.ajax({
        type: 'post',
        dataType: 'json',
        url: '/duoshuo/loacladd',
        data: {thread_key: thread_key, message: message},
        success:function(r){
          if(r.code == 0) {
            $('.mmi_ipt').val('');
            dmAdd(r.response.message);
          }
        }
      });
    }
  });

  // danmu
  $('.bi_opentanmu').click(function(){
    $('.tanmubox').show();
    $('.abp').show();
    if(cm == undefined) {
      cm = dmInit();
    } else {
      dmStart();
    }
  });
  $('.close_minilogin').click(function(){
    $('.tanmubox').hide();
    $('.abp').hide();
    dmStop();
    mindanmu();
  });

  $('.login_close').click(function(){
    $('.tan_login_width, .tanmu_max_zhezhao').hide();
  });

  var cm;
  var tmr = -1;
  var start = 0;
  var playhead = 0;

  var dmInit = function(){
    if(cm != undefined) return cm;
    // danmu
    cm = new CommentManager(document.getElementById('danmu'));
    cm.init();
    
    tmr = -1;
    start = 0;
    playhead = 0;

    CommentLoader('/duoshuo/localxml/' + thread_key, cm);
    cm.startTimer();
    start = new Date().getTime();
    tmr = setInterval(function(){
      playhead = new Date().getTime() - start;
      cm.time(playhead);
    },42);

    return cm;
  }

  var dmStart = function(){
    if(tmr !== -1)
      return;
    cm.startTimer();
    start = new Date().getTime() - playhead;
    tmr = setInterval(function(){
      playhead = new Date().getTime() - start;
      cm.time(playhead);
    },42);
  }

  var dmStop = function(){
    cm.stopTimer();
    clearInterval(tmr);
    tmr = -1;
  }

  var dmReset = function(){
    playhead = 0;
    start = (new Date()).getTime() + 1000;
    cm.clear();
  }

  var dmAdd = function(msg){
    cm.send({
      'border': false,
      'color': 16777215,
      'data': 1308104419,
      'dbid': 31188880,
      'hash': "Db20c852",
      'mode': 1,
      'pool': 0,
      'position': "absolute",
      'size': 25,
      'stime': 0,
      'text': msg
    });
  }

  /*
  $('.message_quanping').click(function(){
    if($('.message_quanping').attr('data-full') == 0) {
      fulldanmu();
    } else {
      mindanmu()
    }
  });
  */

  $('.message_quanping').click(function(){
    dmReset();
  });

  var fulldanmu = function(){
    $('#danmu').css({
        'position': 'fixed',
        'top': '0px',
        'bottom': '0px',
        'left': '0px',
        'right': '0px',
        'width': 'auto',
        'height': 'auto',
        'background-color': 'rgba(0, 0, 0, 0.7)'
      });
      $('.tanmu_mini_width').css({
        'position': 'fixed',
        'z-index': '999',
        'bottom': '0px',
        'top': 'auto'
      });
      $('.message_quanping').attr('data-full', 1).html('<i></i>退出全屏');
      $('.tanmu_mini_zhezhao').hide();
  }

  var mindanmu = function(){
    $('#danmu').removeAttr('style').css({'width':'100%','height':'290px'});
    $('.tanmu_mini_width').removeAttr('style');
    $('.message_quanping').attr('data-full', 0).html('<i></i>全屏浏览');
    $('.tanmu_mini_zhezhao').show();
  }

});
});
</script>


