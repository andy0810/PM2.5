package com.ssh.oa.util.perason;

import java.util.ArrayList;
import java.util.List;

public class PerasonDemo {
	
	
	public static void main(String[] args){
	
		List<String> xList = new ArrayList<String>();
		xList.add("89.8");
		xList.add("82.3");
		xList.add("75.3");
		xList.add("75.1");

		List<String> yList = new ArrayList<String>();
		yList.add("47.3");
		yList.add("45.4");
		yList.add("43.8");
		yList.add("41.9");
		
		System.out.printf("CORR = "+ Perason.Cal(xList, yList));
	}
}

