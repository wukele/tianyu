package com.ty.tianyu.system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ty.tianyu.common.persistence.HibernateDao;
import com.ty.tianyu.common.service.BaseService;
import com.ty.tianyu.system.dao.RoleDao;
import com.ty.tianyu.system.entity.Role;

/**
 * 角色service
 * @author ty
 * @date 2014年8月19日 下午3:23:26
 */
@Service
@Transactional(readOnly = true)
public class RoleService extends BaseService<Role, Integer> {

	@Autowired
	private RoleDao roleDao;

	@Override
	public HibernateDao<Role, Integer> getEntityDao() {
		return roleDao;
	}
}
