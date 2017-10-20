package com.ssh.oa.util.perason;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author Dream-Team
 *
 *
 */
public class Perason {
	
	public static Double Cal(List<String> xList ,List<String> yList){
		double CORR = 0.0;	
		NumeratorCalculate nc = new NumeratorCalculate(xList,yList);
		double numerator = nc.calcuteNumerator();
		DenominatorCalculate dc = new DenominatorCalculate();
		double denominator = dc.calculateDenominator(xList, yList);
		if(denominator==0){
			//System.out.println("-------->"+denominator);
			return 0.0;
		}
		CORR = numerator/denominator;
		//return CORR;
		//return (new java.text.DecimalFormat("#.00").format(CORR));
		//return (CORR+"").format("%.2f");
		//double   f   =   111231.5585;  
		BigDecimal b = new  BigDecimal(CORR);  
		return (b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
	}
}

