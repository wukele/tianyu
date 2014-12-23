package com.ty.tianyu.system.dao;

import org.springframework.stereotype.Repository;

import com.ty.tianyu.common.persistence.HibernateDao;
import com.ty.tianyu.system.entity.User;

/**
 * 用户DAO
 * @author ty
 * @date 2014年8月19日 下午3:09:39
 */
@Repository
public class UserDao extends HibernateDao<User, Integer>{

}
