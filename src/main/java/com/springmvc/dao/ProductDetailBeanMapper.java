package com.springmvc.dao;

import com.springmvc.pojo.ProductDetailBean;

public interface ProductDetailBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ProductDetailBean record);

    int insertSelective(ProductDetailBean record);

    ProductDetailBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ProductDetailBean record);

    int updateByPrimaryKey(ProductDetailBean record);
}