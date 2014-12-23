package com.ty.tianyu.shop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ty.tianyu.common.persistence.HibernateDao;
import com.ty.tianyu.common.service.BaseService;
import com.ty.tianyu.shop.dao.ProductDao;
import com.ty.tianyu.shop.entity.Product;

/**
 * 商品 servicee
 * @author ty
 * @date 2014年11月24日 下午2:45:28
 */
@Service
public class ProductService extends BaseService<Product, Integer>{
	
	@Autowired
	private ProductDao productDao;

	@Override
	public HibernateDao<Product, Integer> getEntityDao() {
		return productDao;
	}

}
