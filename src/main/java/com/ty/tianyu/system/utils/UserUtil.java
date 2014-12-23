package com.ty.tianyu.system.utils;

import org.apache.shiro.SecurityUtils;

import com.ty.tianyu.system.service.UserRealm.ShiroUser;


public class UserUtil {
	/**
	 * 取出Shiro中的当前用户
	 */
	public static ShiroUser getCurrentUser(){
		ShiroUser user=(ShiroUser) SecurityUtils.getSubject().getPrincipal();
		return user;
	}
}
