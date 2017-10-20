<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN" xml:lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>历史天气数据展示</title>
    
    <script src="js/jquery.1.4.4.min.js" type="text/javascript"></script>

    <script src="js/smartpaginator.js" type="text/javascript"></script>

    <link href="${pageContext.request.contextPath }/css/smartpaginator.css" rel="stylesheet" type="text/css" />

<meta name="Keywords" content="" />
<meta name="Description" content="" />
<link href="http://www.pm25.com/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/index.css" rel="stylesheet" type="text/css" /> 
<script src="http://www.pm25.com/sea-modules/seajs/seajs/2.2.1/sea.js"></script>
<script src="http://www.pm25.com/sea-modules/conf/common.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/echarts.js"></script>
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
                        <a class="topnav_sitemap" href="index11.jsp" style="padding-bottom:8px;">关注我们</a>
                        <b>|</b>
                        
                        <div class="topnav_sitemap_active" style="display:none;">
                            <div class="topnav_sitemap_main">
                                  <div class="tsm_row">
                                      <div class="tsm_row_item">
                                          <h3><a href="#"></a></h3>
                                          <a href="#"></a>
                                          <a href="#"></a>
                                      </div>
                                     
                                  </div>
                                 
                                   
                            </div>
                          
                        </div>
                        
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
                        <a class="topnav_map" href="#">查看用户信息&gt;&gt;</a>
                </div>
       </div>

</div>
<!--导航-->
<div class="menu_width">
         <div class="menu">
              <div class="menu_logo" ><a href="${pageContext.request.contextPath }/findByCity.action?cityName=${cityName }"><img src="images/logo.png"/></a></div>
              <ul class="menu_list">
                
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                  <s:if test="#cityName=='北京'">
                    <li class="menu_1 "><a    href="${pageContext.request.contextPath }/findByCity.action?cityName=北京"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=北京"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3" current><a  class="current" href="${pageContext.request.contextPath }/showWeather.action?cityName=北京"><span>历史天气</span></a></li>     
                  </s:if>
                  <s:if test="#cityName=='上海'">
                    <li class="menu_1 "><a   href="${pageContext.request.contextPath }/findByCity.action?cityName=上海"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=上海"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3 current"><a class="current"  href="${pageContext.request.contextPath }/showWeather.action?cityName=上海"><span>历史天气</span></a></li>
                  </s:if>
                  <s:if test="#cityName=='深圳'">
                    <li class="menu_1 "><a  href="${pageContext.request.contextPath }/findByCity.action?cityName=深圳"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=深圳"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3 current"><a class="current" href="${pageContext.request.contextPath }/showWeather.action?cityName=深圳"><span>历史天气</span></a></li>
                  </s:if>
                    <s:if test="#cityName=='杭州'">
                     <li class="menu_1 "><a   href="${pageContext.request.contextPath }/findByCity.action?cityName=杭州"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=杭州"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3 current"><a  class="current"  href="${pageContext.request.contextPath }/showWeather.action?cityName=杭州"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='天津'">
                     <li class="menu_1 "><a  href="${pageContext.request.contextPath }/findByCity.action?cityName=天津"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=天津"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3 current"><a  class="current" href="${pageContext.request.contextPath }/showWeather.action?cityName=天津"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='西安'">
                     <li class="menu_1 "><a  href="${pageContext.request.contextPath }/findByCity.action?cityName=西安"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=西安"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3 current"><a  class="current" href="${pageContext.request.contextPath }/showWeather.action?cityName=西安"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='成都'">
                     <li class="menu_1 "><a  href="${pageContext.request.contextPath }/findByCity.action?cityName=成都"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=成都"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3" current><a class="current" href="${pageContext.request.contextPath }/showWeather.action?cityName=成都"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='武汉'">
                     <li class="menu_1 "><a  href="${pageContext.request.contextPath }/findByCity.action?cityName=武汉"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=武汉"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3 current"><a class="current" href="${pageContext.request.contextPath }/showWeather.action?cityName=武汉"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='广州'">
                     <li class="menu_1 "><a   href="${pageContext.request.contextPath }/findByCity.action?cityName=广州"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=广州"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3 current"><a  class="current" href="${pageContext.request.contextPath }/showWeather.action?cityName=广州"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#cityName=='南京'">
                     <li class="menu_1 "><a  href="${pageContext.request.contextPath }/findByCity.action?cityName=南京"><span>首页</span></a></li>         
                    <li class="menu_2"><a  href="${pageContext.request.contextPath }/showAll.action?cityName=南京"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3 current"><a class="current" href="${pageContext.request.contextPath }/showWeather.action?cityName=南京"><span>历史天气</span></a></li>
                    </s:if>
                    <li class="menu_4"><a  href="${pageContext.request.contextPath }/index3.jsp"><span>PM2.5成因系数</span></a></li>
                    <li class="menu_5"><a  href="#"><span>日常防护</span></a></li>
                    <div class="clear"></div>
              </ul>
         </div>   
