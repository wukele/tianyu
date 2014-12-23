package com.ty.tianyu.common.utils;

import org.apache.commons.lang3.StringUtils;

/**
 * @description 操作日志解析工具类
 * @author ty
 * @date 2014年4月5日 下午10:11:13
 */
public class LogCodeUtil {
	/**
	 * 解析请求编码
	 * @param userName
	 * @param operationCode
	 * @return
	 */
	public static String matchingOperationCode(String operationCode){
		String str="";
		if(operationCode.equals("/")){
			str="登录成功";
		}else if(operationCode.contains("create")){
			str="添加"+sbsAfter(operationCode)+"成功";
		}else if(operationCode.contains("delete")){
			str="删除"+sbsAfter(operationCode)+"成功";
		}else if(operationCode.contains("update")){
			str="修改"+sbsAfter(operationCode)+"成功";
		}else{
			str=operationCode;
		}
		return str;
	}
	
	/**
	 * 截取出对象名称
	 * @param string
	 * @return
	 */
	public static String sbsAfter(String string){
		return StringUtils.substringBefore(StringUtils.substringAfter(string,"/"),"/");
	}
	
	public static String sbsAfterLast(String string){
		String s=StringUtils.substringAfterLast(string,"/");
		if(StringUtils.isBlank(s))
			return null;
		return s;
	}
}
