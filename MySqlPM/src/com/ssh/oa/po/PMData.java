package com.ssh.oa.po;

public class PMData {
	private int id;
    private String error_code;
    private String reason;
	private String pmTen;
	private String quality;
	public String getQuality() {
		return quality;
	}
	public void setQuality(String quality) {
		this.quality = quality;
	}
	private String cityName; //城市
	private String pm25;//pm2.5指数 
	private String aqi;  // 空气质量指数
	private String co; //一氧化氮 
	private String no2; //二氧化氮
	private String o3; //臭氧一小时平均值
	private String so2; //二氧化硫
	private String updateTime; //数据更新时间
	private String pm25Predict;
	
	
	public String getPm25Predict() {
		return pm25Predict;
	}
	public void setPm25Predict(String pm25Predict) {
		this.pm25Predict = pm25Predict;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	

	public String getError_code() {
		return error_code;
	}
	public void setError_code(String error_code) {
		this.error_code = error_code;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	public String getPmTen() {
		return pmTen;
	}
	public void setPmTen(String pmTen) {
		this.pmTen = pmTen;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getPm25() {
		return pm25;
	}
	public void setPm25(String pm25) {
		this.pm25 = pm25;
	}
	public String getAqi() {
		return aqi;
	}
	public void setAqi(String aqi) {
		this.aqi = aqi;
	}
	public String getCo() {
		return co;
	}
	public void setCo(String co) {
		this.co = co;
	}
	public String getNo2() {
		return no2;
	}
	public void setNo2(String no2) {
		this.no2 = no2;
	}
	public String getO3() {
		return o3;
	}
	public void setO3(String o3) {
		this.o3 = o3;
	}
	public String getSo2() {
		return so2;
	}
	public void setSo2(String so2) {
		this.so2 = so2;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "Result [pmTen=" + pmTen + ", cityName=" + cityName + ", pm25="
				+ pm25 + ", aqi=" + aqi + ", co=" + co + ", no2=" + no2
				+ ", o3=" + o3 + ", so2=" + so2 + ", updateTime=" + updateTime
				+ "]";
	}
}
