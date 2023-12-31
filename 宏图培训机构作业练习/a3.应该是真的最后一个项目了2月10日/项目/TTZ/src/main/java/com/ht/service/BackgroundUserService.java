package com.ht.service;

import java.util.List;
import java.util.Map;

import com.ht.pojo.BackGroundUser;

public interface BackgroundUserService {
	// 获取用户登录信息
	public BackGroundUser getBackGroudUser(Map<String, String> map);

	// 获取用户列表
	public Map<String, Object> selbackuserlist(Integer cpage);

	// 获取单个用户信息 与登录还是分开的好
	public BackGroundUser selBackGroudUser(String b_id);

	// 修改单个用户
	public int updBackGroundUser(BackGroundUser bkuser);

	// 添加单个用户
	public int addBackGroundUser(BackGroundUser bkuser);

	// 删除
	public int delBackGroundUser(String id);

	public List<BackGroundUser> selbackuserlistAll();

	// 验证用户名是否存在
	public int YanZhengBackUsername(String b_username);
}
