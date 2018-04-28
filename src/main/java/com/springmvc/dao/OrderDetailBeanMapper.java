package com.springmvc.dao;

import com.springmvc.pojo.OrderDetailBean;

public interface OrderDetailBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrderDetailBean record);

    int insertSelective(OrderDetailBean record);

    OrderDetailBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrderDetailBean record);

    int updateByPrimaryKey(OrderDetailBean record);
}