package com.ty.tianyu.system.init;

import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

/**
 * spring容器加载完成
 * @author ty
 * @date 2014年12月10日 下午5:37:37
 */
@Component
public class SpringLoadedListener implements ApplicationListener<ContextRefreshedEvent>{
	
	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {
		//防止重复执行。
        if(event.getApplicationContext().getParent() == null){
        	//初始化操作
        }
	}

}
