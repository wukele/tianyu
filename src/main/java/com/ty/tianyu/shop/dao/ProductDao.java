package com.ty.tianyu.shop.dao;

import org.springframework.stereotype.Repository;

import com.ty.tianyu.common.persistence.HibernateDao;
import com.ty.tianyu.shop.entity.Product;

/**
 * 商品DAO
 * @author ty
 * @date 2014年11月24日 下午2:43:33
 */
@Repository
public class ProductDao extends HibernateDao<Product, Integer>{

}
