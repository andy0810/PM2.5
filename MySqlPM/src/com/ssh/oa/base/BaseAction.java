package com.ssh.oa.base;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ssh.oa.service.FindByCityService;
import com.ssh.oa.service.PMDataService;
import com.ssh.oa.service.UserService;
/**
 * 
 * @author 抽取Action中的公共属性
 *
 * @param <T>
 */
public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T> {

	// =============== ModelDriven的支持 ==================

		/**
		 * ModelDriven进行封装参数
		 */
		protected T model;

		public BaseAction() {
			try {
				// 通过反射获取model的真实类型
				ParameterizedType pt = (ParameterizedType) this.getClass()
						.getGenericSuperclass();
				Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
				// 通过反射创建model的实例
				model = clazz.newInstance();
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}

		public T getModel() {
			return model;
		}
		
		// =============== Service实例的声明 ==================
		
		@Resource
		protected UserService userService;
		@Resource
		protected PMDataService PMDataService;
		@Resource
		protected FindByCityService findByCityService;
}
