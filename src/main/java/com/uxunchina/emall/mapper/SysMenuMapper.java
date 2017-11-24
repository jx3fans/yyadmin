package com.uxunchina.emall.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.uxunchina.emall.entity.SysMenu;

/**
 * 
 * SysMenu 表数据库控制层接口
 * 
 */
public interface SysMenuMapper extends BaseMapper<SysMenu> {

	List<String> selectMenuIdsByuserId(String uid);

	List<String> selectResourceByUid(@Param("uid") String uid);

}