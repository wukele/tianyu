package com.ty.tianyu.system.dao;

import org.springframework.stereotype.Repository;

import com.ty.tianyu.common.persistence.HibernateDao;
import com.ty.tianyu.system.entity.Role;

/**
 * 角色DAO
 * @author ty
 * @date 2014年8月19日 下午3:07:23
 */
@Repository
public class RoleDao  extends HibernateDao<Role, Integer>{

}
