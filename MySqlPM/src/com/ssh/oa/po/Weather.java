package com.ssh.oa.po;

public class Weather {
  
	private String weather1_day; //第一天的白天天气
	private String weather2_day;
	private String weather3_day;
	
	private String weather1_night; //第一天的夜晚天气
	private String weather2_night;
	private String weather3_night;
	
	private String min1; //第一天气温最低值
	private String min2;
	private String min3;
	
	private String max1; //第一天气温最高值
	private String max2;
	private String max3;
	
	private String hum1; //第一天相对湿度
	private String hum2;
	private String hum3;
	
	private String wind1; //第一天风向
	private String wind2; 
	private String wind3;
	
	private String date1;
	private String date2;
	private String date3;
	
	private int daycode1;
	private int daycode2;
	private int daycode3;
	
	public String updateTime;
	public String utcTime;
	
	public String getUtcTime() {
		return utcTime;
	}
	public void setUtcTime(String utcTime) {
		this.utcTime = utcTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public int getDaycode1() {
		return daycode1;
	}
	public void setDaycode1(int daycode1) {
		this.daycode1 = daycode1;
	}
	public int getDaycode2() {
		return daycode2;
	}
	public void setDaycode2(int daycode2) {
		this.daycode2 = daycode2;
	}
	public int getDaycode3() {
		return daycode3;
	}
	public void setDaycode3(int daycode3) {
		this.daycode3 = daycode3;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}
	public String getDate3() {
		return date3;
	}
	public void setDate3(String date3) {
		this.date3 = date3;
	}
	public String getWeather1_day() {
		return weather1_day;
	}
	public void setWeather1_day(String weather1_day) {
		this.weather1_day = weather1_day;
	}
	public String getWeather2_day() {
		return weather2_day;
	}
	public void setWeather2_day(String weather2_day) {
		this.weather2_day = weather2_day;
	}
	public String getWeather3_day() {
		return weather3_day;
	}
	public void setWeather3_day(String weather3_day) {
		this.weather3_day = weather3_day;
	}
	public String getWeather1_night() {
		return weather1_night;
	}
	public void setWeather1_night(String weather1_night) {
		this.weather1_night = weather1_night;
	}
	public String getWeather2_night() {
		return weather2_night;
	}
	public void setWeather2_night(String weather2_night) {
		this.weather2_night = weather2_night;
	}
	public String getWeather3_night() {
		return weather3_night;
	}
	public void setWeather3_night(String weather3_night) {
		this.weather3_night = weather3_night;
	}
	public String getMin1() {
		return min1;
	}
	public void setMin1(String min1) {
		this.min1 = min1;
	}
	public String getMin2() {
		return min2;
	}
	public void setMin2(String min2) {
		this.min2 = min2;
	}
	public String getMin3() {
		return min3;
	}
	public void setMin3(String min3) {
		this.min3 = min3;
	}
	public String getMax1() {
		return max1;
	}
	public void setMax1(String max1) {
		this.max1 = max1;
	}
	public String getMax2() {
		return max2;
	}
	public void setMax2(String max2) {
		this.max2 = max2;
	}
	public String getMax3() {
		return max3;
	}
	public void setMax3(String max3) {
		this.max3 = max3;
	}
	public String getHum1() {
		return hum1;
	}
	public void setHum1(String hum1) {
		this.hum1 = hum1;
	}
	public String getHum2() {
		return hum2;
	}
	public void setHum2(String hum2) {
		this.hum2 = hum2;
	}
	public String getHum3() {
		return hum3;
	}
	public void setHum3(String hum3) {
		this.hum3 = hum3;
	}
	public String getWind1() {
		return wind1;
	}
	public void setWind1(String wind1) {
		this.wind1 = wind1;
	}
	public String getWind2() {
		return wind2;
	}
	public void setWind2(String wind2) {
		this.wind2 = wind2;
	}
	public String getWind3() {
		return wind3;
	}
	public void setWind3(String wind3) {
		this.wind3 = wind3;
	}
	@Override
	public String toString() {
		return "Weather [weather1_day=" + weather1_day + ", weather2_day="
				+ weather2_day + ", weather3_day=" + weather3_day
				+ ", weather1_night=" + weather1_night + ", weather2_night="
				+ weather2_night + ", weather3_night=" + weather3_night
				+ ", min1=" + min1 + ", min2=" + min2 + ", min3=" + min3
				+ ", max1=" + max1 + ", max2=" + max2 + ", max3=" + max3
				+ ", hum1=" + hum1 + ", hum2=" + hum2 + ", hum3=" + hum3
				+ ", wind1=" + wind1 + ", wind2=" + wind2 + ", wind3=" + wind3
				+ "]";
	} 
	
	
}
