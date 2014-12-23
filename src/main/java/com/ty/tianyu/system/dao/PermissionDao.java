package com.ty.tianyu.system.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.springframework.stereotype.Repository;

import com.ty.tianyu.common.persistence.HibernateDao;
import com.ty.tianyu.system.entity.Permission;

/**
 * 权限DAO
 * @author ty
 * @date 2014年8月19日 下午2:59:27
 */
@Repository
public class PermissionDao extends HibernateDao<Permission, Integer>{

	/**
	 * 查询用户拥有的权限
	 * @param userId 用户id
	 * @return 结果集合
	 */
	@SuppressWarnings("unchecked")
	public List<Permission> findPermissions(Integer userId){
		StringBuffer sb=new StringBuffer();
		sb.append("select distinct p.* from role_permission  rp  ");
		sb.append("INNER JOIN role  r ON  r.id=rp.ROLE_ID ");
		sb.append("INNER JOIN user_role  ur ON ur.ROLE_ID =rp.ROLE_ID ");
		sb.append("INNER JOIN user  u ON u.id = ur.USER_ID ");
		sb.append("INNER JOIN permission  p ON rp.PERMISSION_ID = p.id ");
		sb.append("where u.id=?0 order by sort");
		SQLQuery sqlQuery=createSQLQuery(sb.toString(), userId);
		sqlQuery.addEntity(Permission.class);
		return sqlQuery.list();
	}
}
