package com.uxunchina.emall.service.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.uxunchina.emall.entity.SysUserRole;
import com.uxunchina.emall.mapper.SysUserRoleMapper;
import com.uxunchina.emall.service.ISysUserRoleService;

/**
 * 
 * SysUserRole 表数据服务层接口实现类
 * 
 */
@Service
public class SysUserRoleServiceImpl extends ServiceImpl<SysUserRoleMapper, SysUserRole> implements ISysUserRoleService {

	@Override
	public Set<String> findRolesByUid(String uid) {
		// TODO Auto-generated method stub
		List<SysUserRole> list = this.selectList(new EntityWrapper<SysUserRole>().eq("userId", uid));

		Set<String> set = new HashSet<String>();
		for (SysUserRole ur : list) {
			set.add(ur.getRoleId());
		}
		return set;
	}
}