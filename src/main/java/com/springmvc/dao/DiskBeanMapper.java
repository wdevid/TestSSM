package com.springmvc.dao;

import com.springmvc.pojo.DiskBean;

public interface DiskBeanMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DiskBean record);

    int insertSelective(DiskBean record);

    DiskBean selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DiskBean record);

    int updateByPrimaryKey(DiskBean record);
}