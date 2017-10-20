define(function(require, exports, module) {
 var $ = require('$');
 $(function(){	
			
			<!----排行榜页面，划到列表上有绿色的底色----->
			$(".pj_area_data_item ").hover(function(){
			    $(this).addClass("pj_area_data_item_active");	
            },function(){
			   $(this).removeClass("pj_area_data_item_active");				
            });
			
			<!----实时监测详细页面下边的小百科鼠标划上去效果--->
			$("li.pcb_item_aqi").hover(function(){
			    $(this).addClass("pcb_item_aqi_active");
            },function(){
			   $(this).removeClass("pcb_item_aqi_active");
            });
			$("li.pcb_item_chayi").hover(function(){
			    $(this).addClass("pcb_item_chayi_active");
            },function(){
			   $(this).removeClass("pcb_item_chayi_active");
            });
			$("li.pcb_item_pm25").hover(function(){
			    $(this).addClass("pcb_item_pm25_active");
            },function(){
			   $(this).removeClass("pcb_item_pm25_active");
            });
			
			
			<!-----首页--鼠标划到新闻上展开内容----->
			$(".bi_news").hover(function(){
				$(this).find(".bi_news_open").css("display","block");
            },function(){
			   $(this).find(".bi_news_open").css("display","none");
            });
			
			<!----首页分享按钮弹开效果--->
			$(".bi_info_share").hover(function(){
			    $(this).addClass("bi_info_share_hover");
				$(".bi_info").find(".bi_info_share_active").css("display","block");
            },function(){
			   $(this).removeClass("bi_info_share_hover");
			   $(".bi_info").find(".bi_info_share_active").css("display","none");
            });
			$(".bi_info_share_active").hover(function(){
			    $(this).css("display","block");
				$(".bi_info").find(".bi_info_share").addClass("bi_info_share_hover");
            },function(){
			   $(this).css("display","none");
			   $(".bi_info").find(".bi_info_share").removeClass("bi_info_share_hover");
            });
			 
			<!---首页人群分类效果模块---->
			$(".im_people_yunfu").hover(function(){
			    $(this).addClass("im_people_yunfu_hover");
            },function(){
			   $(this).removeClass("im_people_yunfu_hover");
            });
			$(".im_people_laoren").hover(function(){
			    $(this).addClass("im_people_laoren_hover");
            },function(){
			   $(this).removeClass("im_people_laoren_hover");
            });
			$(".im_people_mingan").hover(function(){
			    $(this).addClass("im_people_mingan_hover");
            },function(){
			   $(this).removeClass("im_people_mingan_hover");
            });
			$(".im_people_jibing").hover(function(){
			    $(this).addClass("im_people_jibing_hover");
            },function(){
			   $(this).removeClass("im_people_jibing_hover");
            });
			
			
			<!---首页划到饮食的图片上后---->
			$(".iml_yinshi_left").hover(function(){
			    $(this).addClass("iml_yinshi_left_hover");
				$(this).find("p.iml_yinshi_left_info").css("display","block");
            },function(){
			   $(this).removeClass("iml_yinshi_left_hover");
			   $(this).find("p.iml_yinshi_left_info").css("display","none");
            });
			
			<!--新闻列表页面，鼠标划到每条新闻上，有背景变化-->
			$("li.nrl_item").hover(function(){
			    $(this).addClass("nrl_item_hover");
            },function(){
			   $(this).removeClass("nrl_item_hover");
            });
			
			<!----防护页面，划到列表上有底色变化----->
			$(".pro_catalog").hover(function(){
			    $(this).addClass("pro_catalog_active");	
            },function(){
			   $(this).removeClass("pro_catalog_active");				
            });
			<!--防护页面，第一行内容里的单个文章变化-->
			$(".pro_catalog li").hover(function(){
			    $(this).addClass("proc_li_active");	
            },function(){
			   $(this).removeClass("proc_li_active");				
            });
			  
			  <!--防护页面左上角的下拉-->
			$(".pbr_paihang_catalog").hover(function(){
                $(this).find("ul.pbr_paihang_dropdown_active").css("display","block");
            },function(){
				$(this).find("ul.pbr_paihang_dropdown_active").css("display","none");
            });
			
			 <!--防护页面左上角的单条内容-->
			$("ul.pbr_paihang_list li").hover(function(){
                $(this).addClass("hover_one");
            },function(){
				$(this).removeClass("hover_one");
            });
			
			
			<!--污染地图页面，划到城市的数值上时候，出现查看详细链接-->
			$(".leftbarl_num").hover(function(){
                $(this).find("b").css("display","block");
            },function(){
				$(this).find("b").css("display","none");
            });
			
			<!----污染地图页面，划到城市列表的底色----->
			$("dl.map_leftbar_city dd ul li ").hover(function(){
			    $(this).addClass("city_current");	
            },function(){
			   $(this).removeClass("city_current");				
            });
			
			<!--城市切换面板，鼠标划到某一行上的时候，背景变灰色-->
			$(".city_province_item").hover(function(){
                $(this).find("dd").css("background-color","#efefef");
            },function(){
				$(this).find("dd").css("background-color","transparent");
            });
			
			<!--新版关于我们简单鼠标效果-->
			$(".aboutus_new_team li").hover(function(){
			    $(this).addClass("team_people_active");	
            },function(){
			   $(this).removeClass("team_people_active");				
            });
			
			
			<!--------------关于我们团队切换效果----------------->
			$(".ata_people_1").hover(function(){
			    $(this).addClass("ata_people_1_hover");	
				$(".at_all").find("li").removeClass("ata_people_2_hover")
				$(".at_all").find("li").removeClass("ata_people_3_hover")
				$(".at_all").find("li").removeClass("ata_people_4_hover")
				$(".at_all").find("li").removeClass("ata_people_5_hover")
				$(".at_all").find("li").removeClass("ata_people_6_hover")
				$(".at_all").find("li").removeClass("ata_people_7_hover")
				$(".at_all").find("li").removeClass("ata_people_8_hover")
				
                $(".at_all").find(".ato_info_1").css("display","block");
				$(".at_all").find(".ato_info_2").css("display","none");
				$(".at_all").find(".ato_info_3").css("display","none");
				$(".at_all").find(".ato_info_4").css("display","none");
				$(".at_all").find(".ato_info_5").css("display","none");
				$(".at_all").find(".ato_info_6").css("display","none");
				$(".at_all").find(".ato_info_7").css("display","none");
				$(".at_all").find(".ato_info_8").css("display","none");
				
				$(".at_all").find(".ato_photo_1").css("display","block");
				$(".at_all").find(".ato_photo_2").css("display","none");
				$(".at_all").find(".ato_photo_3").css("display","none");
				$(".at_all").find(".ato_photo_4").css("display","none");
				$(".at_all").find(".ato_photo_5").css("display","none");
				$(".at_all").find(".ato_photo_6").css("display","none");
				$(".at_all").find(".ato_photo_7").css("display","none");
				$(".at_all").find(".ato_photo_8").css("display","none");
				
            },function(){
				 
            });
			
			$(".ata_people_2").hover(function(){
			    $(this).addClass("ata_people_2_hover");	
				$(".at_all").find("li").removeClass("ata_people_1_hover")
				$(".at_all").find("li").removeClass("ata_people_3_hover")
				$(".at_all").find("li").removeClass("ata_people_4_hover")
				$(".at_all").find("li").removeClass("ata_people_5_hover")
				$(".at_all").find("li").removeClass("ata_people_6_hover")
				$(".at_all").find("li").removeClass("ata_people_7_hover")
				$(".at_all").find("li").removeClass("ata_people_8_hover")
				
                $(".at_all").find(".ato_info_1").css("display","none");
				$(".at_all").find(".ato_info_2").css("display","block");
				$(".at_all").find(".ato_info_3").css("display","none");
				$(".at_all").find(".ato_info_4").css("display","none");
				$(".at_all").find(".ato_info_5").css("display","none");
				$(".at_all").find(".ato_info_6").css("display","none");
				$(".at_all").find(".ato_info_7").css("display","none");
				$(".at_all").find(".ato_info_8").css("display","none");
				
				$(".at_all").find(".ato_photo_1").css("display","none");
				$(".at_all").find(".ato_photo_2").css("display","block");
				$(".at_all").find(".ato_photo_3").css("display","none");
				$(".at_all").find(".ato_photo_4").css("display","none");
				$(".at_all").find(".ato_photo_5").css("display","none");
				$(".at_all").find(".ato_photo_6").css("display","none");
				$(".at_all").find(".ato_photo_7").css("display","none");
				$(".at_all").find(".ato_photo_8").css("display","none");
				
            },function(){
				 
            });
			
			$(".ata_people_3").hover(function(){
			    $(this).addClass("ata_people_3_hover");	
				$(".at_all").find("li").removeClass("ata_people_2_hover")
				$(".at_all").find("li").removeClass("ata_people_1_hover")
				$(".at_all").find("li").removeClass("ata_people_4_hover")
				$(".at_all").find("li").removeClass("ata_people_5_hover")
				$(".at_all").find("li").removeClass("ata_people_6_hover")
				$(".at_all").find("li").removeClass("ata_people_7_hover")
				$(".at_all").find("li").removeClass("ata_people_8_hover")
				
                $(".at_all").find(".ato_info_1").css("display","none");
				$(".at_all").find(".ato_info_2").css("display","none");
				$(".at_all").find(".ato_info_3").css("display","block");
				$(".at_all").find(".ato_info_4").css("display","none");
				$(".at_all").find(".ato_info_5").css("display","none");
				$(".at_all").find(".ato_info_6").css("display","none");
				$(".at_all").find(".ato_info_7").css("display","none");
				$(".at_all").find(".ato_info_8").css("display","none");
				
				$(".at_all").find(".ato_photo_1").css("display","none");
				$(".at_all").find(".ato_photo_2").css("display","none");
				$(".at_all").find(".ato_photo_3").css("display","block");
				$(".at_all").find(".ato_photo_4").css("display","none");
				$(".at_all").find(".ato_photo_5").css("display","none");
				$(".at_all").find(".ato_photo_6").css("display","none");
				$(".at_all").find(".ato_photo_7").css("display","none");
				$(".at_all").find(".ato_photo_8").css("display","none");
				
            },function(){
				 
            });
			
			$(".ata_people_4").hover(function(){
			    $(this).addClass("ata_people_4_hover");	
				$(".at_all").find("li").removeClass("ata_people_2_hover")
				$(".at_all").find("li").removeClass("ata_people_3_hover")
				$(".at_all").find("li").removeClass("ata_people_1_hover")
				$(".at_all").find("li").removeClass("ata_people_5_hover")
				$(".at_all").find("li").removeClass("ata_people_6_hover")
				$(".at_all").find("li").removeClass("ata_people_7_hover")
				$(".at_all").find("li").removeClass("ata_people_8_hover")
				
                $(".at_all").find(".ato_info_1").css("display","none");
				$(".at_all").find(".ato_info_2").css("display","none");
				$(".at_all").find(".ato_info_3").css("display","none");
				$(".at_all").find(".ato_info_4").css("display","block");
				$(".at_all").find(".ato_info_5").css("display","none");
				$(".at_all").find(".ato_info_6").css("display","none");
				$(".at_all").find(".ato_info_7").css("display","none");
				$(".at_all").find(".ato_info_8").css("display","none");
				
				$(".at_all").find(".ato_photo_1").css("display","none");
				$(".at_all").find(".ato_photo_2").css("display","none");
				$(".at_all").find(".ato_photo_3").css("display","none");
				$(".at_all").find(".ato_photo_4").css("display","block");
				$(".at_all").find(".ato_photo_5").css("display","none");
				$(".at_all").find(".ato_photo_6").css("display","none");
				$(".at_all").find(".ato_photo_7").css("display","none");
				$(".at_all").find(".ato_photo_8").css("display","none");
				
            },function(){
				 
            });
			
			$(".ata_people_5").hover(function(){
			    $(this).addClass("ata_people_5_hover");	
				$(".at_all").find("li").removeClass("ata_people_2_hover")
				$(".at_all").find("li").removeClass("ata_people_3_hover")
				$(".at_all").find("li").removeClass("ata_people_4_hover")
				$(".at_all").find("li").removeClass("ata_people_1_hover")
				$(".at_all").find("li").removeClass("ata_people_6_hover")
				$(".at_all").find("li").removeClass("ata_people_7_hover")
				$(".at_all").find("li").removeClass("ata_people_8_hover")
				
                $(".at_all").find(".ato_info_1").css("display","none");
				$(".at_all").find(".ato_info_2").css("display","none");
				$(".at_all").find(".ato_info_3").css("display","none");
				$(".at_all").find(".ato_info_4").css("display","none");
				$(".at_all").find(".ato_info_5").css("display","block");
				$(".at_all").find(".ato_info_6").css("display","none");
				$(".at_all").find(".ato_info_7").css("display","none");
				$(".at_all").find(".ato_info_8").css("display","none");
				
				$(".at_all").find(".ato_photo_1").css("display","none");
				$(".at_all").find(".ato_photo_2").css("display","none");
				$(".at_all").find(".ato_photo_3").css("display","none");
				$(".at_all").find(".ato_photo_4").css("display","none");
				$(".at_all").find(".ato_photo_5").css("display","block");
				$(".at_all").find(".ato_photo_6").css("display","none");
				$(".at_all").find(".ato_photo_7").css("display","none");
				$(".at_all").find(".ato_photo_8").css("display","none");
				
            },function(){
				 
            });
			
			$(".ata_people_6").hover(function(){
			    $(this).addClass("ata_people_6_hover");	
				$(".at_all").find("li").removeClass("ata_people_2_hover")
				$(".at_all").find("li").removeClass("ata_people_3_hover")
				$(".at_all").find("li").removeClass("ata_people_4_hover")
				$(".at_all").find("li").removeClass("ata_people_5_hover")
				$(".at_all").find("li").removeClass("ata_people_1_hover")
				$(".at_all").find("li").removeClass("ata_people_7_hover")
				$(".at_all").find("li").removeClass("ata_people_8_hover")
				
                $(".at_all").find(".ato_info_1").css("display","none");
				$(".at_all").find(".ato_info_2").css("display","none");
				$(".at_all").find(".ato_info_3").css("display","none");
				$(".at_all").find(".ato_info_4").css("display","none");
				$(".at_all").find(".ato_info_5").css("display","none");
				$(".at_all").find(".ato_info_6").css("display","block");
				$(".at_all").find(".ato_info_7").css("display","none");
				$(".at_all").find(".ato_info_8").css("display","none");
				
				$(".at_all").find(".ato_photo_1").css("display","none");
				$(".at_all").find(".ato_photo_2").css("display","none");
				$(".at_all").find(".ato_photo_3").css("display","none");
				$(".at_all").find(".ato_photo_4").css("display","none");
				$(".at_all").find(".ato_photo_5").css("display","none");
				$(".at_all").find(".ato_photo_6").css("display","block");
				$(".at_all").find(".ato_photo_7").css("display","none");
				$(".at_all").find(".ato_photo_8").css("display","none");
				
            },function(){
				 
            });
			
			$(".ata_people_7").hover(function(){
			    $(this).addClass("ata_people_7_hover");	
				$(".at_all").find("li").removeClass("ata_people_2_hover")
				$(".at_all").find("li").removeClass("ata_people_3_hover")
				$(".at_all").find("li").removeClass("ata_people_4_hover")
				$(".at_all").find("li").removeClass("ata_people_5_hover")
				$(".at_all").find("li").removeClass("ata_people_6_hover")
				$(".at_all").find("li").removeClass("ata_people_1_hover")
				$(".at_all").find("li").removeClass("ata_people_8_hover")
				
                $(".at_all").find(".ato_info_1").css("display","none");
				$(".at_all").find(".ato_info_2").css("display","none");
				$(".at_all").find(".ato_info_3").css("display","none");
				$(".at_all").find(".ato_info_4").css("display","none");
				$(".at_all").find(".ato_info_5").css("display","none");
				$(".at_all").find(".ato_info_6").css("display","none");
				$(".at_all").find(".ato_info_7").css("display","block");
				$(".at_all").find(".ato_info_8").css("display","none");
				
				$(".at_all").find(".ato_photo_1").css("display","none");
				$(".at_all").find(".ato_photo_2").css("display","none");
				$(".at_all").find(".ato_photo_3").css("display","none");
				$(".at_all").find(".ato_photo_4").css("display","none");
				$(".at_all").find(".ato_photo_5").css("display","none");
				$(".at_all").find(".ato_photo_6").css("display","none");
				$(".at_all").find(".ato_photo_7").css("display","block");
				$(".at_all").find(".ato_photo_8").css("display","none");
				
            },function(){
				 
            });
			
			$(".ata_people_8").hover(function(){
			    $(this).addClass("ata_people_8_hover");	
				$(".at_all").find("li").removeClass("ata_people_2_hover")
				$(".at_all").find("li").removeClass("ata_people_3_hover")
				$(".at_all").find("li").removeClass("ata_people_4_hover")
				$(".at_all").find("li").removeClass("ata_people_5_hover")
				$(".at_all").find("li").removeClass("ata_people_6_hover")
				$(".at_all").find("li").removeClass("ata_people_7_hover")
				$(".at_all").find("li").removeClass("ata_people_1_hover")
				
                $(".at_all").find(".ato_info_1").css("display","none");
				$(".at_all").find(".ato_info_2").css("display","none");
				$(".at_all").find(".ato_info_3").css("display","none");
				$(".at_all").find(".ato_info_4").css("display","none");
				$(".at_all").find(".ato_info_5").css("display","none");
				$(".at_all").find(".ato_info_6").css("display","none");
				$(".at_all").find(".ato_info_7").css("display","none");
				$(".at_all").find(".ato_info_8").css("display","block");
				
				$(".at_all").find(".ato_photo_1").css("display","none");
				$(".at_all").find(".ato_photo_2").css("display","none");
				$(".at_all").find(".ato_photo_3").css("display","none");
				$(".at_all").find(".ato_photo_4").css("display","none");
				$(".at_all").find(".ato_photo_5").css("display","none");
				$(".at_all").find(".ato_photo_6").css("display","none");
				$(".at_all").find(".ato_photo_7").css("display","none");
				$(".at_all").find(".ato_photo_8").css("display","block");
				
            },function(){
				 
            });
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			<!---个人信息--->
			   $("a.title_person").hover(function(){
                $(".menu_right_item").find(".list_person").css("display","block");
				$(this).css("background-color","#f2f2f2")
				$(this).css("color","#666")
				
            },function(){
            });
			
			   $(".list_person").hover(function(){
				$(this).css("display","block");
            },function(){
                $(this).css("display","none");
				$("a.title_person").css("background-color","#fff")
				$("a.title_person").css("color","#a6a6a6")
            });
			   
			   <!---我的消息--->
			   $("a.title_mail").hover(function(){
                $(".menu_right_item").find(".list_mail").css("display","block");
				$(this).css("background-color","#f2f2f2")
				$(this).css("color","#666")
				
            },function(){
            });
			
			   $(".list_mail").hover(function(){
				$(this).css("display","block");
            },function(){
                $(this).css("display","none");
				$("a.title_mail").css("background-color","#fff")
				$("a.title_mail").css("color","#a6a6a6")
            });
			   
			   <!---爆料投稿--->
			   $("a.title_baoliao").hover(function(){
                $(".menu_right_item").find(".list_baoliao").css("display","block");
				$(this).css("background-color","#f2f2f2")
				$(this).css("color","#666")
				
            },function(){
            });
			
			   $(".list_baoliao").hover(function(){
				$(this).css("display","block");
            },function(){
                $(this).css("display","none");
				$("a.title_baoliao").css("background-color","#fff")
				$("a.title_baoliao").css("color","#a6a6a6")
            });
			     <!---站内导航--->
			   $("a.title_daohang").hover(function(){
                $(".menu_right_item").find(".list_daohang").css("display","block");
				$(this).css("background-color","#f2f2f2")
				$(this).css("color","#666")
				
            },function(){
            });
			
			   $(".list_daohang").hover(function(){
				$(this).css("display","block");
            },function(){
                $(this).css("display","none");
				$("a.title_daohang").css("background-color","#fff")
				$("a.title_daohang").css("color","#a6a6a6")
            });
			   
			  
			   $(".contentbox").hover(function(){
                 $(this).addClass("hover_contentbox");
				 $(this).find(".haveproblem").css("display","block");
             },function(){
                 $(this).removeClass("hover_contentbox").addClass("contentbox");
				 $(this).find(".haveproblem").css("display","none");
         });
			   
			   
			   
			   	   $(".good").hover(function(){
               
				 $(this).find(".scoretotal").css("display","none");
				 $(this).find(".scored").css("display","block");
             },function(){
                 $(this).find(".scoretotal").css("display","block");
				 $(this).find(".scored").css("display","none");
         });
			   
			   
			   /**********************************************************个人中心用到的**************************************************************************/
			   
			   
			   /*个人中心的头部导
			  $(".p_menu a").hover(function(){
                 $(this).find(".pm_sanjiao").css("display","block");
				 
             },function(){
                 $(this).find(".pm_sanjiao").css("display","none");
				  
            });航-划上去也出现三角*/
			   
			   /*我的爆料,晒物等*/
			   $(".pc_bl").hover(function(){
                 $(this).addClass("pc_bl_hover");
             },function(){
                 $(this).removeClass("pc_bl_hover").addClass("pc_bl");
             }); 
			     
				 
			   $(".pc_sw").hover(function(){
                 $(this).addClass("pc_sw_hover");
             },function(){
                 $(this).removeClass("pc_sw_hover").addClass("pc_sw");
             }); 
			   
			   
			      $(".pc_sc").hover(function(){
                 $(this).addClass("pc_sc_hover");
             },function(){
                 $(this).removeClass("pc_sc_hover").addClass("pc_sc");
             }); 
				  
				     $(".pc_pl").hover(function(){
                 $(this).addClass("pc_pl_hover");
             },function(){
                 $(this).removeClass("pc_pl_hover").addClass("pc_pl");
             }); 
					 
					    $(".pc_yhq").hover(function(){
                 $(this).addClass("pc_yhq_hover");
             },function(){
                 $(this).removeClass("pc_yhq_hover").addClass("pc_yhq");
             }); 
			   
			   
			   
			      $(".pc_lpk").hover(function(){
                 $(this).addClass("pc_lpk_hover");
             },function(){
                 $(this).removeClass("pc_lpk_hover").addClass("pc_lpk");
             }); 
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   /****************************以上是个人中心用到的*****************************************************************************************/
			   
			   
			   
			      $(".menu_left_btn a").hover(function(){
				$(".menu_left_btn .menu_left_btn_link").css("display","block");
            },function(){
                $(".menu_left_btn .menu_left_btn_link").css("display","none");
				
            });
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	 
			
		
         $(".da_tongji ul li").hover(function(){
                $(this).css("color","#0087a0");
				$(this).css("cursor","pointer");
            },function(){
                $(this).css("color","#888");
				$(this).css("cursor","pointer");
            });
		 
		   $(".comment-one").hover(function(){
                $(this).css("color","#555");
				$(this).css("background-color","#f4f4f4");
            },function(){
                $(this).css("color","#888");
				$(this).css("background-color","transparent");
            });
		   
		  $(".da_box_self_inner,.da_box_other_inner").hover(function(){
                $(this).css("color","#555");
				$(this).css("background-color","#f4f4f4");
				$(this).find("h3").css("background-color","#0087a0");
				$(this).find("h3 a").css("color","#fff");
            },function(){
                $(this).css("color","#888");
				$(this).css("background-color","transparent");
				$(this).find("h3").css("background-color","transparent");
				$(this).find("h3 a").css("color","#0087a0");
            });
		  
		  $(".da_box_self_tittle_pic,.da_box_other_picarea").hover(function(){
                $(this).find("img").css("opacity","0.8");
				 $(this).find("img").css("filter","alpha(opacity=80)");
				  $(this).find("img").css("-moz-opacity","0.8");
            },function(){
               $(this).find("img").css("opacity","1");
			    $(this).find("img").css("filter","alpha(opacity=100)");
				 $(this).find("img").css("-moz-opacity","1");
            });
		  
		  
		  
		 
		  
		

	    var delay = 80, delayTime;   
	    $('.power_button').toggle(function(){
	    	$(this).addClass('power_button_clicked');
	    	btns = $(this).parents('#side_navigation').children('nav').find('.outer_circle');
	        btns.each(function(i){
	            var ele = $(this);
	            delayTime = i * delay;      
	            window.setTimeout(function(){
	                ele.addClass('open');
	            }, delayTime);
	        });
	    }, function(){
	    	$(this).removeClass('power_button_clicked');
	        $($(btns).get().reverse()).each(function(i){
	            var ele = $(this);
	            delayTime = i * delay;
	            window.setTimeout(function(){
	                ele.removeClass('open');
	            }, delayTime);   
	        });
	    });
	})
 
   $(document).ready(function(){
					
	});

});
// JavaScript Document