</div>
<!--banner上的阴影-->
<div class="banner_shadow"></div>



      
<div style="color:#FFFFFF;font:'Times New Roman', Times, serif; background:#009933; width:100%; height:65px; font-size:36px; text-align:center;"><s:property value="#cityName"/>历史天气基本数据展示

</div>


    <div class="col-xs-6">
            <div id="main" style="width: 900px;height: 600px;">
            
            </div>
            <script type="text/javascript">
            var myChart = echarts.init(document.getElementById("main"));
         var option = {
    color: ['#3398DB'],
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis : [
        {
            type : 'category',
            data : ['晴','多云', '雨', '雪', '其他'],
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'天数',
            type:'bar',
            barWidth: '60%',
            data:[Result().qing, Result().duoyun, Result().yu, Result().xue, Result().other]
        }
    ]
};
myChart.setOption(option);  

function Result(){
	var Weather = new Object();
	//Animals.name = "dog";
	//var ssss=10;
	
	var city = '${cityName}';
	if(city == "北京"){
		Weather.qing = 87;
		Weather.duoyun = 104;
		Weather.yu = 23;
		Weather.xue = 11;
		Weather.other = 18;
	}
	else if(city == "上海"){
		Weather.qing = 80;
		Weather.duoyun = 101;
		Weather.yu = 33;
		Weather.xue = 16;
		Weather.other = 13;
	}
	else if(city == "深圳"){
		Weather.qing = 119;
		Weather.duoyun = 80;
		Weather.yu = 27;
		Weather.xue = 3;
		Weather.other = 14;
	}
	else if(city == "武汉"){
		Weather.qing = 101;
		Weather.duoyun = 87;
		Weather.yu = 43;
		Weather.xue = 6;
		Weather.other = 6;
	}
	else if(city == "南京"){
		Weather.qing = 107;
		Weather.duoyun = 84;
		Weather.yu = 40;
		Weather.xue = 5;
		Weather.other = 7;
	}
	else if(city == "成都"){
		Weather.qing = 83;
		Weather.duoyun = 87;
		Weather.yu = 47;
		Weather.xue = 9;
		Weather.other = 17;
	}
	else if(city == "西安"){
		Weather.qing = 123;
		Weather.duoyun = 74;
		Weather.yu = 30;
		Weather.xue = 8;
		Weather.other = 8;
	}
	else if(city == "广州"){
		Weather.qing = 132;
		Weather.duoyun = 94;
		Weather.yu = 13;
		Weather.xue = 1;
		Weather.other = 3;
	}
	else if(city == "天津"){
		Weather.qing = 87;
		Weather.duoyun = 124;
		Weather.yu = 23;
		Weather.xue = 6;
		Weather.other = 3;
	}
	else if(city == "杭州"){
		Weather.qing = 92;
		Weather.duoyun = 94;
		Weather.yu = 41;
		Weather.xue = 10;
		Weather.other = 6;
	}
	return Weather;
 }
</script>
    </div>
    <div class="col-xs-4">
        <center><h3>2017年1月至2017年8月历史天气信息</h3></center>
        <div id="bzt3" style="width: 600px;height: 550px;"></div>
        <script type="text/javascript">
            var bzt3 = echarts.init(document.getElementById("bzt3"));
            bzt3.setOption({
               
              
                itemStyle:{
                    emphasis:{
                        shadowBlur:200,
                        shadowColor:"rgba(0,0,0,0.8)"
                    }
                },
                series:[
                        {
                            name: '天数',
                            type: 'pie',
                            radius: '55%',
                            data:[
                                {value:Result().qing, name:'晴天'},
                                {value:Result().duoyun, name:'多云'},
                                {value:Result().yu, name:'雨'},
                                {value:Result().xue, name:'雪'},
                                {value:Result().other, name:'其他'}
                            ]
                        }
                    ]
            });
        </script>
    </div>
  
</body>
</html>
