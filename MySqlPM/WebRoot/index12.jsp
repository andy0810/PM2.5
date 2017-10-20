<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN" xml:lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset="utf-8" />
<title>PM2.5历史信息</title>
<script src="${pageContext.request.contextPath }/js/jquery.1.4.4.min.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath }/js/smartpaginator.js" type="text/javascript"></script>

    <link href="${pageContext.request.contextPath }/css/smartpaginator.css" rel="stylesheet" type="text/css" />

<meta name="Keywords" content="" />
<meta name="Description" content="" />
<link href="http://www.pm25.com/css/common.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/index.css" rel="stylesheet" type="text/css" /> 
<script src="http://www.pm25.com/sea-modules/seajs/seajs/2.2.1/sea.js"></script>
<script src="http://www.pm25.com/sea-modules/conf/common.js"></script>


    <script type="text/javascript">

        $(document).ready(function () {

            $('#green-contents').css('display', 'none');

            $('#black-contents').css('display', 'none');

            $('ul li').click(function () {

                $('#red-contents').css('display', 'none');

                $('#green-contents').css('display', 'none');

                $('#black-contents').css('display', 'none');

                if ($(this).attr('id') == '1') $('#red-contents').css('display', '');

                if ($(this).attr('id') == '2') $('#green-contents').css('display', '');

                if ($(this).attr('id') == '3') $('#black-contents').css('display', '');

            });



            $('#green').smartpaginator({ totalrecords: 10, recordsperpage: 3, datacontainer: 'mt', dataelement: 'tr', initval: 0, next: 'Next', prev: 'Prev', first: 'First', last: 'Last', theme: 'green' });



            $('#black').smartpaginator({ totalrecords: 5, recordsperpage: 1, datacontainer: 'divs', dataelement: 'div', initval: 0, next: 'Next', prev: 'Prev', first: 'First', last: 'Last', theme: 'black' });



            $('#red').smartpaginator({ totalrecords: 32, recordsperpage: 4, length: 4, next: 'Next', prev: 'Prev', first: 'First', last: 'Last', theme: 'red', controlsalways: true, onchange: function (newPage) {

                $('#r').html('Page # ' + newPage);

            }

            });



        });
 
    </script>


<style type="text/css">
 /* SELECT W/IMAGE */
            select#selectTravelCity
            {
               width                    : 14em;
               height                   : 3.0em;
               padding                  : 0.2em 0.4em 0.2em 0.4em;
			   margin-top:8px;
               vertical-align           : middle;
               border                   : 1px solid #e9e9e9;
               -moz-border-radius       : 0.2em;
               -webkit-border-radius    : 0.2em;
               border-radius            : 0.2em;
               box-shadow               : inset 0 0 3px #a0a0a0;
               -webkit-appearance       : none;
               -moz-appearance          : none;
               appearance               : none;
               /* sample image from the webinfocentral.com */
               font-family              : Arial,  Calibri, Tahoma, Verdana;
               font-size                : 1.1em;
               color                    : #000099;
               cursor                   : pointer;
            }
            select#selectTravelCity  option
            {
                font-size               : 1em;
                padding                 : 0.2em 0.4em 0.2em 0.4em;
            }
            select#selectTravelCity  option[selected]{ font-weight:bold}
            select#selectTravelCity  option:nth-child(even) { background-color:#f5f5f5; }
            select#selectTravelCity:hover
            {
                color                   : #101010;
                border                  : 1px solid #cdcdcd;
            }    
            select#selectTravelCity:focus {box-shadow: 0 0 2px 1px #404040;}
body {
font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
color: #4f6b72;
background：#E6EAE9;
}
a {
color: #c75f3e;
text-decoration:none;
}

#mytable {
width: 700px;
padding: 0;
margin:20px auto;
}

caption {
padding: 0 0 5px 0;
width: 700px;
font:24px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
}

th {
font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
color: #4f6b72;
border-right: 1px solid #C1DAD7;
border-bottom: 1px solid #C1DAD7;
border-top: 1px solid #C1DAD7;
letter-spacing: 2px;
text-transform: uppercase;
text-align: left;
padding: 6px 6px 6px 12px;
background: #CAE8EA no-repeat;
}

th.nobg {
border-top: 0;
border-left: 0;
border-right: 1px solid #C1DAD7;
background: none;
}

td {
border-right: 1px solid #C1DAD7;
border-bottom: 1px solid #C1DAD7;
background: #fff;
font-size:11px;
padding: 6px 6px 6px 12px;
color: #4f6b72;
}


td.alt {
background: #F5FAFA;
color: #797268;
}

th.spec {
border-left: 1px solid #C1DAD7;
border-top: 0;
background: #fff no-repeat;
font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
}

