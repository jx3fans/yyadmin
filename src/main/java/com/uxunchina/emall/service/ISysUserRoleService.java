package com.uxunchina.emall.service;

import java.util.Set;

import com.baomidou.mybatisplus.service.IService;
import com.uxunchina.emall.entity.SysUserRole;

/**
 * 
 * SysUserRole 表数据服务层接口
 * 
 */
public interface ISysUserRoleService extends IService<SysUserRole> {

	/**
	 * 获取用户的角色
	 * 
	 * @param uid
	 * @return
	 */
	Set<String> findRolesByUid(String uid);
}