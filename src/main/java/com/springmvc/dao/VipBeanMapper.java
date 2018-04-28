package com.springmvc.dao;

import com.springmvc.pojo.VipBean;

public interface VipBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipBean record);

    int insertSelective(VipBean record);

    VipBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipBean record);

    int updateByPrimaryKey(VipBean record);
}