package com.springmvc.dao;

import com.springmvc.pojo.AdressBean;

public interface AdressBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(AdressBean record);

    int insertSelective(AdressBean record);

    AdressBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(AdressBean record);

    int updateByPrimaryKey(AdressBean record);
}