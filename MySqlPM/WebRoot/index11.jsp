<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN" xml:lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset="utf-8" />
<title>关注我们</title>
<script src="${pageContext.request.contextPath }/js/jquery.1.4.4.min.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath }/js/smartpaginator.js" type="text/javascript"></script>

    <link href="${pageContext.request.contextPath }/css/smartpaginator.css" rel="stylesheet" type="text/css" />

<meta name="Keywords" content="" />
<meta name="Description" content="" />
<link href="http://www.pm25.com/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/index.css" rel="stylesheet" type="text/css" /> 
<script src="http://www.pm25.com/sea-modules/seajs/seajs/2.2.1/sea.js"></script>
<script src="http://www.pm25.com/sea-modules/conf/common.js"></script>

<style>
.smart-green {
margin-top:50px;
margin-left:auto;
margin-right:auto;
max-width: 500px;
background: #F8F8F8;
padding: 30px 30px 20px 30px;
font: 12px Arial, Helvetica, sans-serif;
color: #666;
border-radius: 5px;
-webkit-border-radius: 5px;
-moz-border-radius: 5px;
}
.smart-green h1 {
font: 24px "Trebuchet MS", Arial, Helvetica, sans-serif;
padding: 20px 0px 20px 40px;
display: block;
margin: -30px -30px 10px -30px;
color: #FFF;
background: #9DC45F;
text-shadow: 1px 1px 1px #949494;
border-radius: 5px 5px 0px 0px;
-webkit-border-radius: 5px 5px 0px 0px;
-moz-border-radius: 5px 5px 0px 0px;
border-bottom:1px solid #89AF4C;
}
.smart-green h1>span {
display: block;
font-size: 11px;
color: #FFF;
}
.smart-green label {
display: block;
margin: 0px 0px 5px;
}
.smart-green label>span {
float: left;
margin-top: 10px;
color: #5E5E5E;
}
.smart-green input[type="text"], .smart-green input[type="email"],.smart-green input[type="phone"], .smart-green textarea, .smart-green select {
color: #555;
height: 30px;
line-height:15px;
width: 100%;
padding: 0px 0px 0px 10px;
margin-top: 2px;
border: 1px solid #E5E5E5;
background: #FBFBFB;
outline: 0;
-webkit-box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
box-shadow: inset 1px 1px 2px rgba(238, 238, 238, 0.2);
font: normal 14px/14px Arial, Helvetica, sans-serif;
}
.smart-green textarea{
height:100px;
padding-top: 10px;
}
.smart-green select {
background: url('down-arrow.png') no-repeat right, -moz-linear-gradient(top, #FBFBFB 0%, #E9E9E9 100%);
background: url('down-arrow.png') no-repeat right, -webkit-gradient(linear, left top, left bottom, color-stop(0%,#FBFBFB), color-stop(100%,#E9E9E9));
appearance:none;
-webkit-appearance:none;
-moz-appearance: none;
text-indent: 0.01px;
text-overflow: '';
width:100%;
height:30px;
}
.smart-green .button {
background-color: #9DC45F;
border-radius: 5px;
-webkit-border-radius: 5px;
-moz-border-border-radius: 5px;
border: none;
padding: 10px 25px 10px 25px;
color: #FFF;
text-shadow: 1px 1px 1px #949494;
}
.smart-green .button:hover {
background-color:#80A24A;
}
</style>
</head>
<body>
<!--顶部功能条-->
<div class="topnav_width">
       <div class="topnav">
                 <div class="topnav_left">
                        <a class="topnav_sitemap" href="${pageContext.request.contextPath }/findByCity.action?cityName=北京" style="padding-bottom:8px;">网站首页</a>
                        <b>|</b>
                       
                        
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
              <div class="menu_logo" ><a href="${pageContext.request.contextPath }/findByCity.action?cityName=北京"><img src="images/logo.png"/></a></div>
              <ul class="menu_list">
                
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                  <s:if test="#cityName=='北京'">
                    <li class="menu_1 current"><a class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=北京"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=北京"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=北京"><span>历史天气</span></a></li>     
                    <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                  </s:if>
                  <s:if test="#cityName=='上海'">
                    <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=上海"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=上海"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=上海"><span>历史天气</span></a></li>
                     <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                  </s:if>
                  <s:if test="#cityName=='深圳'">
                    <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=深圳"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=深圳"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=深圳"><span>历史天气</span></a></li>
                     <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                  </s:if>
                    <s:if test="#cityName=='杭州'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=杭州"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=杭州"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=杭州"><span>历史天气</span></a></li>
                     <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='天津'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=天津"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=天津"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=天津"><span>历史天气</span></a></li>
                    <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='西安'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=西安"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=西安"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=西安"><span>历史天气</span></a></li>
                     <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='成都'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=成都"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=成都"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=成都"><span>历史天气</span></a></li>
                    <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='武汉'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=武汉"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=武汉"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=武汉"><span>历史天气</span></a></li>
                    <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='广州'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=广州"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=广州"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=广州"><span>历史天气</span></a></li>
                    <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='南京'">
                     <li class="menu_1 current"><a  class="current"  href="${pageContext.request.contextPath }/findByCity.action?cityName=南京"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=南京"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=南京"><span>历史天气</span></a></li>
                    <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                    </s:if>
                   
                    <div class="clear"></div>
              </ul>
         </div>   
</div>
<form id="form" name="form_name" method="post" class="smart-green" action="" onSubmit="check();">
<h1>关注我们
<span>将下面的信息填写完整，就可以成功关注啦，关注有惊喜呦</span>
</h1>

<label>
<span>你所在城市</span>
<select name="cityName" id="ct"> 
<option value="北京">北京</option> 
<option value="上海">上海</option> 
<option value="深圳">深圳</option> 
<option value="杭州">杭州</option> 
<option value="广州">广州</option> 
<option value="天津">天津</option> 
<option value="南京">南京</option> 
<option value="成都">成都</option> 
<option value="西安">西安</option> 
<option value="武汉">武汉</option> 
</select> 
</label>

<label>
<span>昵称</span>
<input id="nickName" type="phone" name="nickName" placeholder="" />
</label>

<label>
<span>你的邮箱</span>
<input id="email" type="email" name="email" placeholder="" />
</label>

<label>
<span>电话号码</span>
<input id="phone" type="phone" name="phone" placeholder="" />
</label>

<label>
<span>是否接受PM2.5信息通知</span>
<select name="notify">
<option value="0">接受</option>
<option value="1">不接受</option>
</select>
</label>
<label>
<span>&nbsp;</span>
<input type="submit" class="button" value="完成"/>
</label>

<s:if test="#mg=='FF'">
   <label style="font-size: 20px;color: #DC143C;">
     <span>&nbsp;</span> 
     <td>手机号码错误，请检验后重新输入！！！</td>
   </label>
</s:if>

<s:if test="#flag=='FF'">
   <label style="font-size: 20px;color: #DC143C;">
     <span>&nbsp;</span> 
     <td>邮箱地址错误，请检验后重新输入！！！</td>
   </label>
</s:if>

<s:if test="#t=='success'">
  <script language=javascript>
      alert("您已经关注成功！！！！");
  </script>
</s:if>

</form>
</body>
<script language=javascript>
 function check(){
   
	 var a = document.getElementById("ct").value;
	 var b = document.getElementById("email").value;
	 var c = document.getElementById("phone").value;
	 var d  = document.getElementById("nickName").value;
	 
	 
	 if(!b){
		 alert("请输入您的邮箱！！！！");
	 }else if(!c){
		 alert("请输入您的电话！！！！");
	 }else{
		 
		 document.form_name.action="${pageContext.request.contextPath }/addUser.action?cityName="+a+"&nickName="+d+"&email="+b+"&phone="+c;  
	 }
	 
	// document.form_name.action="${pageContext.request.contextPath }/findByCity.action?cityName="+a;
}
 </script>
</html>