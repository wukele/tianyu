package com.ty.tianyu.junit;

import org.junit.Test;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

@ContextConfiguration(locations = { "/applicationContext.xml" })
public class TYTest extends AbstractJUnit4SpringContextTests {

	@Test
	public void quartzTest() throws Exception {
		String[] names=applicationContext.getBeanDefinitionNames();
		for(String s:names){
			System.out.println(s);
		}
	}
}