package com.springmvc.dao;

import com.springmvc.pojo.OrderBean;

public interface OrderBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderBean record);

    int insertSelective(OrderBean record);

    OrderBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderBean record);

    int updateByPrimaryKey(OrderBean record);
}