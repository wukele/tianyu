package com.ty.tianyu.system.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ty.tianyu.common.persistence.HibernateDao;
import com.ty.tianyu.common.service.BaseService;
import com.ty.tianyu.system.dao.PermissionDao;
import com.ty.tianyu.system.entity.Permission;

/**
 * 权限service
 * @author ty
 * @date 2014年8月19日 下午3:15:07
 */
@Service
@Transactional(readOnly=true)
public class PermissionService extends BaseService<Permission, Integer>{
	
	@Autowired
	private PermissionDao permissionDao;
	
	@Override
	public HibernateDao<Permission, Integer> getEntityDao() {
		return permissionDao;
	}
	
	/**
	 * 获取角色拥有的权限集合
	 * @param userId
	 * @return 结果集合
	 */
	public List<Permission> getPermissions(Integer userId){
		return permissionDao.findPermissions(userId);
	}
}
