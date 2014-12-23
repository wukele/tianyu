package com.ty.tianyu.system.interceptor;

import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ty.tianyu.common.mapper.JsonMapper;
import com.ty.tianyu.common.utils.IPUtil;
import com.ty.tianyu.system.entity.Log;
import com.ty.tianyu.system.service.LogService;
import com.ty.tianyu.system.service.UserService;
import com.ty.tianyu.system.utils.UserUtil;

import eu.bitwalker.useragentutils.UserAgent;

/**
 * 
 * @description 日志拦截器
 * @author ty
 * @date 2014年4月2日 上午11:22:20
 */
public class LogInterceptor implements HandlerInterceptor {
	

	@Autowired
	private LogService logService;
	
	@Autowired
	private UserService userService;
	
	private Long beginTime;// 1、开始时间
	private Long endTime;// 2、结束时间

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		beginTime = System.currentTimeMillis();//计时
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request,HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		endTime = System.currentTimeMillis();
		String requestRri = request.getRequestURI();
		String uriPrefix = request.getContextPath();
		String operationCode=StringUtils.substringAfter(requestRri,uriPrefix);	//操作编码
		
		String requestParam=(new JsonMapper()).toJson(request.getParameterMap());	//请求参数
		
		//如果是GET请求，请求编码包含create，update(添加修改页)不记录日志
		if(request.getMethod().equals("GET")){
			if(operationCode.contains("create")||operationCode.contains("update")){
				return;
			}
		}
		Long executeTime=endTime-beginTime;
		UserAgent userAgent = UserAgent.parseUserAgentString(request.getHeader("User-Agent")); 
		String os=userAgent.getOperatingSystem().getName();	//获取客户端操作系统
		String browser=userAgent.getBrowser().getName();	//获取客户端浏览器
		
		Log log=new Log();
		log.setOs(os);
		log.setBrowser(browser);
		log.setIp(IPUtil.getIpAddress(request));
		log.setOperationCode(operationCode);
		log.setExecuteTime(Integer.valueOf(executeTime.toString()));
		log.setCreater(UserUtil.getCurrentUser().getName());
		log.setCreateDate(new Timestamp(new Date().getTime()));
		//log.setDescription(LogCodeUtil.matchingOperationCode(operationCode));
		log.setRequestParam(requestParam);
		
		logService.save(log);
	}

}
