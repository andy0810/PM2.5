<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN"
	xml:lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>pm2.5成因分析数据展示</title>
	<style>
.fanhui {
	display: block;
	color: #FFFFFF;
	size: 24px;
	margin: -35px 0 0 5px;
	text-decoration: none;
}

.clear {
	
}
</style>
</head>
<body>
	<!--banner上的阴影-->
	<div class="banner_shadow"></div>
	<div
		style="color:#FFFFFF;font:'Times New Roman', Times, serif; background:#009933; width:100%; height:65px; font-size:36px; text-align:center; margin-bottom:-contentheight;">PM2.5成因分析
	</div>
	<a class="fanhui" href="${pageContext.request.contextPath }/findByCity.action?cityName=北京">返回首页</a>
	<form id="form" name="form_name" method="post"
		style="margin:10px; font-size:24px;" onSubmit="check();">
		<span>选择城市:</span> <select name="cityName" id="cityName" class="t_aera"
			style="width:100px;height:40px; margin:20px 0 0 6px; font-size:18px; color:#009933; background-color:#F6FEF6; clip:rect('20','80','20','2');">
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
		</select> <span>选择开始时间：</span> <input name="beginTime" id="beginTime" type="text"
			class="sang_Calender"
			style="border:#00CC66 1px solid; width:200px; height:50px; border-radius: 8px;" />
		<span>选择结束时间：</span> <input name="endTime" id="endTime" type="text"
			class="sang_Calender"
			style="border:#00CC66 1px solid; width:200px; height:50px; border-radius: 8px;" />
		<input type="submit"
			style="width:50px; height:50px; margin:50px 0 0 5px; color:#FFFFFF; background:#336699;"
			value="确定"> 
		<input type="button"
			style="width:50px; height:50px; margin:50px 0 0 1px; color:#FFFFFF; background:#FF0000;"
			value="取消">
	</form>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/datetime.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/echarts.js"></script>
	<script language=javascript>
		function check() {
			var a = document.getElementById("cityName").value;
			var b = document.getElementById("beginTime").value;
			var c = document.getElementById("endTime").value;
			// var d = document.getElementById("dp11").value;
			//alert(a+"--"+b+"--"+c);
					
			document.form_name.action = "${pageContext.request.contextPath }/showBySeek.action?cityName="
					+ a + "&beginTime=" + b + "&endTime=" + c;
		}
	</script>	
	
	<s:if test="#flag=='222'">
	<script type="text/javascript">
		alert("你选择的查询范围不正确，请重新选择！！！");
		window.location.href="index3.jsp";
	</script>	
	
	</s:if>
	<s:if test="#flag=='111'">
		<div class="col-xs-6">
			<div id="main"
				style="width: 900px;height: 600px; margin:180px 0 0 0;"></div>
			<script type="text/javascript">
				var myChart = echarts.init(document.getElementById("main"));
				var option = {
					xAxis : [ {
						type : 'category',
						//                 name:'相关系数值',　　　　　　　　//这是设置的false，就不不显示下方的x轴，默认是true的
						show : false,//这里呢，就是每个柱的name了，根据实际情况下就好了，我就先写这三个
						data : [ 'pmTen', '臭氧（O3）', 'CO', 'SO2', 'NO2' ],
						axisLabel : {//这个是倾斜角度，也是考虑到文字过多的时候，方式覆盖采用倾斜
							//                     rotate: 30,　　　　　　　　　　　　//这里是考虑到x轴文件过多的时候设置的，如果文字太多，默认是间隔显示，设置为0，标示全部显示，当然，如果x轴都不显示，那也就没有意义了
							interval : 0
						}
					} ],
					yAxis : [ {
						type : 'value',
						name : '相关系数值',//下面的就很简单了，最小是多少，最大是多少，默认一次增加多少
						min : 0,
						max : 1,
						interval : 0.1,//下面是显示格式化，一般来说还是用的上的
						axisLabel : {
							formatter : '{value} '
						}
					} ],
					series : [ {
						name : '天数',
						type : 'bar',
						itemStyle : {
							normal : {//好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
								color : function(params) {
									// build a color map as your need.
									var colorList = [ '#C1232B', '#B5C334',
											'#FCCE10', '#E87C25', '#27727B',
											'#FE8463', '#9BCA63', '#FAD860',
											'#F3A43B', '#60C0DD', '#D7504B',
											'#C6E579', '#F4E001', '#F0805A',
											'#26C0C0' ];
									return colorList[params.dataIndex]
								},//以下为是否显示，显示位置和显示格式的设置了
								label : {
									show : true,
									position : 'top',
									//                             formatter: '{c}'
									formatter : '{b}\n{c}'
								}
							}
						},//设置柱的宽度，要是数据太少，柱子太宽不美观~　　　　　　　　　　barWidth:70,
						data : [ Link().pmTen, Link().O3, Link().CO,
								Link().SO2, Link().NO2 ]
					} ]
				};
				myChart.setOption(option);

				function Link() {
			
					var Link = new Object();
					
		
						Link.pmTen = '${PMTEN}';
						Link.SO2 = '${SO2}';
						Link.O3 = '${O3}';
						Link.CO = '${CO}';
						Link.NO2 = '${NO2}';
						return Link;
				 
				
				}
			</script>
		</div>
	</s:if>
	
	<div class="clear"></div>
</body>
</html>
