package com.ty.tianyu.shop.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ty.tianyu.common.persistence.Page;
import com.ty.tianyu.common.persistence.PropertyFilter;
import com.ty.tianyu.common.web.CommonController;
import com.ty.tianyu.shop.entity.Product;
import com.ty.tianyu.shop.service.ProductService;

@Controller
@RequestMapping("shop/product")
public class ProductController extends CommonController{
	
	@Autowired
	private ProductService productService;
	
	/**
	 * 默认页面
	 * 
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String list(HttpServletRequest request,Model model) {
		Page<Product> productPage = getPage(request);
		List<PropertyFilter> filters = PropertyFilter.buildFromHttpRequest(request);
		productPage = productService.search(productPage, filters);
		model.addAttribute("productList", productPage.getResult());
		return "shop/productList";
	}
}
