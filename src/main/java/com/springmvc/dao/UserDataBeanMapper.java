package com.springmvc.dao;

import com.springmvc.pojo.UserDataBean;

public interface UserDataBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserDataBean record);

    int insertSelective(UserDataBean record);

    UserDataBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserDataBean record);

    int updateByPrimaryKey(UserDataBean record);
}