th.specalt {
border-left: 1px solid #C1DAD7;
border-top: 0;
background: #f5fafa no-repeat;
font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
color: #797268;
}
html>body td{ font-size:11px;}
body,td,th {
font-family: 宋体, Arial;
font-size: 12px;
}
</style>
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
                        <a class="topnav_map" href="#">查看用户信息&gt;&gt;</a>
                </div>
       </div>

</div>

<!--导航-->
<div class="menu_width">
         <div class="menu">
              <div class="menu_logo" ><a href="${pageContext.request.contextPath }/findByCity.action?cityName=${allCity[0].cityName }"><img src="images/logo.png"/></a></div>
              <ul class="menu_list">
                
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                  <s:if test="#allCity[0].cityName=='北京'">
                    <li class="menu_1 "><a  href="${pageContext.request.contextPath }/findByCity.action?cityName=北京"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a class="current" href="${pageContext.request.contextPath }/showAll.action?cityName=北京"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=北京"><span>历史天气</span></a></li>     
                  </s:if>
                  <s:if test="#allCity[0].cityName=='上海'">
                    <li class="menu_1 "><a   href="${pageContext.request.contextPath }/findByCity.action?cityName=上海"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a class="current"  href="${pageContext.request.contextPath }/showAll.action?cityName=上海"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=上海"><span>历史天气</span></a></li>
                  </s:if>
                  <s:if test="#allCity[0].cityName=='深圳'">
                    <li class="menu_1 "><a   href="${pageContext.request.contextPath }/findByCity.action?cityName=深圳"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a class="current" href="${pageContext.request.contextPath }/showAll.action?cityName=深圳"><span>历史PM2.5</span></a></li>                
                    <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=深圳"><span>历史天气</span></a></li>
                  </s:if>
                    <s:if test="#allCity[0].cityName=='杭州'">
                     <li class="menu_1 "><a   href="${pageContext.request.contextPath }/findByCity.action?cityName=杭州"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a  class="current" href="${pageContext.request.contextPath }/showAll.action?cityName=杭州"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=杭州"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allCity[0].cityName=='天津'">
                     <li class="menu_1 "><a  href="${pageContext.request.contextPath }/findByCity.action?cityName=天津"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a  class="current"  href="${pageContext.request.contextPath }/showAll.action?cityName=天津"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=天津"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allCity[0].cityName=='西安'">
                     <li class="menu_1 "><a  href="${pageContext.request.contextPath }/findByCity.action?cityName=西安"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a  class="current"  href="${pageContext.request.contextPath }/showAll.action?cityName=西安"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=西安"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allCity[0].cityName=='成都'">
                     <li class="menu_1 "><a href="${pageContext.request.contextPath }/findByCity.action?cityName=成都"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a  class="current" href="${pageContext.request.contextPath }/showAll.action?cityName=成都"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=成都"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allCity[0].cityName=='武汉'">
                     <li class="menu_1 "><a    href="${pageContext.request.contextPath }/findByCity.action?cityName=武汉"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a class="current" href="${pageContext.request.contextPath }/showAll.action?cityName=武汉"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=武汉"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allCity[0].cityName=='广州'">
                     <li class="menu_1 "><a    href="${pageContext.request.contextPath }/findByCity.action?cityName=广州"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a class="current" href="${pageContext.request.contextPath }/showAll.action?cityName=广州"><span>历史PM2.5</span></a></li>                
                     <li class="menu_3"><a  href="${pageContext.request.contextPath }/showWeather.action?cityName=广州"><span>历史天气</span></a></li>
                    </s:if>
                    <s:if test="#allCity[0].cityName=='南京'">
                     <li class="menu_1 "><a href="${pageContext.request.contextPath }/findByCity.action?cityName=南京"><span>首页</span></a></li>         
                    <li class="menu_2 current"><a class="current" href="${pageContext.request.contextPath }/showAll.action?cityName=南京"><span>历史PM2.5</span></a></li>                
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
<div class="banner_index_width" style="height:950px;">
        <div class="banner_index">
        
<table id="mytable" cellspacing="0" summary="">
<tr>
<th scope="col" style="font-size:14px;"><center>监控地点</center></th>
<th scope="col" style="font-size:14px;"><center>PM2.5值</center></th>
<th scope="col" style="font-size:14px;"><center>空气质量</center></th>
<th scope="col" style="font-size:14px;"><center>空气质量指数</center></th>
<th scope="col" style="font-size:14px;"><center>监控时间</center></th>
</tr>
 <s:iterator value="allCity"> 
<tr>
<td class="row" style="font-size:14px;"><center>${cityName}</center></td>
<td class="row" style="font-size:14px;"><center>${pm25}</center></td>
<td class="row" style="font-size:14px;"><center>${quality}</center></td>
<td class="row" style="font-size:14px;"><center>${aqi}</center></td>
<td class="row" style="font-size:14px;"><center>${updateTime}</center></td>
</tr>
</s:iterator>
</table>

      </div>
   </div>
</body>
</html>
