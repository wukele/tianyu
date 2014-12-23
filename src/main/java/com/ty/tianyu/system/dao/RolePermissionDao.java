package com.ty.tianyu.system.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.ty.tianyu.common.persistence.HibernateDao;
import com.ty.tianyu.system.entity.RolePermission;

/**
 * 角色权限DAO
 * @author ty
 * @date 2014年8月19日 下午3:07:39
 */
@Repository
public class RolePermissionDao extends HibernateDao<RolePermission, Integer>{
	
	/**
	 * 查询角色拥有的权限id
	 * @param roleId
	 * @return 结果集合
	 */
	@SuppressWarnings("unchecked")
	public List<Integer> findPermissionIds(Integer roleId){
		String hql="select rp.permission.id from RolePermission rp where rp.role.id=?0";
		Query query= createQuery(hql, roleId);
		return query.list();
	}

	/**
	 * 删除角色权限
	 * @param roleId
	 * @param permissionId
	 */
	public void deleteRP(Integer roleId,Integer permissionId){
		String hql="delete RolePermission rp where rp.role.id=?0 and rp.permission.id=?1";
		batchExecute(hql, roleId,permissionId);
	}
	
	
}
