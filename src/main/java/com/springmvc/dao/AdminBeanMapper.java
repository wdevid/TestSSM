package com.springmvc.dao;

import com.springmvc.pojo.AdminBean;

public interface AdminBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AdminBean record);

    int insertSelective(AdminBean record);

    AdminBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AdminBean record);

    int updateByPrimaryKey(AdminBean record);
}