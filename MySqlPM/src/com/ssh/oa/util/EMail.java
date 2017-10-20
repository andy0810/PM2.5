package com.ssh.oa.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

public class EMail
{
	final static String subjectTKY = "【谢谢关注PM2.5监控系统】";
	final static String subjectPM = "【PM2.5监控系统】";

    public static Boolean sendEMail(List<String> recvAddr, String mesg,int type) throws MessagingException, IOException
    {
    	
    	String subject = null;
    	
    	if(1 == type){
    		subject = subjectTKY;
    	}
    	else if(0 == type){
    		subject = subjectPM;
    	}
    	else {
    		return false ;
    	}

        SendMail mail = new SendMail("1642911736@qq.com","skuqthxjfieyfjad");
        
        Map<String,String> map= new HashMap<String,String>();
        map.put("mail.smtp.host", "smtp.qq.com");
        map.put("mail.smtp.auth", "true");
        map.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        map.put("mail.smtp.port", "465");
        map.put("mail.smtp.socketFactory.port", "465");
        mail.setPros(map);
        
        mail.initMessage();
        mail.setRecipients(recvAddr);
      
        mail.setSubject(subject);
        mail.setDate(new Date());
        mail.setFrom("PM2.5项目组");
        mail.setContent(mesg, "text/html; charset=UTF-8");
        
        System.out.println("********************  执行sendEMail方法！！！！！ ");
        System.out.println(mail.sendMessage());
        
        return true;
    }
    
    public static Boolean otherFuncs() throws AddressException, MessagingException, UnsupportedEncodingException{
    	
    	String subject = null;
    	
    //	if(1 == type){
    		subject = subjectTKY;
    //	}
    //	else if(0 == type){
    		subject = subjectPM;
    //	}
    //	else {
    //		return false ;
    //	}

        Map<String,String> map= new HashMap<String,String>();
        SendMail mail = new SendMail("1642911736@qq.com","skuqthxjfieyfjad");
        map.put("mail.smtp.host", "smtp.qq.com");

        //暂时未成功，需要调试
        /*SendMail mail = new SendMail("14789****@sina.cn","***miya");
        map.put("mail.smtp.host", "smtp.sina.com");*/
        map.put("mail.smtp.auth", "true");
        map.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        map.put("mail.smtp.port", "465");
        map.put("mail.smtp.socketFactory.port", "465");
        mail.setPros(map);
        mail.initMessage();
        /*
         * 添加收件人有三种方法：
         * 1,单人添加(单人发送)调用setRecipient(str);发送String类型
         * 2,多人添加(群发)调用setRecipients(list);发送list集合类型
         * 3,多人添加(群发)调用setRecipients(sb);发送StringBuffer类型
         */
        
        List<String> list = new ArrayList<String>();
        list.add("1719697909@qq.com");
        list.add("18372562410@163.com");
        list.add("mascotli@163.com");
        
      //  mail.setRecipients(recvAddr);
        mail.setRecipients(list);
        
        /*String defaultStr = "283942930@qq.com,429353942@qq.com,2355663819@qq.com,381766286@qq.com;
        StringBuffer sb = new StringBuffer();
        sb.append(defaultStr);
        sb.append(",316121113@qq.com");
        mail.setRecipients(sb);*/
        mail.setSubject(subject);
        //mail.setText("谢谢合作");
        mail.setDate(new Date());
        mail.setFrom("PM2.5项目组");
//      mail.setMultipart("D:你你你.txt");
        String mesg = "感谢您关注PM2.5监控系统，我们将为您提供最新的环境信息,您所在城市 武汉的PM2.5浓度为 54 g/m3,注意防范";
        mail.setContent(mesg, "text/html; charset=UTF-8");
        /*List<String> fileList = new ArrayList<String>();
        fileList.add("D:1.jpg");
        fileList.add("D:activation.zip");
        fileList.add("D:dstz.sql");
        fileList.add("D:软件配置要求.doc");
        mail.setMultiparts(fileList);*/
        
        System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@  执行otherfunc方法！！！！！ ");
        System.out.println(mail.sendMessage());
        
        return true;
    }

}