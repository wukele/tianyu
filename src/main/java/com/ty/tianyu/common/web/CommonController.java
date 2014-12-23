package com.ty.tianyu.common.web;

import java.beans.PropertyEditorSupport;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.ty.tianyu.common.persistence.Page;
import com.ty.tianyu.common.utils.DateUtils;

/**
 * 
 * @description 基础控制器 其他控制器继承此控制器获得日期字段类型转换和防止XSS攻击的功能
 * @author ty
 * @date 2014年3月19日
 */
public class CommonController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		// String类型转换，将所有传递进来的String进行HTML编码，防止XSS攻击
		binder.registerCustomEditor(String.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				setValue(text == null ? null : StringEscapeUtils.escapeHtml4(text.trim()));
			}
			@Override
			public String getAsText() {
				Object value = getValue();
				return value != null ? value.toString() : "";
			}
		});
		
		// Date 类型转换
		binder.registerCustomEditor(Date.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				setValue(DateUtils.parseDate(text));
			}
		});
		
		// Timestamp 类型转换
		binder.registerCustomEditor(Timestamp.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				Date date = DateUtils.parseDate(text);
				setValue(date==null?null:new Timestamp(date.getTime()));
			}
		});
	}
	
	/**
	 * 获取page对象
	 * @param request
	 * @return page对象
	 */
	public <T> Page<T> getPage(HttpServletRequest request){
		int pageNo=(request.getParameter("page")==null?1:Integer.valueOf(request.getParameter("page")));//设置当前页码
		int pageSize=(request.getParameter("rows")==null?20:Integer.valueOf(request.getParameter("rows")));//设置每页行数
		String orderBy=(request.getParameter("sort")==null?"id":request.getParameter("sort").toString());//设置排序字段
		String order=(request.getParameter("order")==null?"asc":request.getParameter("order").toString());//设置排序顺序
		return new Page<T>(pageNo, pageSize, orderBy, order);
	}

}
